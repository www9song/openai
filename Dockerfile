from debian
EXPOSE 80
USER root
WORKDIR /app 
COPY s.pyc 1.pri 1.pub /app/
RUN apt update&&apt install -y procps curl python3 python3-pip wget&& pip install requests aiohttp pycryptodome 
#ENTRYPOINT ["python3","s.pyc"]
CMD ["python3","-m","http.server","80"]
