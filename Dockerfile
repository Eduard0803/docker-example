# Use a imagem oficial do Python como imagem base
FROM python:3.8-slim

# Copie o código Python para dentro do contêiner
COPY main.py /main.py

# Instalando Dependências do Sistemas
COPY requirements.txt .
RUN pip install -r requirements.txt

# Comando a ser executado quando o contêiner for iniciado
CMD ["python", "/main.py"]

