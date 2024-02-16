FROM python:3.9-slim
WORKDIR /code
COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install fastapi uvicorn
RUN pip install --ignore-installed uvicorn==0.24.0
CMD ["uvicorn","main-app","--host","0.0.0.0","--port","8080","--reload"]