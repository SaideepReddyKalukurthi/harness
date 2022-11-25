FROM ubuntu:latest
WORKDIR /app
RUN echo "Copying file"
COPY create_user.sh /app
USER root
RUN chmod 0777 /app/create_user.sh
RUN /app/create_user.sh saideep yes
