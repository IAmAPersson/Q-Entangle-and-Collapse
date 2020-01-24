using System;
using System.Diagnostics.CodeAnalysis;
using Microsoft.Quantum.Simulation.Core;
using Microsoft.Quantum.Simulation.Simulators;

// ReSharper disable CheckNamespace
namespace Quantum.QSharpEntangleCollapse
{
    [SuppressMessage("ReSharper", "IdentifierTypo")]
    class Driver
    {
        static void Main(string[] args)
        {
            var sim = new QuantumSimulator();

            EntangleCollapse.Run(sim).Wait();

            Console.ReadKey();
        }
    }
}