FROM python:3.11-slim

WORKDIR /app

# Copia os arquivos do projeto
COPY . /app

# Instala dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta usada pela aplicação (ajuste se for diferente)
EXPOSE 8000

# Comando padrão (ajuste conforme entrypoint do projeto)
CMD ["python", "main.py"]
