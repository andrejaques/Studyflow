/* Classes sáo os tipos mais fundamentais de C# */

// Uma classe é uma estrutura de dados que combina
// estados (campos) e acç~pes (métodos)

// As classes suportam herança e polimorfismo, mecanismo pelos quais as
// classes derivadas podem estender e especializas as classes bases
using System;
namespace fundamentals 
{

    public class Ponto {
        public int x, y;
        public Ponto(int x, int y){
            this.x = x;
            this.y = y;
        }
    }
    
}

/* Instâncias de classes (objetos) são criadas usando o operador new,
que aloca memória para uma nova instância, chama um construtor para 
inicializar a instância e torna uma referência à instância */

Ponto p1 = new Ponto(0, 0); // p1 é apenas uma referência ao objeto

Ponto p2 = new Ponto(10, 20); // segundo espaço na memória e outra referência a outro objeto

/* A memória ocupada por um objeto é recuperada automaticamente quando o objeto não está mais acessível. 
Não é necessário nem possível desalocar explicitamente objetos em C# */

// Temos membros de uma classe podem ser estáticos ou membros de instância

// Membros estáticos pertencem a classe e membros de instância pertencem ao objeto

// EX: Constantes, variáveis, métodos, propriedades, construtores, etc....

// Cada membro de uma classe vai ter uma acessibilidade, que controla as regiões do texto do programa que podem acessas o membro

/* Acessibilidades 
Podem ser:
    public - é da mãe joana.
    protected - apenas as classes que herdam herança dessa classe podem acessar o método
    internal - só é acessado dentro do assembly que ele faz parte (do project)
    private - acessado único e exclusivamente daquela classe que ele está contido. */

/* Henrança:
    Uma declaração de classe pode especificar uma classe bade, herdando os membros public, internal e protected da classe base
    Omitir uma especificação de classe base é op mesmo que derivar do tipo object (referência base) */

/* Métodos:
    Um método é um membro que implementa uma computação ou ação que pode ser executada por um bojeto ou classe
    Os métodos podem ter uma lista de parâmetros, que representam valores ou referências de variáveis passadas para o método,
    e um tipo de retorno, que especifica o tipo de valor calculado e retornado pelo método. */

    
