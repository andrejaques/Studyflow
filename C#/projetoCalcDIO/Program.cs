//Calculadora de divisão do Titio André

using System;

namespace projetoCalcDIO
{
    class Program
    {
        static void Main(string[] args)
        {
            double num1, num2;
            string numReader1, numReader2;

            Console.WriteLine("Digite um número: ");
            numReader1 = Console.ReadLine();
            bool canConvert1 = double.TryParse(numReader1, out num1);

                                // tratamento do erro de entrada não numérico do num1.
            while (canConvert1 != true) 
            {
                Console.WriteLine("Número inválido. Por favor, digite um número.");
                numReader1 = Console.ReadLine();
                canConvert1 = double.TryParse(numReader1, out num1);
            }

            Console.WriteLine("Digite mais um número: ");
            numReader2 = Console.ReadLine();
            bool canConvert2 = double.TryParse(numReader2, out num2);

                                // tratamento do erro de entrada não numérico do num2.
            while (canConvert2 != true) 
            {
                Console.WriteLine("Número inválido. Por favor, digite o segundo número novamente.");
                numReader2 = Console.ReadLine();
                canConvert2 = double.TryParse(numReader2, out num2);
            }

                                                // Divisão

            double resultado, resultadoTratado;
            resultado = num1 / num2;
            resultadoTratado = Math.Round(resultado, 1);
            Console.WriteLine(resultadoTratado);
        }
    }
}
