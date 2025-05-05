:- set_prolog_flag(encoding, utf8).


% Reglasprincipales
oracion(Datos) --> saludo, sujeto, sintagma_verbal(Datos).
oracion(Datos) --> saludo, sintagma_verbal(Datos).
oracion(Datos) --> sujeto, sintagma_verbal(Datos).
oracion(Datos) --> sintagma_verbal(Datos).

% Saludos opcionales
saludo --> [hola].
saludo --> [buenos, dias].
saludo --> [buenas, tardes].
saludo --> [buenas, noches].

% Sujeto opcional
sujeto --> [yo].
sujeto --> [usuario].
sujeto --> [travelagencylog].

% Sintagmas verbales
sintagma_verbal([Dato|Resto]) --> elemento_dato(Dato), sintagma_verbal(Resto).
sintagma_verbal([Dato]) --> elemento_dato(Dato).

% Elementos individuales de datos
elemento_dato(destino(Lugar)) --> verbo_destino, lugar(Lugar).
elemento_dato(origen(Lugar)) --> verbo_origen, lugar(Lugar).
elemento_dato(tipo_vuelo(Tipo)) --> verbo_tipo_vuelo, tipo_vuelo(Tipo).
elemento_dato(aerolinea(Nombre)) --> verbo_aerolinea, aerolinea(Nombre).
elemento_dato(clase(Clase)) --> verbo_clase, clase(Clase).
elemento_dato(presupuesto(Cantidad)) --> verbo_presupuesto, presupuesto(Cantidad).
elemento_dato(confirmacion(si)) --> afirmacion.
elemento_dato(confirmacion(no)) --> negacion.

% Frases afirmativas
afirmacion --> [si].
afirmacion --> [sí].
afirmacion --> [claro].
afirmacion --> [por, supuesto].

% Frases negativas
negacion --> [no].
negacion --> [no, gracias].
negacion --> [no, necesariamente].
negacion --> [prefiero, el, vuelo, mas, barato].

% Verbos
verbo_origen --> [estoy, en].
verbo_origen --> [me, encuentro, en].

verbo_destino --> [quiero, ir, a].
verbo_destino --> [mi, destino, es].
verbo_destino --> [voy, a].
verbo_destino --> [viajar, a].
verbo_destino --> [me, gustaria, viajar, a].

verbo_tipo_vuelo --> [deseo, un, vuelo].
verbo_tipo_vuelo --> [en, un, vuelo].

verbo_aerolinea --> [me, gusta, viajar, con].
verbo_aerolinea --> [prefiero, viajar, con].
verbo_aerolinea --> [claro, me, gusta, viajar, con].

verbo_clase --> [en, clase, de].
verbo_clase --> [por, favor, en, clase, de].

verbo_presupuesto --> [si].
verbo_presupuesto --> [mi, presupuesto, es].
verbo_presupuesto --> [dispongo, de].

% Lugares (origen o destino)
lugar(san_jose_costa_rica) --> [san, jose, costa, rica].
lugar(londres_inglaterra) --> [londres, inglaterra].
lugar(tokio_japon) --> [tokio, japon].
lugar(arizona) --> [arizona].

% Tipos de vuelo
tipo_vuelo(charter) --> [charter].
tipo_vuelo(comercial) --> [comercial].
tipo_vuelo(directo) --> [directo].

% Aerolíneas
aerolinea(copa_airlines) --> [copa, airlines].
aerolinea(united_airlines) --> [united, airlines].

% Clase
clase(economica) --> [economica].
clase(negocios) --> [negocios].

% Presupuesto
presupuesto(15000) --> [15000, dolares].
presupuesto(dolares) --> [dolares].  % Caso sin cantidad

% Lista de palabras clave para validar si la oración tiene intención útil
palabra_clave(arizona).
palabra_clave(san).
palabra_clave(jose).
palabra_clave(costa).
palabra_clave(rica).
palabra_clave(londres).
palabra_clave(tokio).
palabra_clave(viajar).
palabra_clave(destino).
palabra_clave(origen).
palabra_clave(vuelo).
palabra_clave(charter).
palabra_clave(comercial).
palabra_clave(directo).
palabra_clave(economica).
palabra_clave(negocios).
palabra_clave(copa).
palabra_clave(united).
palabra_clave(airlines).
palabra_clave(presupuesto).
palabra_clave(dolares).

% Procesador de entrada mejorado
procesar_oracion(Oracion) :-
    phrase(oracion(Datos), Oracion), !,
    writeln('Oración válida. Datos reconocidos:'),
    writeln(Datos).

procesar_oracion(Oracion) :-
    contiene_palabra_clave(Oracion), !,
    writeln('Me podría repetir, no entendí.').

procesar_oracion(_) :-
    writeln('No entendí bien tu solicitud.').

% Verifica si la oración contiene alguna palabra clave
contiene_palabra_clave([]) :- fail.
contiene_palabra_clave([Palabra | Resto]) :-
    palabra_clave(Palabra) ;
    contiene_palabra_clave(Resto).