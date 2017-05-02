# -*- coding: utf-8 -*-
import pymysql.cursors
from scrapy import log
# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html


class LearnscrapyPipeline(object):
    def process_item(self, item, spider):
        return item

class LagouJobCategoryDbPipeline(object):
    def process_item(self, item, spider):
        conn = pymysql.connect(host='localhost', user='root', passwd='root', charset='utf8', db='lagou')
        cur = conn.cursor()
        sql = 'insert into job_category(job_name, job_url, job_category_level1, job_category_level2) values(%s, %s, %s, %s)'
        keys = ['job_name', 'job_url', 'job_category_level1', 'job_category_level2']
        values1 = [item.get(x) for x in keys]
        print(values1)
        try:
            cur.execute(sql, values1)
            conn.commit()
        except Exception as e:
            print("======================exxxxxxxx==============")
            print(e)
        cur.close()
        conn.close()
        return item





class LagouJobInfoDbPipeline(object):
    '''将item保存到数据库'''
    def process_item(self, item, spider):
        conn = pymysql.connect(host='localhost', user='root', passwd='root', charset='utf8', db='lagou')
        cur = conn.cursor()
        sql = 'insert into job_info(keyword, companyLogo, salary, city, financeStage, industryField, approve, positionAdvantage, positionId, companyLabelList, score, companySize, adWord, createTime, companyId, positionName, workYear, education, jobNature, companyShortName, district, businessZones, imState, lastLogin, publisherId, plus, pcShow, appShow, deliver, gradeDescription, companyFullName, formatCreateTime) values(%s, %s, %s,%s, %s, %s,%s, %s, %s,%s, %s, %s,%s, %s, %s,%s, %s, %s,%s, %s, %s,%s, %s, %s,%s, %s, %s,%s,%s,%s,%s,%s)'
        key = ['keyword', 'companyLogo', 'salary', 'city', 'financeStage', 'industryField', 'approve', 'positionAdvantage', 'positionId', 'companyLabelList', 'score', 'companySize', 'adWord', 'createTime', 'companyId', 'positionName', 'workYear', 'education', 'jobNature', 'companyShortName', 'district', 'businessZones', 'imState', 'lastLogin', 'publisherId', 'plus', 'pcShow', 'appShow', 'deliver', 'gradeDescription', 'companyFullName', 'formatCreateTime']
        for i in item.keys():
            try:
                item[i] = str(item.get(i).encode('utf-8'))
            except:
                item[i] = str(item.get(i))
            finally:
                pass
        values = [item.get(x) for x in key]
        try:
            cur.execute(sql, values)
            log.msg('insert success %s' % item.get('keyword').encode('utf-8') + item.get('city').encode('utf-8') + item.get('positionName').encode('utf-8'), level=log.INFO)
        except pymysql.IntegrityError:
            log.msg('insert fail %s' % item.get('keyword').encode('utf-8') + item.get('city').encode('utf-8') + item.get('positionName').encode('utf-8'), level=log.WARNING)
            pass
        conn.commit()
        cur.close()
        conn.close()
        return item