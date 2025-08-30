FROM python:3.11-alpine

# Устанавливаем компилятор и зависимости
RUN apk add --no-cache gcc musl-dev linux-headers

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "-m", "cardinal"]
