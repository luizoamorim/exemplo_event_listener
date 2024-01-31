# Contrato inteligente

Assim como no exemplo apresentado, o contrato Election está inserido na raiz do projeto.
Coloquei-o aqui para acesso, mas ele não pode ser executado nesse projeto do jeito que está.
Para isso precisaríamos de mais libs e código.
Para tentar fazer exemplo mostrado na apresentação, siga os seguintes passos:

## Crie uma carteira

Acesse o site da metamask. Faça a instalação do plugin no seu browser
e crie sua carteira.
Link: [https://metamask.io/](https://metamask.io/)

## Remix IDE
Essa plataforma cria um ambiente pronto para compilar, fazer o deploy e executar o seu contrato sem a necessidade 
de se criar um projeto e um frontend para isso.

Acesso a IDE: [https://remix.ethereum.org/](https://remix.ethereum.org/)

Dentro da pasta contracts, crie um arquivo Election.sol e cole o código contido no nosso arquivo Election.sol nesse projeto.

1. Na aba direita clique no item de compilação.
2. Cheque se a versão do seu compilador (pragma ...) é a mesma do compilador do remix. Nesse caso veja que a 0.8.22.
3. Clique em compile Election.sol.
<img width="1292" alt="image" src="https://github.com/luizoamorim/exemplo_event_listener/assets/73957838/7d10b238-24f5-419b-ad50-7527143757e1">

Feito isso seu contrato está compilado e pronto para ser feito o deploy.
Clique no item abaixo na mesma aba, que é usado para fazer o deploy.
