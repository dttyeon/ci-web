FROM ubuntu/apache2:latest

# 필요한 모듈 활성화
RUN a2enmod proxy && a2enmod proxy_http

# 기존 default conf 제거 및 교체
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# Apache 포트 개방
EXPOSE 80

# Apache 실행
CMD ["apachectl", "-D", "FOREGROUND"]