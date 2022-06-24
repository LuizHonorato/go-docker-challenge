# Introdução

Desafio Go FullCycle - Aplicação mínima em Golang, a imagem precisa ter menos de 2MB.

# Execução

Baixar a imagem do Docker Hub com o seguinte comando:

- docker pull lhonorato/golang:prod

Executar a imagem através do seguinte comando:

- docker run --name golang -p 8080:8080 -it -v $(pwd)/:/go/src lhonorato/golang:prod

O terminal deve printar a saída:

Code.education Rocks!

