using System;

namespace testDotNet
{
    class Program
    {
        static void Main(string[] args)
        {
            int numeroDeVezes = 10;

            for (int i = 1; i <= numeroDeVezes; i++) {
                Console.WriteLine($"Hello World for the international community and Bem Vindo ao C# para os brazucas {i}");
                System.Threading.Thread.Sleep(TimeSpan.FromSeconds(2));
            }
        }
    }
}
