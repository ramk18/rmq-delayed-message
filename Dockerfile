FROM rabbitmq:3.11-management

RUN apt-get update

RUN apt-get install -y wget unzip

RUN wget -O rabbitmq_delayed_message_exchange-3.11.1.ez \
    https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/3.11.1/rabbitmq_delayed_message_exchange-3.11.1.ez
RUN cp rabbitmq_delayed_message_exchange-3.11.1.ez $RABBITMQ_HOME/plugins/rabbitmq_delayed_message_exchange-3.11.1.ez
RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange rabbitmq_consistent_hash_exchange rabbitmq_shovel rabbitmq_shovel_management

