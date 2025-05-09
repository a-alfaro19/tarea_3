%Definición de hechos
% Aeropuertos
aeropuerto(sjo, 'San Jose, Costa Rica').
aeropuerto(pty, 'Ciudad de Panama, Panama').
aeropuerto(jfk, 'New York, Estados Unidos').
aeropuerto(phx, 'Phoenix, Arizona').
aeropuerto(lax, 'Los Ángeles, California').

% Vuelos desde SJO
vuelo(cm001, sjo, pty, copa_airlines, economica, 1, 120).
vuelo(cm002, sjo, jfk, copa_airlines, negocios, 5, 420).
vuelo(cm003, sjo, phx, copa_airlines, economica, 6, 480).
vuelo(cm004, sjo, lax, copa_airlines, economica, 7, 520).
vuelo(cm005, sjo, jfk, copa_airlines, negocios, 5, 410).
vuelo(cm006, sjo, pty, copa_airlines, economica, 1, 130).
vuelo(cm007, sjo, phx, copa_airlines, negocios, 5, 500).
vuelo(cm008, sjo, lax, copa_airlines, economica, 7, 510).
vuelo(cm009, sjo, pty, copa_airlines, economica, 1, 140).
vuelo(cm010, sjo, jfk, copa_airlines, economica, 5, 390).

% Vuelos desde PTY
vuelo(av011, pty, sjo, avianca, economica, 1, 150).
vuelo(av012, pty, jfk, avianca, negocios, 6, 600).
vuelo(av013, pty, phx, avianca, economica, 6, 450).
vuelo(av014, pty, lax, avianca, economica, 7, 530).
vuelo(av015, pty, sjo, avianca, negocios, 1, 160).
vuelo(av016, pty, jfk, avianca, economica, 6, 480).
vuelo(av017, pty, phx, avianca, negocios, 6, 520).
vuelo(av018, pty, lax, avianca, economica, 7, 500).
vuelo(av019, pty, sjo, avianca, economica, 1, 135).
vuelo(av020, pty, jfk, avianca, economica, 6, 460).

% Vuelos desde JFK
vuelo(aa021, jfk, sjo, american_airlines, economica, 5, 400).
vuelo(aa022, jfk, pty, american_airlines, negocios, 6, 650).
vuelo(aa023, jfk, phx, american_airlines, economica, 5, 430).
vuelo(aa024, jfk, lax, american_airlines, economica, 6, 450).
vuelo(aa025, jfk, sjo, american_airlines, negocios, 5, 420).
vuelo(aa026, jfk, pty, american_airlines, economica, 6, 600).
vuelo(aa027, jfk, phx, american_airlines, negocios, 5, 460).
vuelo(aa028, jfk, lax, american_airlines, economica, 6, 470).
vuelo(aa029, jfk, sjo, american_airlines, economica, 5, 395).
vuelo(aa030, jfk, pty, american_airlines, economica, 6, 590).

% Vuelos desde PHX
vuelo(ua031, phx, sjo, united_airlines, economica, 6, 480).
vuelo(ua032, phx, pty, united_airlines, negocios, 6, 550).
vuelo(ua033, phx, jfk, united_airlines, economica, 5, 420).
vuelo(ua034, phx, lax, united_airlines, economica, 1, 180).
vuelo(ua035, phx, sjo, united_airlines, negocios, 6, 500).
vuelo(ua036, phx, pty, united_airlines, economica, 6, 490).
vuelo(ua037, phx, jfk, united_airlines, negocios, 5, 440).
vuelo(ua038, phx, lax, united_airlines, economica, 1, 170).
vuelo(ua039, phx, sjo, united_airlines, economica, 6, 470).
vuelo(ua040, phx, pty, united_airlines, economica, 6, 530).

% Vuelos desde LAX
vuelo(dl041, lax, sjo, delta_airlines, economica, 7, 520).
vuelo(dl042, lax, pty, delta_airlines, negocios, 7, 640).
vuelo(dl043, lax, jfk, delta_airlines, economica, 6, 460).
vuelo(dl044, lax, phx, delta_airlines, economica, 1, 190).
vuelo(dl045, lax, sjo, delta_airlines, negocios, 7, 580).
vuelo(dl046, lax, pty, delta_airlines, economica, 7, 600).
vuelo(dl047, lax, jfk, delta_airlines, negocios, 6, 490).
vuelo(dl048, lax, phx, delta_airlines, economica, 1, 180).
vuelo(dl049, lax, sjo, delta_airlines, economica, 7, 510).
vuelo(dl050, lax, pty, delta_airlines, economica, 7, 620).

% Definir arco como un alias de vuelo
arco(Codigo, Origen, Destino, Aerolinea, Clase, Tiempo, Costo) :-
    vuelo(Codigo, Origen, Destino, Aerolinea, Clase, Tiempo, Costo).
