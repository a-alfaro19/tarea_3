:- discontiguous sintagma_nominal/6.

%Definición de reglas.
% Lugar puro: solo acepta si la frase ES el lugar, sin nada más
lugar_puro(Origen) --> lugar(Origen).

% ----------------------------
% Sintagma nominal para ORIGEN
% ----------------------------

sintagma_nominal(origen(Origen), vacio, vacio, vacio, vacio, vacio) -->
    skip, [estoy, en], skip, lugar(Origen), skip.
sintagma_nominal(origen(Origen), vacio, vacio, vacio, vacio, vacio) -->
    lugar_puro(Origen).
sintagma_nominal(origen(Origen), vacio, vacio, vacio, vacio, vacio) -->
    skip, [salgo, de], skip, lugar(Origen), skip.

% ----------------------------
% Sintagma nominal para DESTINO
% ----------------------------
%
sintagma_nominal(vacio, destino(Destino), vacio, vacio, vacio, vacio) -->
    skip, [quiero, viajar, a], skip, lugar(Destino), skip.
sintagma_nominal(vacio, destino(Destino), vacio, vacio, vacio, vacio) -->
    skip, [voy, a], skip, lugar(Destino), skip.
sintagma_nominal(vacio, destino(Destino), vacio, vacio, vacio, vacio) -->
    skip, [hasta], skip, lugar(Destino), skip.
sintagma_nominal(vacio, destino(Destino), vacio, vacio, vacio, vacio) -->
    skip, [me, gustaria, ir, a], skip, lugar(Destino), skip.
sintagma_nominal(vacio, destino(Destino), vacio, vacio, vacio, vacio) -->
    skip, [me, gustaria, viajar, a], skip, lugar(Destino), skip.
sintagma_nominal(vacio, destino(Destino), vacio, vacio, vacio, vacio) -->
    skip, [me, gustaría, ir, a], skip, lugar(Destino), skip.
sintagma_nominal(vacio, destino(Destino), vacio, vacio, vacio, vacio) -->
    skip, [me, gustaría, viajar, a], skip, lugar(Destino), skip.

sintagma_nominal(vacio, destino(Destino), vacio, vacio, vacio, vacio) -->
    skip, [deseo, viajar, a], skip, lugar(Destino), skip.

sintagma_nominal(vacio, destino(Destino), vacio, vacio, vacio, vacio) -->
    skip, [quiero, ir, a], skip, lugar(Destino), skip.

sintagma_nominal(vacio, destino(Destino), vacio, vacio, vacio, vacio) -->
    skip, [ir, a], skip, lugar(Destino), skip.

% SOLO esta para frases puras:
sintagma_nominal(vacio, destino(Destino), vacio, vacio, vacio, vacio) -->
    lugar_puro(Destino).


% ----------------------------
% Sintagma nominal para TIPO DE VUELO
% ----------------------------

sintagma_nominal(vacio, vacio, tipo_vuelo(Tipo), vacio, vacio, vacio) -->
    skip, tipo_vuelo(Tipo), skip.

% ----------------------------
% Sintagma nominal para AEROLÍNEA
% ----------------------------

sintagma_nominal(vacio, vacio, vacio, aerolinea(Aero), vacio, vacio) -->
    skip, [con], skip, aerolinea_opc(Aero), skip.
sintagma_nominal(vacio, vacio, vacio, aerolinea(Aero), vacio, vacio) -->
    skip, aerolinea_opc(Aero), skip.

% ----------------------------
% Sintagma nominal para CLASE
% ----------------------------

sintagma_nominal(vacio, vacio, vacio, vacio, clase(Clase), vacio) -->
    skip, [en, clase], skip, clase_opc(Clase), skip.
sintagma_nominal(vacio, vacio, vacio, vacio, clase(Clase), vacio) -->
    skip, clase_opc(Clase), skip.

% ----------------------------
% Sintagma nominal para PRESUPUESTO
% ----------------------------

sintagma_nominal(vacio, vacio, vacio, vacio, vacio, presupuesto(Pres)) -->
    skip, presupuesto_opc(Pres), skip.


% -----------------------------
% Verbos
% -----------------------------
verbo(viajar).
verbo(ir).
verbo(volar).
verbo(trasladarme).
verbo(moverme).
verbo(salir).
verbo(llegar).
verbo(partir).
verbo(buscar).
verbo(encontrar).

% ----------------------------
% Sintagmas Verbales
% ----------------------------

sintagma_verbal(viajar) -->
    skip, [quiero, viajar], skip.
sintagma_verbal(viajar) -->
    skip, [me, gustaria, viajar], skip.
sintagma_verbal(viajar) -->
    skip, [planeo, viajar], skip.
sintagma_verbal(viajar) -->
    skip, [ocupo, viajar], skip.
sintagma_verbal(viajar) -->
    skip, [debo, viajar], skip.
sintagma_verbal(viajar) -->
    skip, [necesito, viajar], skip.
sintagma_verbal(viajar) -->
    skip, [tengo, que, viajar], skip.


sintagma_verbal(ir) -->
    skip, [quiero, ir], skip.
sintagma_verbal(ir) -->
    skip, [me, gustaria, ir], skip.
sintagma_verbal(ir) -->
    skip, [planeo, ir], skip.
sintagma_verbal(ir) -->
    skip, [necesito, ir], skip.
sintagma_verbal(ir) -->
    skip, [ocupo, ir], skip.
sintagma_verbal(ir) -->
    skip, [requiero, ir], skip.
sintagma_verbal(ir) -->
    skip, [tengo, que, ir], skip.

sintagma_verbal(volar) -->
    skip, [deseo, volar], skip.
