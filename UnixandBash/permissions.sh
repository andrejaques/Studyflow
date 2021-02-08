  Permissões | Links  | Proprietário | Grupo | Tamanho | Data e Hora   | Nome
  -----------|--------|--------------|-------|---------|---------------|---------
  drwxr-xr-x | 2      | root         | root  | 4096    | Out 19 09:10  | composer/

Permissões => Possível identificar o tipo do item e nível de permissão para Leitura, Escrita e Execução de item ou diretório;

Links => Número de ligações que o item possui, no caso do diretório, número de subdiretórios que possui;

Proprietário => Quem é o dono, quem criou. É o diretório padrão do usuário, o home;

Grupo => Grupo ao qual pertence o item ou diretório. Utilizado para dar permissões à outras pessoas;

Tamanho => Em Bytes;

Data e Hora => Momento em que foi criado;

Nome => Nome do item ou diretório;

Também é possível usar o modo octal. Para compreendermos esta outra forma, precisamos entender que eles são administrados por meio de valores como descrito abaixo:
Leitura r - 4
Escrita w - 2
Execução x - 1

Esses valores são permissões com base em bits de ligados = 1 e desligados = 0 ,
Copiar

rwx = 111 ( 7 | Acesso Total )
r-- = 100 ( 4 | Somente Leitura )
-w- = 010 ( 2 | Somente Escrita )
--x = 001 ( 1 | Somente Execução )
rw- = 110 ( 6 | Somente Leitura e Escrita )
r-x = 101 ( 5 | Somente Leitura e Execução )
-wx = 011 ( 3 | Somente Escrita e Execução )
--- = 000 ( 0 | Todos Acessos Negados )

Por tanto cada vez que você liga a chave de leitura, atribui-se o valor para esta chave somando-se com as demais chaves de administração de escrita e execução, caso você também deseje liga-las. 
A sintaxe para realizar esta alteração continua a mesma que do modo literal, sendo chmod 766 [arquivo ou diretório]. 
Cada número corresponde aos grupos de usuário, de grupo e de outros usuários.

Recapitulando: r (read) -> 4, w (write) -> 2, x (executar) -> 1.
pra liberar todo acesso para todas as classes teremos 4 (r) + 2 (w) + 1 (x) = 7, 
então basta digitar chmod 777, sendo: 7 (owner) 7 (group) 7 (public), que é o equivalente a rwxrwxrwx