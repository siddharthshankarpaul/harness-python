FROM python:3.10.6-alpine
WORKDIR /harness-python
ADD . /harness-python
RUN pip install -r requirements.txt
EXPOSE 8090
CMD ["python3", "./app.py"]