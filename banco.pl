%%%% Base de datos %%%
:- dynamic cuenta/3. %base de datos con hecho dinámico cuenta

% Define las cuentas bancarias como hechos
cuenta(1, 'Juan Pérez', 1000).
cuenta(2, 'María González', 2000).
cuenta(3, 'Pedro Martínez', 1500).

%%% reglas %%%

% Regla para crear una cuenta bancaria
crearCuenta(ID, Nombre, SaldoInicial) :-
    assertz(cuenta(ID, Nombre, SaldoInicial)).

% Regla para leer una cuenta bancaria
leerCuenta(ID, Nombre) :-
    cuenta(ID, Nombre, Saldo), write(Saldo).

% Regla para actualizar una cuenta bancaria
actualizarCuenta(ID, NuevoSaldo) :-
    retract(cuenta(ID, Nombre, _)),
    assertz(cuenta(ID, Nombre, NuevoSaldo)).

% Regla para eliminar una cuenta bancaria
eliminarCuenta(ID) :-
    retract(cuenta(ID, _, _)).
