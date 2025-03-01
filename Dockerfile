FROM python:3.10.6-alpine
WORKDIR /python-pipeline-samples
ADD . /python-pipeline-samples
RUN pip install -r requirements.txt
EXPOSE 8090
CMD ["python3", "./app.py"]