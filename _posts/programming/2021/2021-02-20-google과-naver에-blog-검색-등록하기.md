---
layout: post
current: post
cover:  assets/images/writing.jpg
navigation: True
title: Google과 Naver에 Blog 검색 등록하기
date: 2021-02-20 22:22:00
tags: [programming]
class: post-template
subclass: 'post'
author: ecrire06
published: true
---

<!--
    To Add Title...
    <h2 id="#">#</h2>
-->

<!--
    To Add Hyperlink...
    <a title="#" href="#">#</a>
-->

<!--
    To Add Photo from Google Drive
    add the following html code...s
    <center><img src="https://drive.google.com/uc?export=view&id=#" width="100%" height="100%"></center>
-->

전반적인 블로그의 모습이 나왔다! Default의 Subscribe 버튼은 Search 버튼으로 바꾸고, 폰트도 Serif체에서 NanumGothic체로 바꾸었다. 조금씩 마음에 들어간다. 이제 할 부분은 Google과 Naver에 Blog 검색 등록하는게 남았다.

# 어떻게 Google과 Naver에 나의 블로그를 노출시킬까?

Google과 Naver에서 나의 블로그를 인식하기 위해서는 봇(Bot)들이 나의 블로그에 들어와서 정보를 읽어나가야 한다. 이런 작업을 크롤링(crawling)이라고 부른다. 그렇게 하기 위해서는 봇(Bot)들이 읽을 수 있는 표지판(팻말) 역할을 할 수 있는 파일을 제공해야 한다. 나의 블로그의 repository https://github.com/ecrire06/ecrire06.github.io 상에 다음과 같은 파일들을 추가해주었다.

# Repository에 추가해야 할 파일들

## robots.txt
{% gist ecrire06/1bf6b5e546956bc95671da0bb26d1723 %}

robots.txt는 웹(web) 상의 봇(bot)들이 블로그를 읽어들일 수 있도록 허락한다는 내용을 담고 있다. 대충 '응, 이 블로그 읽어도 되구, sitemap을 제공하니 읽어봐' 정도의 의미이다.

## sitemap.xml
{% gist ecrire06/9abccba745caff2826fc820195e66d2e %}

sitemap은 이름에서도 알 수 있듯이 사이트(site)의 지도(map)같은 역할을 한다. 작성된 글(post)에 대한 정보를 담고 있어서 봇(bot)이 쉽게 읽어들일 수 있는 목차의 역할을 해낸다.
[site:ecrire06.github.io](https://www.google.com/search?q=site%3Aecrire06.github.io&oq=site&aqs=chrome.0.69i59j69i57j69i60l2j69i65l2j69i60j69i61.756j0j7&sourceid=chrome&ie=UTF-8)Google 검색 결과에서 알 수 있듯이 [ecrire06.github.io](https://ecrire06.github.io)의 글이 업로드 되어있는 것을 확인할 수 있다. 현재 시점(2021-02-20 23:48) 기준으로 20개의 글(Post)만 

## feed.xml
{% gist ecrire06/957666996d1b9271c5ec626a0a6b5ea0 %}

RSS(Really Simple Syndication)에 대해 들어본 것이 있을지 모르겠다. Feed는 새 

## _includes/head.html 수정
{% gist ecrire06/b5603d8b37646f7e0b500a73893e7ed0 %}

# Naver Search Advisor 웹마스터 도구



<center><img src="https://drive.google.com/uc?export=view&id=#" width="100%" height="100%"></center>

파일 추가해주었다. 하루가 지나고 Google과 Naver에서 블로그를 크롤링해서 읽어들이면, 네이버 이웃커넥트 기능을 추가할 예정이다. 기대해주시길!

# References

