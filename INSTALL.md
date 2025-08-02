# 1. Instalação do Python 3 com venv

## Linux (Ubuntu)

1. **Instale o Python 3**  
    No terminal, execute:
    ```sh
    sudo apt update
    sudo apt install python3=3.13.3-1 python3-venv=3.13.3-1
    ```

2. **Crie o ambiente virtual**  
    ```sh
    python3 -m venv .venv
    ```

3. **Ative o ambiente virtual**  
    ```sh
    source .venv/bin/activate
    ```

4. **Instale dependências (opcional)**  
    ```sh
    pip install -r requirements.txt
    ```

---

## Windows

1. **Baixe e instale o Python 3**  
    Acesse [python.org/downloads](https://www.python.org/downloads/) e siga as instruções. Marque a opção "Add Python to PATH" durante a instalação.

    2. **Crie o ambiente virtual**  
    ```cmd
    python -m venv .venv
    ```

3. **Ative o ambiente virtual**  
    ```cmd
    .venv\Scripts\activate
    ```

4. **Instale dependências**  
    ```cmd
    pip install -r requirements.txt
    ```

---

# 2. Instalação do PostgreSQL e pgAdmin4

## Linux (Ubuntu)

1. **Instale a chave pública do repositório (caso ainda não tenha feito):**
    
    No terminal, execute:
    ```sh
    curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
    ```

2. **Crie o arquivo de configuração do repositório:**
    ```sh
    sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
    ```

3. **Instale o pgAdmin:**
    ```sh
    sudo apt install pgadmin4
    ```

---

## Windows

1. **Baixe o instalador do pgAdmin4**  
    Acesse [pgadmin.org/download/pgadmin-4-windows/](https://www.pgadmin.org/download/pgadmin-4-windows/) e clique em "Download" para baixar o instalador do Windows.

2. **Execute o instalador**  
    Após o download, execute o arquivo `.exe` e siga as instruções do assistente de instalação.
