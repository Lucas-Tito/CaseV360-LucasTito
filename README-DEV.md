
### Comandos Docker Compose

No terminal, na raiz do projeto:

1.  **Buildar as imagens (só precisa na primeira vez ou se mudar o `Dockerfile.dev` ou `Gemfile`):**
    ```bash
    docker-compose build
    ```

2.  **Iniciar os serviços (app e db):**
    ```bash
    docker-compose up
    ```
    Você verá os logs do Rails e do PostgreSQL. Sua aplicação Rails estará acessível em `http://localhost:3000`.

3.  **Para parar os serviços:**
    Pressione `Ctrl+C` no terminal onde o `docker-compose up` está rodando. Depois, para garantir que os containers parem e sejam removidos (mas os volumes de dados persistam):
    ```bash
    docker-compose down
    ```

4.  **Executar comandos Rails (como criar o banco, migrations, console):**
    Com os serviços rodando (após `docker-compose up`), abra um **novo terminal** e use `docker-compose exec app ...`:

    * **Criar os bancos de dados (só na primeira vez):**
        ```bash
        docker-compose exec app rails db:create
        ```
    * **Rodar migrations:**
        ```bash
        docker-compose exec app rails db:migrate
        ```
    * **Acessar o console do Rails:**
        ```bash
        docker-compose exec app rails console
        ```
    * **Acessar o terminal dentro do container da aplicação:**
        ```bash
        docker-compose exec app bash
        ```






### Others

sudo docker-compose down -v
sudo docker-compose run --rm app rails db:create db:migrate
sudo docker-compose run --rm app rails db:migrate
sudo docker-compose run --rm app bundle install

sudo docker-compose down
sudo docker volume rm todo-list_bundle_cache
sudo docker-compose build --no-cache

sudo lsof -i :5432
sudo kill <pid>

# Edit Credentials
EDITOR="nano" rails credentials:edit
