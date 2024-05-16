# Je choisis une image "template" de python
FROM python:3.9
# je choisis un repertoire de travail
WORKDIR /code
# Je copie les requirements de mon projet vers mon espace
# de travail sur mon conteiner
COPY ./requirements.txt /code/requirements.txt
# je lance l`installation des biblioteque sur mon conteiner
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
# Je copie le reste de mon projet situe dans app
COPY ./app /code/app
# Je specifie la command par defaut pur lane le conteiner
CMD ["fastapi", "run", "app/main.py", "--port", "80"]



