FROM python:3.8.1
MAINTAINER mallycrip "migsking@naver.com"

ENV FLASK_APP=tenderloin
ENV FLASK_ENV=production

COPY . .
WORKDIR .

RUN pip install -r requirements

ENTRYPOINT ["python"]
CMD ["-m","tenderloin"]

EXPOSE 5000