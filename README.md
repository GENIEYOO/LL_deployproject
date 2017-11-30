# 20171130

앞으로 배울 것

- 서버??/개발자들이 어떻게 공부하는지.

  ## AWS

- 아마존 LIGHTSAIL 인스턴스 생성 LIGHTSAIL 통하여 DEPLOY하려고 만듬!

- LIGHT SHELL활용법

- ```
  sudo chmod u+x ~/server_setup/*.sh
  ```

관리자권한으로 체인지하는데 유저가 X하게 실행권한

* [리눅스관리권한](http://eunguru.tistory.com/93)
* NGINX : apchache와 함께 서버 양대 산맥
* [NGINX저렴하게](https://letsencrypt.org/)

gem install rails -v 4.2.9

* 도커? 리눅스 컨테이너

  리눅스 가상화 서비스 활용해서 분산어플리케이션 AWS ec3(도커를 실어날라주는 아마존 웹서비스)

* nginx 와  phusion passenger 설치

* [chef]https://www.chef.io/chef/ 

  chef cookbook

  설치파일 묶어서 자동화

* sudo service nginx start친 후에 IP주소 입력으로 확인

* [영상보고 공부](https://code.org/)

* shell쓸 때 tab 좀 써라

  [serversetup가이드](https://github.com/likelion-campus/guides)

# LIGHTSAIL

Lgithsail 가상머신을 통해 nginx서버를 이용하여 로컬의 어플리케이션 베포하기



1. lightsail인스턴스를 먼저 생성해야한다.
2. 로컬에서 프로젝트 작업 후 깃으로 배포
3. 로컬은 깃으로 커밋
4. 가상머신은 git pull 



참고 

https://github.com/classjohn/server_setup

" https://github.com/classjohn/setup_guides"



인덱스에서 

```
server {
        listen 80;
        listen [::]:80 ipv6only=on;

        server_name my_domain.com;
        passenger_enabled on;
        rails_env    development;//여기서 변경해주면됨.
        root         /home/ubuntu/asdf/public; //appname바꿔준다.

        # redirect server error pages to the static page /50x.html
        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
            root   html;
        }
}
```



V - shift+g +오른쪽 + x

u 실행취소

리눅스 창 명령어 : http://88240.tistory.com/292

sudo vi /etc/nginx/nginx.conf







gitgnore파일은 

railc g controller home index

vi config /secrets.yml

ENV에 secret키 넣어함.

rake secret



sudo service nginx restart

rake assets:precompile

rake db:migrate RAIAS_ENV=production