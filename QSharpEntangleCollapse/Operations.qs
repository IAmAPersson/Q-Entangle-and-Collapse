namespace Quantum.QSharpEntangleCollapse
{
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    operation Set(qbit : Qubit, desired : Result) : Unit {
        if (desired != M(qbit)) {
            X(qbit);  
		}
	}

    operation EntangleCollapse () : Unit {
        using ((a, b) = (Qubit(), Qubit())) {
            for (i in 1..10) {
                H(a);
                CNOT(a, b);

                let (resa, resb) = (M(a), M(b));

                Message($"Collapsed Qubits: A = {resa}, B = {resb}");

                Set(a, Zero);
                Set(b, Zero);
			}
		}
	}
}
