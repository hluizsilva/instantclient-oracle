# Oracle Instant Client

## Docker Pull Command
``docker pull docker.totvs.io/engpro-dba/instantclient-oracle:latest``

## Acessar o console do SQL*Plus

Para conectar o SQL*Plus com a intância Oracle, chame apenas o sqlplus passando a string de conexão. Assim o console será exibido aguardando a inserção de instrução sql.

``docker run -ti --rm -v ${PWD}:/oracle docker.totvs.io/engpro-dba/instantclient-oracle sqlplus -S USER/PASSWD@HOST/INSTANCE``

> - -S - Modo silent
> - USER - Usuário da instância
> - PASSWD - Senha da instância
> - HOST - Endereço IP do servidor Oracle
> - INSTANCE - instância que será conectada

## Executar um script no SQL*Plus

Para executar um script sql execute o comando abaixo que realiza a conexão com a instância e executa o script informado.

> **Obs.:** No final do script inclua a linha ``exit`` para que ao finalizar o processamento do script o console do SQL*Plus finalizar a tarefa.

``docker run -ti --rm -v ${PWD}:/oracle docker.totvs.io/engpro-dba/instantclient-oracle sqlplus -S USER/PASSWD@HOST/INSTANCE @file``

> - -S - Modo silent
> - USER - Usuário da instância
> - PASSWD - Senha da instância
> - HOST - Endereço IP do servidor Oracle
> - INSTANCE - instância que será conectada
> - @file - Caminho do arquivo
