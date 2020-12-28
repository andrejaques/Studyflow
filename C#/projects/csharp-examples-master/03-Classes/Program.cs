using System;
using Classes.Herança;
namespace Classes
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            Ponto p1 = new Ponto(10, 20);

            Ponto p2 = new Ponto3D(10, 20, 30); // permite o polimorfismo de Ponto3D para Ponto

            Ponto3D p3 = new Ponto3D(10, 20, 30);

            Ponto3D.Calcular(); // método estático pertence à classe e não à instância
        }
    }
}
