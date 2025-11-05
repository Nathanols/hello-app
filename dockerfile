FROM python:3.11-slim

# cria diretório da app
WORKDIR /app

# copiar requisitos e instalar
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copiar código
COPY . .

# expor porta
EXPOSE 8080

# comando para rodar uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
