import urllib.parse
import requests
import time
import json
import os
from bs4 import BeautifulSoup
import  pymysql 
    
  
def find(itemName):
    query = str(itemName)
      
    url = "http://tw.search.mall.yahoo.com/search/mall/product?p=" + query
    headers = {'User-Agent': 'mozilla/5.0 (Linux; Android 6.0.1; '
                             'Nexus 5x build/mtc19t applewebkit/537.36 (KHTML, like Gecko) '
                             'Chrome/51.0.2702.81 Mobile Safari/537.36'}
    resp = requests.get(url, headers=headers)
    if not resp:
        print("no data")
    resp.encoding = 'utf-8'
    soup = BeautifulSoup(resp.text, 'html.parser')
    
    #print BeautifulSoup(resp.text, 'html.parser')
    for elem in soup.find("ul",'gridList'):
        try:
            #price
            strPrice = elem.find('em','BaseGridItem__price___31jkj').text[1:].replace(',','')
            print(type(strPrice))
            #print(elem.find('em','BaseGridItem__price___31jkj').text[1:])
            #print(int(elem.find('em','BaseGridItem__price___31jkj').text[1:].replace(',','')))
            #print(elem.find('span','BaseGridItem__title___2HWui').text)
            #print(elem.find('a','BaseGridItem__content___3LORP')['href'])
            conn  =  pymysql . connect ( host = '127.0.0.1' ,  user = 'root' ,  passwd = "" ,  db = 'goods' ) 
            cur  =  conn . cursor ()
            
            sqlquery = "INSERT into result (name, price, url, imgUrl) value('"+elem.find('span','BaseGridItem__title___2HWui').text+"', '"+strPrice+"', '"+elem.find('a','BaseGridItem__content___3LORP')['href']+"', 'None');"
            
            cur.execute (sqlquery)
            conn.commit()
            cur.close ()
            conn.close()
            
         #   print(elem.find('em', 'BaseGridItem__price___31jkj'))
        except Exception:
            print("error")
            pass

   
