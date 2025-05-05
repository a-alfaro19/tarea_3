% Aeropuertos
aeropuerto(sjo, 'San José, Costa Rica').
aeropuerto(pty, 'Ciudad de Panamá, Panamá').
aeropuerto(jfk, 'New York, Estados Unidos').
aeropuerto(phx, 'Phoenix, Arizona').
aeropuerto(lax, 'Los Ángeles, California').

% Vuelos
% vuelo(Codigo, Origen, Destino, Aerolinea, Clase, DuracionHoras, CostoUSD)
vuelo(cm404, sjo, pty, 'Copa Airlines', negocios, 1, 320).
vuelo(ua105, pty, phx, 'United Airlines', economica, 6, 580).
vuelo(aa300, sjo, jfk, 'American Airlines', economica, 5, 400).
vuelo(dl200, jfk, lax, 'Delta Airlines', negocios, 6, 900).
vuelo(ua777, lax, phx, 'United Airlines', economica, 1, 200).
vuelo(cm500, pty, lax, 'Copa Airlines', economica, 5, 450).
vuelo(ua900, sjo, phx, 'United Airlines', negocios, 7, 1000).
vuelo(aa111, phx, jfk, 'American Airlines', economica, 5, 380).
vuelo(dl300, jfk, pty, 'Delta Airlines', negocios, 6, 850).
vuelo(la250, sjo, lax, 'LATAM Airlines', economica, 6, 420).
