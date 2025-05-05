<datos> ::= <aeropuertos> <vuelos>

<aeropuertos> ::= <aeropuerto> | <aeropuerto> <aeropuertos>

<aeropuerto> ::= "aeropuerto(" <codigo_aeropuerto> "," <nombre_aeropuerto> ")"

<codigo_aeropuerto> ::= "sjo" | "pty" | "jfk" | "phx" | "lax"

<nombre_aeropuerto> ::= "'San José, Costa Rica'"
                     | "'Ciudad de Panamá, Panamá'"
                     | "'New York, Estados Unidos'"
                     | "'Phoenix, Arizona'"
                     | "'Los Ángeles, California'"

<vuelos> ::= <vuelo> | <vuelo> <vuelos>

<vuelo> ::= "vuelo(" <codigo> "," <origen> "," <destino> "," <aerolinea> "," <clase> "," <duracion> "," <precio> ")"

<codigo> ::= "cm101" | "cm102" | "ua103" | "aa104" | "dl105" | "la106" | "ua107" | "cm108" | "aa109" | "dl110"
           | "cm201" | "cm202" | "ua203" | "aa204" | "dl205" | "la206" | "ua207" | "cm208" | "aa209" | "dl210"
           | "cm301" | "cm302" | "ua303" | "aa304" | "dl305" | "la306" | "ua307" | "cm308" | "aa309" | "dl310"
           | "cm401" | "cm402" | "ua403" | "aa404" | "dl405" | "la406" | "ua407" | "cm408" | "aa409" | "dl410"
           | "cm501" | "cm502" | "ua503" | "aa504" | "dl505" | "la506" | "ua507" | "cm508" | "aa509" | "dl510"

<origen> ::= "sjo" | "pty" | "jfk" | "phx" | "lax"

<destino> ::= "sjo" | "pty" | "jfk" | "phx" | "lax"

<aerolinea> ::= "'Copa Airlines'" | "'United Airlines'" | "'American Airlines'" | "'Delta Airlines'" | "'LATAM Airlines'"

<clase> ::= "economica" | "negocios"

<duracion> ::= "1" | "5" | "6" | "7"

<precio> ::= "200" | "210" | "220" | "240" | "250" | "300" | "310" | "400" | "410" | "420"
           | "430" | "500" | "510" | "520" | "530" | "540" | "550" | "560" | "580" | "590"
           | "600" | "610" | "620" | "640" | "650" | "660" | "670" | "680" | "690" | "700"
           | "710" | "720" | "750"
