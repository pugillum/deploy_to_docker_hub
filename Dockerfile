FROM python:3.10-alpine

LABEL "project"="ACME" 
LABEL "maintainer"="foo"

ENV secrets=shouldnotbekeptindockerfiles

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["python"]

CMD ["app.py"]
