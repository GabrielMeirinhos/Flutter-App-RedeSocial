Flutter Study App
Este projeto foi criado para aprender Flutter e explorar o uso de algumas bibliotecas populares, como MobX, Modular e Dio, além de adotar a Arquitetura Limpa (Clean Architecture) para estruturar e organizar o código. A Clean Architecture facilita a manutenção, escalabilidade e teste do aplicativo ao separar responsabilidades e criar camadas bem definidas.

Objetivos do Projeto
Aprender Flutter: Conhecer a estrutura e os fundamentos do Flutter, incluindo widgets, layouts e navegação.
Gerenciamento de Estado com MobX: Controlar o estado de maneira reativa e otimizar a responsividade do app.
Arquitetura Modular com Modular: Organizar rotas e navegação de forma modular e escalável.
Requisições HTTP com Dio: Integrar APIs de forma eficiente, manipulando dados remotos e respostas.
Implementar Clean Architecture: Utilizar a Arquitetura Limpa para separar a lógica de negócios, domínio e camada de dados, criando um código mais robusto e sustentável.
Tecnologias Utilizadas
Flutter: Framework de desenvolvimento para criar apps móveis.
MobX: Biblioteca de gerenciamento de estado reativo.
Modular: Gerenciador de rotas e injeção de dependências.
Dio: Biblioteca para manipulação de requisições HTTP.
Clean Architecture: Estrutura arquitetônica que separa a lógica de negócios, domínio e camada de dados, facilitando a manutenção e testes.
Estrutura do Projeto
O projeto é estruturado com a Arquitetura Limpa, que separa o código em camadas de apresentação, domínio e dados. A modularização facilita a escalabilidade e a compreensão do código.

Camadas da Arquitetura
Apresentação (Presentation): Contém as telas (UI), widgets e gerenciamento de estado (MobX). Essa camada se comunica com a camada de domínio por meio de casos de uso e utiliza injeção de dependência para acessar serviços e repositórios.

Domínio (Domain): Inclui as entidades e casos de uso (use cases), que representam a lógica de negócios. A camada de domínio é independente de detalhes de implementação e define interfaces para repositórios e serviços.

Dados (Data): Responsável pelo acesso a dados, seja via APIs, banco de dados ou cache. Os repositórios implementam interfaces definidas na camada de domínio, garantindo que a lógica de negócios não dependa diretamente de fontes de dados específicas.

Funcionalidades
Autenticação: Tela de login e registro com validações e integração com a API (exemplo de uso da arquitetura).
Painel Principal: Interface principal do app, exibindo informações e interações centrais.
Configurações: Preferências do usuário, possibilitando ajustes no app.
Executando o Projeto
Para executar o projeto localmente, é necessário ter o Flutter instalado. Em seguida, clone o repositório e execute os seguintes comandos:

bash
Copiar código
flutter pub get
flutter run
Próximos Passos
Adicionar mais funcionalidades: Expandir as funcionalidades do aplicativo, aplicando a Clean Architecture e integrando novas bibliotecas.
Aprimorar o gerenciamento de estado: Investigar padrões de arquitetura para otimizar o MobX em projetos maiores.
Testes: Implementar testes unitários e de integração, principalmente na camada de domínio.
