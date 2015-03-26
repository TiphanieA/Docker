FROM ubuntu

ADD run_script.sh run_script.sh
RUN bash run_script.sh
ADD start_script.sh /data/start_script.sh
EXPOSE 3306
