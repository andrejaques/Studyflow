/* Structs ou estruturas */

/*  como as classes, as structs são estruturas de dados que podem conter membros de dados
e membros de ações, mas, diferentemente das classes, as structs são
tipos de valor e não requerem alocação de heap (nome dado ao local da memória) 
*/

/* Uma variável de um tipo de struct armazena diretamente os dados da estrutura, enquanto uma 
variável de um tipo de classe armazena uma referência a um objeto alocado na memória.
*/

/* Structs não aceitam heranã determinada pelo desenvolvedor

São uteis para pequenas estruturas de dados que possuem semântica de valor: números complexos, 
ponsto em um sistema de coordenadas ou pares de chave-valor em um dicionário são bons exemplos de utilização.
*/

// O uso de structs em vez de classes para pequenas estruturas de dados pode fazer uma grande diferença no número de alocações de memória

// Exemplo

public static void Main () {
    Ponto[] pontos = new Ponto[];
    for (int i = 0; i < 100; i++){
        pontos[i] = new Ponto(i, i);
    }
}

// Utilizar structs para diminuir a alocação de memória

public struct Ponto {
    public int x, y;
    public Ponto(int x, int y) {
        this.x = x;
        this.y = y;
    }
}

/* Constutores de structs sao chamados com o operador new
semelhante a um construtor de classe, mas em vez
de alocar dinamicamente um objeto no heap (memoria) gerenciado
e retornar uma referência a ele, um construtor de struct simplesmente
rettorna o próprio valor struct (normamentel um local temporário na stack)
e esse valor é copiado conforme necessário.
*/