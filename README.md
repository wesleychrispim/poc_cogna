1 Instalar Python

2.1 Criar ambiente virtual python Windows

```
py -m venv .venv
```

2.2 Criar ambiente virtual python Linux/Mac

```
python3 -m venv .venv
```

3.1 Ativar ambiente virtual Windows

```
.venv\Scripts\activate
```

3.2 Ativar ambiente virtual Linux/Mac

```
source .venv/bin/activate
```

4 Instalar o requisitos

```
pip install -r requirements.txt
```

### Extensões VSCode recomendadas:
- Robot Framework Language Server
- GitHub Copilot
- GitHub Copilot Chat


### Variáveis de ambiente:

- Dados sensíveis como usuários e senhas devem ser armazenados no arquivo .env
- Chaves de acesso (api keys) também devem ser informadas dentro desse arquivo

O arquivo HOOKS.robot faz uma chamada para o arquivo commom/VariaveisAmbiente.py que, por sua vez, carrega na memória as variáveis de ambiente existentes no arquivo .env. Por herança, as variáveis são disponibilizadas para todos os arquivos que utilizam o HOOKS.robot.

O arquivo .env deve ser criado apenas no repositório local, na raiz do projeto. As variáveis devem possuir o formato CHAVE=VALOR.
Para que os casos de testes exemplo deste projeto base funcione, é necessário criar um .env com as seguintes chaves:
```
BROWSER=
BASE_URL=
COSMOS_STAGE_USUARIO=
COSMOS_STAGE_SENHA=
ZEPHYR_ACCESS_TOKEN=
```

BROWSER=Qualquer browser suportado pelo Robot. Recomendação: chrome
BASE_URL=URL da tela de login do ambiente de stage do Cosmos ERP
COSMOS_STAGE_USUARIO=Usuário cadastrado no ambiente de stage do Cosmos
COSMOS_STAGE_SENHA=Senha cadastrada no ambiente de stage do Cosmos
ZEPHYR_ACCESS_TOKEN=Access Token do Zephyr para integração dos resultados dos testes.

Mais informações: [Como gerar access token](http://https://support.smartbear.com/zephyr-scale-cloud/docs/rest-api/generating-api-access-tokens.html "Como gerar access token")

### Boas práticas:

- o nome dos arquivos do projeto devem usar o padrão snake case (palavras separadas por \_ )
- variáveis sempre em caixa alta
- padrão para a nomenclatura de componentes (variaveis): ex: NOME_PAGE.CPF_INPUT, NOME_PAGE.ENTAR_BUTTON (sempre adicionar o nome da página como prefixo seguido de ponto)
  - usar o nome da página como primeiro elemento ex: PAGINA ou NOME_PAGINA (em caso de nome composto)
  - nome do elemento ex: PAGINA.NOME_ELEMENTO ou NOME_PAGINA.NOME_ELEMENTO
  - tipo do elemento ex: PAGINA.NOME_ELEMENTO.TIPO ou PAGINA.NOME_ELEMENTO.TIPO_ELEMENTO
  - tipos de elementos:
    - INPUT -> qualquer campo texto
    - BUTTON -> qualquer botão da página
    - SELECT -> lista de seleção (dropdown)
    - RADIO -> radio buttons
    - CHECKBOX -> checkbox
    - LINK -> links
    - LABEL -> texto da tela sem nenhum tipo de interação ou título de campos
    - TOAST -> toast
- usar encapsulamento das variáveis dentro da page
- todo teste deve começar com a tag **[Setup]**
- todo teste deve ser finalizado com a tag **[Teardown]**
- todo teste deve conter a chave do Zephyr na tag **[Tags]**

### Estrutura:

- tests: descrição dos testes usando o padrão gherkin
  - api: quando houver testes de serviços
  - web: testes end to end
- steps: ações efetuadas em cada etapa (keywords)
- pages: variáveis dos elementos da página
- commom: variáveis de contexto global
- hooks: arquivos que devem ser usados em todos os casos de teste
- resources: pasta para arquivos de suporte como .json, .xml...
- results: pasta para direcionar o output da execução dos testes (logs). Esta pasta deve estar no .gitignore
- .env: arquivo destinado para as variáveis de ambiente contendo dados sensíveis

### Integração Robot x Zephyr Scale:
A integração do resultados dos testes automatizados com o Zephyr se dá através da API disponibilizada pela ferramenta. As requisições exigem autenticação através de token. Esse token deve ser armazenado no arquivo .env da seguinte forma:

```
ZEPHYR_ACCESS_TOKEN=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9eyJjb
```
É pré-requisito que os casos de testes automatizados no Robot já estejam cadastrados no Zephyr. Além disso, os casos de testes no Robot devem estar identificados pela chave (ID) do casos de testes cadastrado no Zephyr.

Documentações:
[Como gerar access token](http://https://support.smartbear.com/zephyr-scale-cloud/docs/rest-api/generating-api-access-tokens.html "Como gerar access token")
[API Zephyr Scale](https://support.smartbear.com/zephyr-scale-cloud/api-docs/#section/Introductionhttp:// "API Zephyr Scale")