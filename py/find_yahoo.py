import urllib.parse
import requests
import time
import json
import os
from bs4 import BeautifulSoup


def search_momo(query):
    url = "http://tw.search.mall.yahoo.com/search/mall/product?p=" + query_enc
    headers = {'User-Agent': 'mozilla/5.0 (Linux; Android 6.0.1; '
                             'Nexus 5x build/mtc19t applewebkit/537.36 (KHTML, like Gecko) '
                             'Chrome/51.0.2702.81 Mobile Safari/537.36'}
    resp = requests.get(url, headers=headers)
    if not resp:
        return []
    resp.encoding = 'utf-8'
    soup = BeautifulSoup(resp.text, 'html.parser')
    items = []
    for elem in soup.find(id='itemizedStyle').ul.find_all('li'):
        item_name = elem.find('p', 'prdName').text
        item_price = elem.find("b", 'price').text.replace(',', '')
        if not item_price:
            continue
        item_price = int(item_price)
        item_url = '' + elem.find('a')['href']
        item_img_url = elem.a.img['src']

        item = {
            'name': item_name,
            'price': item_price,
            'url': item_url,
            'img_url': item_img_url,
        }
        items.append(item)
    return items
def find(itemName):
    query = str(itemName)
    items = search_momo(query)
    today = time.strftime('%m-%d')
    print('%s 搜尋 %s 共 %d 筆資料' % (today, query, len(items)))
    for i in items:
        print(i)
    data = {
        'date': today,
        'store': 'momo',
        'items': items
    }
    with open(os.path.join('json', today + '-momo.json'), 'w', encoding='utf-8') as f:
        json.dump(data, f, indent=2, ensure_ascii=False)



    
