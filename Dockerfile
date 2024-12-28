FROM python:3.11

WORKDIR /src

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY ./src/ .

CMD ["uvicorn", "main:app", "--reload", "--port", "8080"]
