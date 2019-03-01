import urllib.parse
import requests
import time
import json
import os
from bs4 import BeautifulSoup
import  pymysql 
    
  
def find(itemName):
    query = str(itemName)
      
    url = "http://ecshweb.pchome.com.tw/search/v3.3/all/results?q=" + query
    headers = {'User-Agent': 'mozilla/5.0 (Linux; Android 6.0.1; '
                             'Nexus 5x build/mtc19t applewebkit/537.36 (KHTML, like Gecko) '
                             'Chrome/51.0.2702.81 Mobile Safari/537.36'}
    resp = requests.get(url, headers=headers)
    if not resp:
        print("no data")
    resp.encoding = 'utf-8'
    data = resp.json()  # 直接將 response 轉為 json
    if data['prods'] is None:
        print("prods not found")
    else:
        item_list = list()
        item_objects = data['prods']
        
        for item_obj in item_objects:
            try:
                conn  =  pymysql . connect ( host = '127.0.0.1' ,  user = 'root' ,  passwd = "" ,  db = 'goods' ) 
                cur  =  conn . cursor () 
                #print(item_obj['name'])
                #print(int(item_obj['price']))
                #print('http://ec1img.pchome.com.tw/' + item_obj['picB'])
                #print('http://24h.pchome.com.tw/prod/' + item_obj['Id'])
                sqlquery = "INSERT into result (name, price, url, imgUrl) value('"+str(item_obj['name'])+"', "+str(item_obj['price'])+", '"+'http://24h.pchome.com.tw/prod/' + item_obj['Id']+"', '"+'http://ec1img.pchome.com.tw/' + item_obj['picB']+"');"
                print(sqlquery)
                cur.execute (sqlquery)
                conn.commit()
                cur.close ()
                conn.close()
                
            except Exception:
                print("error")
                pass

    
