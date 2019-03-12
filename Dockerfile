FROM rabbitmq:3-management

RUN apt-get update

RUN apt-get install -y curl

RUN curl https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip > /tmp/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip

RUN unzip /tmp/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip

COPY /tmp/rabbitmq_delayed_message_exchange-20171201-3.7.x.ez $RABBITMQ_HOME/plugins/rabbitmq_delayed_message_exchange-20171201-3.7.x.ez

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange