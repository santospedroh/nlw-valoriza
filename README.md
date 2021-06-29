# NLW Valoriza

<img width='400' src='https://github.com/santospedroh/nlw-valoriza/blob/main/src/img/nlwValorizaImg.png?raw=true'>

## Sobre o projeto 💻

O projeto NLW Valoriza foi desenvolvido durante a [Next Level Week](https://nextlevelweek.com/)  6 pela trilha de back-end da [Rocketseat](https://rocketseat.com.br/)

O Objetivo é desenvolver uma API onde podemos cadastrar elogios para outros usuários.

### Regras de negócio

- Cadastro de usuários

    [x] Não é permitido cadastrar mais de um usuário com o mesmo e-mail<br>
    [x] Não é permitido cadastrar usuário sem e-mail<br>

- Cadastro de Tags

    [x] Não é permitido cadastrar tag sem nome<br>
    [x] Não é permitido cadastrar mais de uma tag com o mesmo nome<br>
    [x] Não é permitido o cadastro por usuários que não sejam administradores<br>

- Cadastro de elogios

    [x] Não é permitido um usuário cadastrar um elogio para si<br>
    [x] Não é permitido cadastrar elogios para usuários inválidos<br>
    [x] O usuário precisa estar autenticado na aplicação<br>

## Tecnologias 👨‍💻

- Node.js
- TypeScript
- Yarn
- Express
- TypeORM

## Instalação 🛠

### Node.js

1. Vá ao site: <https://nodejs.org/en/download/>;
2. Escolha a versão que deseja de acordo com o seu Sistema Operacional;
3. Abra o executável e prossiga no processo de instalação.

### Yarn

1. Vá ao site: <https://yarnpkg.com/getting-started/install/>;
2. Faça a instalação via npm: `npm install -g yarn`

### Dependências

1. TypeScript: `yarn add typescript`
2. Express: `yarn add express`
3. Express Async Errors: `yarn add  express-async-errors`
4. TypeORM: `yarn add typeorm`
5. Reflect Metadata: `yarn add reflect-metadata`
6. MySQL: `yarn add mysql`
7. UUID: `yarn add uuid`
8. Class Transformer: `class-transformer`
9. Cors: `cors`

### Banco de dados (MySQL/MariaDB)

- Para esta aplicação você vai precisa de uma instancia do MySQL ou MariaDB, as informações de configuração e conexão deve ser alteradas no arquivo `src/database/index.ts`
- Para criar o schema do banco de dados você pode executar as migrations do projeto ou usar o mysqdump para importar diretamente.

<b>Migrations</b>:
    - `yarn typeorm migration:run`

<b>Restore Dump</b>:
    - `mysql -u <user> -p <schema> < src/database/querys/ddl.sql`

## Executando 🚀

### Start node Server

1. Para iniciar o servidor local execute o comando : $ `yarn dev`	
2. Abra o navegador web e acesse: <http://localhost:3000>
3. Pronto, aplicação executando!
   
---

Made with ♥ by Pedro Santos :wave: [Get in touch!](https://www.linkedin.com/in/santospedroh/)
