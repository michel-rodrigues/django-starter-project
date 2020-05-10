### Desenvolvimento

1. Renomeie *.env-template* para *.env* e *.env.db-template* para *.env.db* e atualize os valores.

- Criar as imagens:

    ```sh
    $ docker-compose build
    ```

- Subir o container e iniciar o webserver dev (exibe output das requisições HTTP do terminal):

    ```sh
    $ docker-compose up
    ```

- Subir o container e iniciar o webserver dev rodando em segundo plano (NÃO exibe output das requisições HTTP no terminal):

    ```sh
    $ docker-compose up -d
    ```

- Crir imagen, subir o container e iniciar o webserver dev:

    ```sh
    $ docker-compose up --build
    ```

- Crir imagen, subir o container e iniciar o webserver dev rodando em segundo plano (NÃO exibe output das requisições HTTP no terminal):

    ```sh
    $ docker-compose up -d --build
    ```


### Model User

Sempre use a função get_user_model para obter a Model User

```
from django.contrib.auth import get_user_model


User = get_user_model()
```
https://docs.djangoproject.com/en/3.0/topics/auth/customizing/#referencing-the-user-model


### Versão com Celery e Redis configurado como broker

- Altere para a branch redis-celery
