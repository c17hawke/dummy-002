FROM python:3.7
WORKDIR /code
# COPY requirements.txt .
COPY . /code
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 5000
RUN dvc init
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]