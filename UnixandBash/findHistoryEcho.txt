find , history e echo .


01 - find 
É um comando para pesquisar em diretórios por arquivos ou outras pastas, de acordo com os parâmetros passados a ele. 
Esses parâmetros podem ser name , date , size e type . Caso nenhum atributo seja passado, ele pesquisará tudo que estiver dentro do diretório atual. 
Veja abaixo alguns exemplos de como usá-lo:

# Para listar todos os arquivos que terminam em .txt
find . -name "*.txt"

# Para localizar apenas diretórios ou arquivos

# Localizar tanto arquivos quanto diretórios
find ./teste -name exemplo*
# Resultado
./teste/exemplo.txt
./teste/exemplo

# Localizar somente arquivos
find ./teste -type f -name "exemplo*"
# Resultado
./teste/exemplo.txt

# Localizar somente diretórios
find ./teste -type d -name "exemplo*"
# Resultado
./teste/exemplo



02 - history
É um comando que mostra o histórico de comandos que você executou no terminal. 
A quantidade ou o tamanho desse "histórico" podem ser configurados para um número arbitrário de comandos ou para ver todo o histórico.

# Mostra o histórico de comandos
history
# Pegar os últimos 10 comandos
history | tail


03 - echo
É um comando utilizado em scripts ou no terminal para exibir mensagens na tela ou em um arquivo.


echo "Este é um teste"
# Result
Este é um teste

# Pode ser usado para colocar textos dentro de arquivos.
echo "Este é mais um teste" > teste.txt
cat teste.txt
Este é mais um teste