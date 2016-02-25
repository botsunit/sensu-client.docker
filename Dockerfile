FROM arypurnomoz/sensu-client:latest

ENV REDIS_POST 6379
ENV RABBITMQ_PORT 5671
ENV RABBITMQ_VHOST /sensu
ENV RABBITMQ_USER sensu
ENV RABBITMQ_PASS sensu

RUN apt-get update
RUN apt-get upgrade -y

ENTRYPOINT ["/tmp/run.sh"]
