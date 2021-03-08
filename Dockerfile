FROM node:15.11.0-buster

RUN apt-get update && npm install -g @angular/cli@11.2.3
ENV APP_HOME /angular-dashboard
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
ADD . $APP_HOME/

CMD ["/bin/bash"]