sintagma_verbal(volar) -->
    skip, [me, gustaria, volar], skip.
sintagma_verbal(volar) -->
    skip, [quiero, volar], skip.
sintagma_verbal(volar) -->
    skip, [requiero, volar], skip.
sintagma_verbal(volar) -->
    skip, [ocupo, volar], skip.

sintagma_verbal(buscar) -->
    skip, [quiero, buscar], skip.

sintagma_verbal(encontrar) -->
    skip, [espero, encontrar], skip.
sintagma_verbal(encontrar) -->
    skip, [deseo, encontrar], skip.
sintagma_verbal(encontrar) -->
    skip, [ocupo, encontrar], skip.

sintagma_verbal(trasladarme) -->
    skip, [quiero, trasladarme], skip.
sintagma_verbal(trasladarme) -->
    skip, [planeo, trasladarme], skip.
sintagma_verbal(trasladarme) -->
    skip, [me, gustaria, trasladarme], skip.
sintagma_verbal(trasladarme) -->
    skip, [necesito, trasladarme], skip.

sintagma_verbal(moverme) -->
    skip, [quiero, moverme], skip.
sintagma_verbal(moverme) -->
    skip, [me, gustaria, moverme], skip.
sintagma_verbal(moverme) -->
    skip, [planeo, moverme], skip.
sintagma_verbal(moverme) -->
    skip, [necesito, moverme], skip.

sintagma_verbal(salir) -->
    skip, [quiero, salir], skip.
sintagma_verbal(salir) -->
    skip, [necesito, salir], skip.
sintagma_verbal(salir) -->
    skip, [tengo, que, salir], skip.

sintagma_verbal(llegar) -->
    skip, [quiero, llegar], skip.
sintagma_verbal(llegar) -->
    skip, [me, gustaria, llegar], skip.
sintagma_verbal(llegar) -->
    skip, [planeo, llegar], skip.

sintagma_verbal(partir) -->
    skip, [quiero, partir], skip.
sintagma_verbal(partir) -->
    skip, [me, gustaria, partir], skip.
sintagma_verbal(partir) -->
    skip, [tengo, que, partir], skip.

% ----------------------------
% LUGARES (sinónimos + más variantes)
% ----------------------------

% SJO - San Jose, Costa Rica
lugar(sjo) --> [sjo].
lugar(sjo) --> [san, jose].
lugar(sjo) --> [san, josé].

lugar(sjo) --> [san, jose, costa, rica].
lugar(sjo) --> [san, josé, costa, rica].

lugar(sjo) --> [costa, rica].

% PTY - Ciudad de Panama, Panama
lugar(pty) --> [pty].
lugar(pty) --> [panama].
lugar(pty) --> [panamá].

lugar(pty) --> [ciudad, de, panama].
lugar(pty) --> [ciudad, de, panamá].

lugar(pty) --> [ciudad, de, panama, panama].
lugar(pty) --> [ciudad, de, panamá, panamá].


% JFK - New York, Estados Unidos
lugar(jfk) --> [jfk].
lugar(jfk) --> [new, york].
lugar(jfk) --> [new, york, estados, unidos].
lugar(jfk) --> [estados, unidos].

% PHX - Phoenix, Arizona
lugar(phx) --> [phx].
lugar(phx) --> [phoenix].
lugar(phx) --> [phoenix, arizona].
lugar(phx) --> [arizona].

% LAX - Los Angeles, California
lugar(lax) --> [lax].
lugar(lax) --> [los, angeles].
lugar(lax) --> [los, angeles, california].
lugar(lax) --> [california].
lugar(lax) --> [los,ángeles].


% ----------------------------
% Tipo de vuelo
% ----------------------------

tipo_vuelo(charter) --> [charter].
tipo_vuelo(charter) --> [chárter].
tipo_vuelo(comercial) --> [comercial].
tipo_vuelo(directo) --> [directo].
tipo_vuelo(barato) --> [barato].

% ----------------------------
% Aerolíneas (sinónimos o variantes)
% ----------------------------

aerolinea_opc(copa_airlines) --> [copa, airlines].
aerolinea_opc(copa_airlines) --> [copa].
aerolinea_opc(avianca) --> [avianca].
aerolinea_opc(united_airlines) --> [united, airlines].
aerolinea_opc(united_airlines) --> [united].
aerolinea_opc(american_airlines) --> [american, airlines].
aerolinea_opc(american_airlines) --> [american].
aerolinea_opc(delta_airlines) --> [delta, airlines].
aerolinea_opc(delta_airlines) --> [delta].

% ----------------------------
% Clase (sinónimos o variantes)
% ----------------------------

clase_opc(economica) --> [economica].
clase_opc(economica) --> [económica].
clase_opc(economica) --> [economy].
clase_opc(economica) --> [turista].
clase_opc(negocios) --> [ejecutiva].
clase_opc(negocios) --> [negocios].
clase_opc(negocios) --> [business].

% ----------------------------
% Presupuesto
% ----------------------------

presupuesto_opc(Monto) --> [Monto, dolares], { number(Monto) }.
presupuesto_opc(Monto) --> [Monto], { number(Monto) }.


% ----------------------------
% Validar si la oración tiene un sintagma verbal
% ----------------------------
oracion_valida(Entrada) :-
    ( phrase(sintagma_verbal(_Verbo), Entrada)
    ; phrase(sintagma_nominal(_, destino(_), _, _, _, _), Entrada)
    ).
% ----------------------------
% Skip: permite saltar cualquier palabra innecesaria antes/después
% ----------------------------

skip --> [].
skip --> [_], skip.
