// Unix Commands

01 - | 
Roda 02 comandos, utilizando a saída do primeiro comando como entrada para o segundo


02 - >
Pega um dado de saída e aplica como entrada, criando um arquivo.
Pode também redirecionar a saída padrão para um arquivo, sendo assim caso haja algum conteúdo no arquivo será substituído
ex: cat > nomes.txt
# Digite o nome "Amanda" e encerre o cat (Ctrl + D)

cat nomes.txt
# Resultado
Amanda


03 - >>
Anexa saída padrão a um arquivo, sendo assim ele adiciona 
# o que for digitado ao final do arquivo em questão

cat >> nomes.txt
# Digite o nome "Fernanda", depois `enter` e o nome "Fabiano" e encerre o cat (Ctrl + D)

cat nomes.txt
# Resultado
Amanda
Fernanda
Fabiano


04 - |
Canaliza a saída do primeiro comando para a entrada do segundo,
# dessa forma conseguimos realizar comandos de forma sucessiva

# Considere que queremos uma lista com todos os nomes que contenham
# a letra "F" e que nosso resultado esteja em ordem alfabética
# Para isso podemos realizar o comando abaixo

grep F nomes.txt | sort
# Resultado
Fabiano
Fernanda
