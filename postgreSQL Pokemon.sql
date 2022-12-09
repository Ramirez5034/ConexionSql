create database pokemon3;
CREATE TABLE Anime
(
idAnime Serial primary key,
Fechainicio timestamp NOT NULL,
Nombre VARCHAR (50) NOT NULL,
FechaFinalización Timestamp NOT NULL,
idGeneracion INT NOT NULL,
idEstudio INT NOT NULL,
idGuion INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Aplicacion
(
idAplicacion Serial primary key,
Tamaño INT NOT NULL,
Nombre VARCHAR (50) NOT NULL,
Descripción VARCHAR (50) NOT NULL,
idGeneracion INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Artista
(
idArtista Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Ciudad VARCHAR (50) NOT NULL,
Calle VARCHAR (50) NOT NULL,
Numero INT NOT NULL,
CP VARCHAR (5) NOT NULL,
CURP VARCHAR (50) NOT NULL,
idGeneración INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE BattlePass
(
idBattlePass Serial primary key,
Precio INT NOT NULL,
Nombre VARCHAR (50) NOT NULL,
Tematica VARCHAR (50) NOT NULL,
idTemporada INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Carta
(
idCarta Serial primary key,
Codigo INT NOT NULL,
FechaCreacion timestamp NOT NULL,
Rareza VARCHAR (50) NOT NULL,
idExpansion INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Colaboracion
(
idColaboracion Serial primary key,
Numero INT NOT NULL,
Fecha timestamp NOT NULL,
Tipo VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Compra
(
idCompra Serial primary key,
Codigo INT NOT NULL,
Fecha timestamp NOT NULL,
MetodoPago VARCHAR (50) NOT NULL,
idJugador INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Contenidodescarga
(
idContenidodescarga Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Precio INT NOT NULL,
Fecha timestamp NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Consola
(
idConsola Serial primary key,
Numero INT NOT NULL,
Precio INT NOT NULL,
Diseño VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Contro
(
idContro Serial primary key,
Numero INT NOT NULL,
Precio INT NOT NULL,
Diseño VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Desarrollador
(
idDesarrollador Serial primary key,
Telefono INT NOT NULL,
Nombre VARCHAR (50) NOT NULL,
RFC VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Distribución
(
idDistribución Serial primary key,
Lugares VARCHAR (50) NOT NULL,
Pedidos INT NOT NULL,
Transporte VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Doblaje
(
idDoblaje Serial primary key,
Zona VARCHAR (50) NOT NULL,
Director VARCHAR (50) NOT NULL,
Lenguaje VARCHAR (50) NOT NULL,
idAnime INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Entrenador
(
idEntrenador Serial primary key,
CantidadPokemon INT NOT NULL,
Nombre VARCHAR (50) NOT NULL,
Tipo VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Episodio
(
idEpisodio Serial primary key,
Numero INT NOT NULL,
Nombre VARCHAR (50) NOT NULL,
Sipnosis VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Especial
(
idEspecial Serial primary key,
Numero INT NOT NULL,
Nombre VARCHAR (50) NOT NULL,
Sipnosis VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Estudio
(
idEstudio Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Ciudad VARCHAR (50) NOT NULL,
Calle VARCHAR (50) NOT NULL,
Numero INT NOT NULL,
CP VARCHAR(5) NOT NULL,
Telefono VARCHAR (10) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Evento
(
idEvento Serial primary key,
Numero INT NOT NULL,
Nombre VARCHAR (50) NOT NULL,
Fecha Timestamp NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Evolucion
(
idEvolucion Serial primary key,
Numero INT NOT NULL,
Descripcion VARCHAR (50) NOT NULL,
PokemonUso int NOT NULL,
idGeneracion INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Exclusivo
(
idExclusivo Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Descripcion VARCHAR (50) NOT NULL,
FechaDisponibilidad timestamp NOT NULL,
idVideojuego INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Expansion
(
idExpansion Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Numero INT NOT NULL,
FechaSalida timestamp NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE FanGame
(
idFanGame Serial primary key,
Numero INT NOT NULL,
Creador VARCHAR (50) NOT NULL,
Nombre VARCHAR (50) NOT NULL,
idGeneracion INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Generacion
(
idGeneracion Serial primary key,
Descripcion VARCHAR (50) NOT NULL,
Numero INT NOT NULL,
FechaSalida timestamp NOT NULL,
idPokedex INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Guion
(
idGuion Serial primary key,
Numero INT NOT NULL,
Nombre VARCHAR (50) NOT NULL,
Descripcion VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Hackrom
(
idHackrom Serial primary key,
Plataforma VARCHAR (50) NOT NULL,
Creador VARCHAR (50) NOT NULL,
Nombre VARCHAR (50) NOT NULL,
idVideojuego INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Imprenta
(
idimprenta Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Ciudad VARCHAR (50) NOT NULL,
Calle VARCHAR (50) NOT NULL,
Numero INT NOT NULL,
CP INT NOT NULL,
Telefono CHAR (10) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Jugador
(
idJugador Serial primary key,
Usuario VARCHAR (50) NOT NULL,
Contraseña VARCHAR (50) NOT NULL,
Correo VARCHAR (50) NOT NULL,
idMembresia INT NOT NULL,
idEnlinea INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Manga
(
idManga Serial primary key,
Nombre VARCHAR (50) NOT NULL,
FechaSalida Timestamp NOT NULL,
Numero int NOT NULL,
idGeneracion INT NOT NULL,
idGuion INT NOT NULL, 
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Mecanica
(
idMecanica Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Descripcion VARCHAR (50) NOT NULL,
Activacion VARCHAR (50) NOT NULL,
idGeneracion INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Membresia
(
idMembresia Serial primary key,
Precio INT NOT NULL,
FechaSalida timestamp NOT NULL,
Numero int NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Mercancia
(
idMercancia Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Numero INT NOT NULL,
Precio INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Movimiento
(
idMovimiento Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Poder INT NOT NULL,
Descripcion VARCHAR (50) NOT NULL,
idGeneracion INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Objeto 
(
idObjeto Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Tipo VARCHAR (50) NOT NULL,
Descripcion VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Enlinea
(
idEnlinea Serial primary key,
Numero INT NOT NULL,
Host INT NOT NULL,
Personas INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Pelicula
(
idPelicula Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Sipnosis VARCHAR (50) NOT NULL,
Numero int NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Plataforma
(
idPlataforma Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Capacidad VARCHAR (50) NOT NULL,
Numero int NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Pokeball
(
idPokeball Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Precio INT NOT NULL,
Descripcion VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Pokedex
(
idPokedex Serial primary key,
Diseño VARCHAR (50) NOT NULL,
NumeroPokemon INT NOT NULL,
Descripcion VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Pagina
(
idPagina Serial primary key,
Diseño VARCHAR (50) NOT NULL,
FechaCreacion timestamp NOT NULL,
Link VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Skin
(
idSkin Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Numero INT NOT NULL,
Pokemon VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Soundtrack
(
idSoundtrack Serial primary key,
Uso VARCHAR (50) NOT NULL,
Numero INT NOT NULL,
Duración INT NOT NULL,
idVideojuego INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Spinoff
(
idSpinoff Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Numero INT NOT NULL,
Ventas INT NOT NULL,
idGeneracion INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Temporada
(
idTemporada Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Numero INT NOT NULL,
Fechainicio timestamp NOT NULL,
Fechafinal timestamp NOT NULL,
idVideojuego INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Tienda
(
idTienda Serial primary key,
Ubicacion VARCHAR (50) NOT NULL,
Numero INT NOT NULL,
Tipo VARCHAR (50) NOT NULL,
idGeneracion INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Torneo
(
idTorneo Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Participantes INT NOT NULL,
Premio VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Transmisión
(
idTransmisión Serial primary key,
Canal VARCHAR (50) NOT NULL,
Numero INT NOT NULL,
Horario timestamp NOT NULL,
idAnime INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Versión
(
idVersión Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Fechasalida timestamp NOT NULL,
Fechaactualizacion timestamp NOT NULL,
idVideojuego INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Vestuario
(
idVestuario Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Numero INT NOT NULL,
Diseño VARCHAR (50) NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Videojuego
(
idVideojuego Serial primary key,
Nombre VARCHAR (50) NOT NULL,
CopiasVendidas INT NOT NULL,
FechaSalida Timestamp NOT NULL,
idGeneracion INT NOT NULL,
idDesarrollador INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE Zona
(
idZona Serial primary key,
Nombre VARCHAR (50) NOT NULL,
Numero INT NOT NULL,
Acceso VARCHAR (50) NOT NULL,
idGeneracion INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE AnimeEpisodio
(
idAnimeEpisodio Serial primary key,
idAnime INT NOT NULL,
idEpisodio INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE AnimeEspecial
(
idAnimeEspecial Serial primary key,
idAnime INT NOT NULL,
idEspecial INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE AnimePelicula
(
idAnimePelicula Serial primary key,
idAnime INT NOT NULL,
idPelicula INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE ConsolaContro
(
idConsolaContro Serial primary key,
idConsola INT NOT NULL,
idContro INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE ConsolaVideojuego
(
idConsolaVideojuego Serial primary key,
idConsola INT NOT NULL,
idVideojuego INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE DistribucionMercancia
(
idDistribucionMercancia Serial primary key,
idDistribución INT NOT NULL,
idMercancia INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE GeneracionEntrenador
(
idGeneracionEntrenador Serial primary key,
idGeneracion INT NOT NULL,
idEntrenador INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE GeneracionMercancia
(
idGeneracionMercancia Serial primary key,
idGeneracion INT NOT NULL,
idMercancia INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE ColaboracionCarta
(
idColaboracionCarta Serial primary key,
idColaboracion INT NOT NULL,
idCarta INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE CartaArtista
(
idCartaArtista Serial primary key,
idArtista INT NOT NULL,
idCarta INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE MangaImprenta
(
idMangaImprenta Serial primary key,
idManga INT NOT NULL,
idImprenta INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE MercanciaPagina
(
idMercanciaPagina Serial primary key,
idMercancia INT NOT NULL,
idPagina INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE ObjetoTienda
(
idObjetoTienda Serial primary key,
idObjeto INT NOT NULL,
idTienda INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE PokeballTienda
(
idPokeballTienda Serial primary key,
idPokeball INT NOT NULL,
idTienda INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE TemporadaSkin
(
idTemporadaSkin Serial primary key,
idTemporada INT NOT NULL,
idSkin INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE TemporadaVestuario
(
idTemporadaVestuario Serial primary key,
idTemporada INT NOT NULL,
idVestuario INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE TorneoVideojuego
(
idTorneoVideojuego Serial primary key,
idTorneo INT NOT NULL,
idVideojuego INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE VideojuegoEvento
(
idVideojuegoEvento Serial primary key,
idVideojuego INT NOT NULL,
idEvento INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE VideojuegoJugador
(
idVideojuegoJugador Serial primary key,
idVideojuego INT NOT NULL,
idJugador INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE VideoJuegoColaboracion
(
idVideojuegoColaboracion Serial primary key,
idVideojuego INT NOT NULL,
idColaboracion INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE VideoJuegoContenidodescarga
(
idVideojuegoContenidodescarga Serial primary key,
idVideojuego INT NOT NULL,
idContenidodescarga INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);
CREATE TABLE PlataformaAplicacion
(
idPlataformaAplicacion Serial primary key,
idPlataforma INT NOT NULL,
idAplicacion INT NOT NULL,
estatus BOOLEAN NOT NULL DEFAULT TRUE
);

--------------------------------INDEX------------------------------
CREATE INDEX IX_Anime ON Anime(idAnime);
CREATE INDEX IX_Aplicacion ON Aplicacion(idAplicacion);
CREATE INDEX IX_Artista ON Artista(idArtista);
CREATE INDEX IX_BattlePass ON BattlePass(idBattlePass);
CREATE INDEX IX_Carta ON Carta(idCarta);
CREATE INDEX IX_Colaboración ON Colaboracion(idColaboracion);
CREATE INDEX IX_Compra ON Compra(idCompra);
CREATE INDEX IX_Consola ON Consola(idConsola);
CREATE INDEX IX_Contenidodescarga ON Contenidodescarga(idContenidodescarga);
CREATE INDEX IX_Contro ON Contro(idContro);
CREATE INDEX IX_Desarrollador ON Desarrollador(idDesarrollador);
CREATE INDEX IX_Distribución ON Distribución(idDistribución);
CREATE INDEX IX_Doblaje ON Doblaje(idDoblaje);
CREATE INDEX IX_Entrenador ON Entrenador(idEntrenador);
CREATE INDEX IX_Episodio ON Episodio(idEpisodio);
CREATE INDEX IX_Especial ON Especial(idEspecial);
CREATE INDEX IX_Estudio ON Estudio(idEstudio);
CREATE INDEX IX_Evento ON Evento(idEvento);
CREATE INDEX IX_Evolucion ON Evolucion(idEvolucion);
CREATE INDEX IX_Exclusivo ON Exclusivo(idExclusivo);
CREATE INDEX IX_Expansion ON Expansion(idExpansion);
CREATE INDEX IX_Fangame ON Fangame(idFangame);
CREATE INDEX IX_Generacion ON Generacion(idGeneracion);
CREATE INDEX IX_Guion ON Guion(idGuion);
CREATE INDEX IX_Hackrom ON Hackrom(idHackrom);
CREATE INDEX IX_Imprenta ON Imprenta(idImprenta);
CREATE INDEX IX_Jugador ON Jugador(idJugador);
CREATE INDEX IX_Manga ON Manga(idManga);
CREATE INDEX IX_Mecanica ON Mecanica(idMecanica);
CREATE INDEX IX_Membresia ON Membresia(idMembresia);
CREATE INDEX IX_Mercancia ON Mercancia(idMercancia);
CREATE INDEX IX_Movimiento ON Movimiento(idMovimiento);
CREATE INDEX IX_Objeto ON Objeto(idObjeto);
CREATE INDEX IX_Enlinea ON Enlinea(idEnlinea);
CREATE INDEX IX_Pelicula ON Pelicula(idPelicula);
CREATE INDEX IX_Plataforma ON Plataforma(idPlataforma);
CREATE INDEX IX_Pokeball ON Pokeball(idPokeball);
CREATE INDEX IX_Pokedex ON Pokedex(idPokedex);
CREATE INDEX IX_Skin ON Skin(idSkin);
CREATE INDEX IX_Soundtrack ON Soundtrack(idSoundtrack);
CREATE INDEX IX_Spinoff ON Spinoff(idSpinoff);
CREATE INDEX IX_Temporada ON Temporada(idTemporada);
CREATE INDEX IX_Tienda ON Tienda(idTienda);
CREATE INDEX IX_Torneo ON Torneo(idTorneo);
CREATE INDEX IX_Transmisión ON Transmisión(idTransmisión);
CREATE INDEX IX_Versión ON Versión(idVersión);
CREATE INDEX IX_Vestuario ON Vestuario(idVestuario);
CREATE INDEX IX_Videojuego ON Videojuego(idVideojuego);
CREATE INDEX IX_Zona ON Zona(idZona);
CREATE INDEX IX_AnimeEpisodio ON AnimeEpisodio(idAnimeEpisodio);
CREATE INDEX IX_AnimeEspecial ON AnimeEspecial(idAnimeEspecial);
CREATE INDEX IX_AnimePelicula ON AnimePelicula(idAnimePelicula);
CREATE INDEX IX_CartaArtista ON CartaArtista(idCartaArtista);
CREATE INDEX IX_ColaboracionCarta ON ColaboracionCarta(idColaboracionCarta);
CREATE INDEX IX_ConsolaContro ON ConsolaContro(idConsolaContro);
CREATE INDEX IX_ConsolaVideojuego ON ConsolaVideojuego(idConsolaVideojuego);
CREATE INDEX IX_DistribucionMercancia ON DistribucionMercancia(idDistribucionMercancia);
CREATE INDEX IX_GeneracionEntrenador ON GeneracionEntrenador(idGeneracionEntrenador);
CREATE INDEX IX_GeneracionMercancia ON GeneracionMercancia(idGeneracionMercancia);
CREATE INDEX IX_MangaImprenta ON MangaImprenta(idMangaImprenta);
CREATE INDEX IX_MercanciaPagina ON MercanciaPagina(idMercanciaPagina);
CREATE INDEX IX_Objetotienda ON Objetotienda(idObjetotienda);
CREATE INDEX IX_PokeballTienda ON PokeballTienda(idPokeballTienda);
CREATE INDEX IX_TemporadaSkin ON TemporadaSkin(idTemporadaSkin);
CREATE INDEX IX_TemporadaVestuario ON TemporadaVestuario(idTemporadaVestuario);
CREATE INDEX IX_TorneoVideojuego ON TorneoVideojuego(idTorneoVideojuego);
CREATE INDEX IX_VideojuegoColaboracion ON VideojuegoColaboracion(idVideojuegoColaboracion);
CREATE INDEX IX_VideojuegoContenidoDescarga ON VideojuegoContenidoDescarga(idVideojuegoContenidoDescarga);
CREATE INDEX IX_VIdeojuegoEvento ON VIdeojuegoEvento(idVIdeojuegoEvento);
CREATE INDEX IX_VideojuegoJugador ON VideojuegoJugador(idVideojuegoJugador);
CREATE INDEX IX_PlataformaAplicacion ON PlataformaAplicacion(idPlataformaAplicacion);


ALTER TABLE Anime ADD CONSTRAINT FK_AnimeGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion);

ALTER TABLE Anime ADD CONSTRAINT FK_AnimeEstudio
FOREIGN  KEY(idEstudio) REFERENCES Estudio(idEstudio);

ALTER TABLE Anime ADD CONSTRAINT FK_AnimeGuion
FOREIGN  KEY(idGuion) REFERENCES Guion(idGuion);

ALTER TABLE Aplicacion ADD CONSTRAINT FK_AplicacionGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion);

ALTER TABLE BattlePass ADD CONSTRAINT FK_BattlePassTemporada
FOREIGN  KEY(idTemporada) REFERENCES Temporada(idTemporada);

ALTER TABLE Carta ADD CONSTRAINT FK_CartaExpansion
FOREIGN  KEY(idExpansion) REFERENCES Expansion(idExpansion);

ALTER TABLE Compra ADD CONSTRAINT FK_CompraJugador
FOREIGN  KEY(idJugador) REFERENCES Jugador(idJugador);

ALTER TABLE Doblaje ADD CONSTRAINT FK_DoblajeAnime
FOREIGN  KEY(idAnime) REFERENCES Anime(idAnime);

ALTER TABLE Evolucion ADD CONSTRAINT FK_EvolucionGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion);

ALTER TABLE Exclusivo ADD CONSTRAINT FK_ExclusivoVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego);

ALTER TABLE Fangame ADD CONSTRAINT FK_FangameGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion);

ALTER TABLE Generacion ADD CONSTRAINT FK_GeneracionPokedex
FOREIGN  KEY(idPokedex) REFERENCES Pokedex(idPokedex);


ALTER TABLE Manga ADD CONSTRAINT FK_MangaGuion
FOREIGN  KEY(idGuion) REFERENCES Guion(idGuion);

ALTER TABLE Hackrom ADD CONSTRAINT FK_HackromVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego);

ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorMembresia
FOREIGN  KEY(idMembresia) REFERENCES Membresia(idMembresia);

ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorEnlinea
FOREIGN  KEY(idEnlinea) REFERENCES Enlinea(idEnlinea);

ALTER TABLE Manga ADD CONSTRAINT FK_MangaGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion);

ALTER TABLE Mecanica ADD CONSTRAINT FK_MecanicaGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion);

ALTER TABLE Movimiento ADD CONSTRAINT FK_MovimientoGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion);

ALTER TABLE Soundtrack ADD CONSTRAINT FK_SoundtrackVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego);

ALTER TABLE Spinoff ADD CONSTRAINT FK_SpinoffGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion);

ALTER TABLE Temporada ADD CONSTRAINT FK_TemporadaVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego);

ALTER TABLE Tienda ADD CONSTRAINT FK_TiendaGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion);

ALTER TABLE Transmisión ADD CONSTRAINT FK_TransmisiónAnime
FOREIGN  KEY(idAnime) REFERENCES Anime(idAnime);

ALTER TABLE Versión ADD CONSTRAINT FK_VersiónVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego);

ALTER TABLE Videojuego ADD CONSTRAINT FK_VideojuegoGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion);

ALTER TABLE Videojuego ADD CONSTRAINT FK_VideojuegoDesarrollador
FOREIGN  KEY(idDesarrollador) REFERENCES Desarrollador(idDesarrollador);

ALTER TABLE Zona ADD CONSTRAINT FK_ZonaGeneracion
FOREIGN KEY(idGeneracion) REFERENCES Generacion(idGeneracion);

ALTER TABLE AnimeEpisodio ADD CONSTRAINT FK_AnimeEpisodioAnime
FOREIGN  KEY(idAnime) REFERENCES Anime(idAnime);

ALTER TABLE AnimeEpisodio ADD CONSTRAINT FK_AnimeEpisodioEpisodio
FOREIGN  KEY(idEpisodio) REFERENCES Episodio(idEpisodio);

ALTER TABLE AnimeEspecial ADD CONSTRAINT FK_AnimeEspecialEspecial
FOREIGN  KEY(idEspecial) REFERENCES Especial(idEspecial);

ALTER TABLE AnimeEspecial ADD CONSTRAINT FK_AnimeEspecialAnime
FOREIGN  KEY(idAnime) REFERENCES Anime(idAnime);

ALTER TABLE AnimePelicula ADD CONSTRAINT FK_AnimePeliculaAnime
FOREIGN  KEY(idAnime) REFERENCES Anime(idAnime);

ALTER TABLE AnimePelicula ADD CONSTRAINT FK_AnimePeliculaPelicula
FOREIGN  KEY(idPelicula) REFERENCES Pelicula(idPelicula);

ALTER TABLE ConsolaContro ADD CONSTRAINT FK_ConsolaControConsola
FOREIGN  KEY(idConsola) REFERENCES Consola(idConsola);

ALTER TABLE ConsolaContro ADD CONSTRAINT FK_ConsolaControContro
FOREIGN  KEY(idContro) REFERENCES Contro(idContro);

ALTER TABLE ConsolaVideojuego ADD CONSTRAINT FK_ConsolaVideojuegoConsola
FOREIGN  KEY(idConsola) REFERENCES Consola(idConsola);

ALTER TABLE ConsolaVideojuego ADD CONSTRAINT FK_ConsolaVideojuegoVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego);

ALTER TABLE DistribucionMercancia ADD CONSTRAINT FK_DistribucionMercanciaDistribucion
FOREIGN  KEY(idDistribución) REFERENCES Distribución(idDistribución);

ALTER TABLE DistribucionMercancia ADD CONSTRAINT FK_DistribucionMercanciaMercancia
FOREIGN  KEY(idMercancia) REFERENCES Mercancia(idMercancia);

ALTER TABLE GeneracionEntrenador ADD CONSTRAINT FK_GeneracionEntrenadorGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion);

ALTER TABLE GeneracionEntrenador ADD CONSTRAINT FK_GeneracionEntrenadorEntrenador 
FOREIGN  KEY(idEntrenador) REFERENCES Entrenador (idEntrenador);

ALTER TABLE GeneracionMercancia ADD CONSTRAINT FK_GeneracionMercanciaMercancia 
FOREIGN  KEY(idMercancia) REFERENCES Mercancia(idMercancia);

ALTER TABLE GeneracionMercancia ADD CONSTRAINT FK_GeneracionMercanciaGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion);

ALTER TABLE ColaboracionCarta ADD CONSTRAINT FK_ColaboracionCartaColaboracion
FOREIGN  KEY(idColaboracion) REFERENCES Colaboracion(idColaboracion);

ALTER TABLE ColaboracionCarta ADD CONSTRAINT FK_ColaboracionCartaCarta
FOREIGN  KEY(idCarta) REFERENCES Carta(idCarta);

ALTER TABLE CartaArtista ADD CONSTRAINT FK_CartaArtistaCarta
FOREIGN  KEY(idCarta) REFERENCES Carta(idCarta);

ALTER TABLE CartaArtista ADD CONSTRAINT FK_CartaArtistaArtista
FOREIGN  KEY(idArtista) REFERENCES Artista(idArtista);

ALTER TABLE MangaImprenta ADD CONSTRAINT FK_MangaImprentaManga
FOREIGN  KEY(idManga) REFERENCES Manga(idManga);

ALTER TABLE MangaImprenta ADD CONSTRAINT FK_MangaImprentaImprenta
FOREIGN  KEY(idImprenta) REFERENCES Imprenta(idImprenta);

ALTER TABLE MercanciaPagina ADD CONSTRAINT FK_NMercanciaPaginaMercancia
FOREIGN  KEY(idMercancia) REFERENCES Mercancia(idMercancia);

ALTER TABLE MercanciaPagina ADD CONSTRAINT FK_NMercanciaPaginaPagina
FOREIGN  KEY(idPagina) REFERENCES Pagina(idPagina);

ALTER TABLE ObjetoTienda ADD CONSTRAINT FK_ObjetoTiendaObjeto
FOREIGN  KEY(idObjeto) REFERENCES Objeto(idObjeto);

ALTER TABLE ObjetoTienda ADD CONSTRAINT FK_ObjetoTiendaTienda
FOREIGN  KEY(idTienda) REFERENCES Tienda(idTienda);

ALTER TABLE PokeballTienda ADD CONSTRAINT FK_PokeballTiendaTienda
FOREIGN  KEY(idTienda) REFERENCES Tienda(idTienda);

ALTER TABLE PokeballTienda ADD CONSTRAINT FK_PokeballTiendaPokeball
FOREIGN  KEY(idPokeball) REFERENCES Pokeball(idPokeball);

ALTER TABLE TemporadaSkin ADD CONSTRAINT FK_TemporadaSkinTemporada
FOREIGN  KEY(idTemporada) REFERENCES Temporada(idTemporada);

ALTER TABLE TemporadaSkin ADD CONSTRAINT FK_TemporadaSkinSkin
FOREIGN  KEY(idSkin) REFERENCES Skin(idSkin);

ALTER TABLE TemporadaVestuario ADD CONSTRAINT FK_TemporadaVestuarioTemporada
FOREIGN  KEY(idTemporada) REFERENCES Temporada(idTemporada);

ALTER TABLE TemporadaVestuario ADD CONSTRAINT FK_TemporadaVestuarioVestuario
FOREIGN  KEY(idVestuario) REFERENCES Vestuario(idVestuario);

ALTER TABLE TorneoVideojuego ADD CONSTRAINT FK_TorneoVideojuegoTorneo
FOREIGN  KEY(idTorneo) REFERENCES Torneo(idTorneo);

ALTER TABLE TorneoVideojuego ADD CONSTRAINT FK_TorneoVideojuegoVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego);

ALTER TABLE VideojuegoEvento ADD CONSTRAINT FK_VideojuegoEvento
FOREIGN  KEY(idEvento) REFERENCES Evento(idEvento);

ALTER TABLE VideojuegoEvento ADD CONSTRAINT FK_VideojuegoEventoVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego);

ALTER TABLE VideojuegoJugador ADD CONSTRAINT FK_VideojuegoJugador
FOREIGN  KEY(idJugador) REFERENCES Jugador(idJugador);

ALTER TABLE VideojuegoJugador ADD CONSTRAINT FK_VideojuegoJugadorVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego);

ALTER TABLE VideojuegoColaboracion ADD CONSTRAINT FK_VideojuegoColaboracionVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego);

ALTER TABLE VideojuegoColaboracion ADD CONSTRAINT FK_VideojuegoColaboracionColaboracion
FOREIGN  KEY(idColaboracion) REFERENCES Colaboracion(idColaboracion);

ALTER TABLE VideojuegoContenidodescarga ADD CONSTRAINT FK_VideojuegoContenidodescargaVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego);

ALTER TABLE VideojuegoContenidodescarga ADD CONSTRAINT FK_VideojuegoContenidodescargaContenidodescarga
FOREIGN  KEY(idContenidodescarga) REFERENCES Contenidodescarga(idContenidodescarga);

ALTER TABLE PlataformaAplicacion ADD CONSTRAINT FK_PlataformaAplicacionPlataforma
FOREIGN  KEY(idPlataforma) REFERENCES Plataforma(idPlataforma);

ALTER TABLE PlataformaAplicacion ADD CONSTRAINT FK_PlataformaAplicacionAplicacion
FOREIGN  KEY(idAplicacion) REFERENCES Aplicacion(idAplicacion);

INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(1, 'Votacion', '03/12/2022');

INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(2, 'EasterEgg', '01/12/2022');

INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(3, 'Votacion', '05/12/2022');

INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(4, 'Canción', '05/12/2022');

INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(5, 'Votacion', '03/12/2022');

INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(6, 'Diseño', '10/12/2021');

INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(7, 'Marca', '01/12/2022');

INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(8, 'Encuesta', '02/12/2022');

INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(9, 'Aparición', '09/12/2022');

INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(10, 'Juego', '03/12/2022');

UPDATE Colaboracion SET numero = '1' WHERE idColaboracion = 2;
DELETE FROM Colaboracion WHERE idColaboracion = 1;
SELECT *FROM Colaboracion;
INSERT INTO	Contenidodescarga(nombre, precio, fecha) VALUES('Nieves de corona', 2000, '03/11/2022');

INSERT INTO	Contenidodescarga(nombre, precio, fecha) VALUES('Pokemon nuevo', 2000, '04/11/2022');

INSERT INTO	Contenidodescarga(nombre, precio, fecha) VALUES('Competitivo', 2000, '05/11/2022');

INSERT INTO	Contenidodescarga(nombre, precio, fecha) VALUES('Apoyo de captura', 2000, '03/11/2022');

INSERT INTO	Contenidodescarga(Nombre, Precio, Fecha) VALUES('Arceus DLC', 2000, '06/11/2022');

INSERT INTO	Contenidodescarga(Nombre, Precio, Fecha) VALUES('Isla Armadura', 10000, '03/11/2022');

INSERT INTO	Contenidodescarga(Nombre, Precio, Fecha) VALUES('UltraEntes', 21000, '10/11/2022');

INSERT INTO	Contenidodescarga(Nombre, Precio, Fecha) VALUES('Suicune y virizion paradox', 32000, '03/11/2022');

INSERT INTO	Contenidodescarga(Nombre, Precio, Fecha) VALUES('Pokeballs', 24000, '07/11/2022');

INSERT INTO	Contenidodescarga(Nombre, Precio, Fecha) VALUES('Historia', 2000, '03/11/2022');

UPDATE Contenidodescarga SET Nombre = 'prueba' WHERE idContenidodescarga = 2;
DELETE FROM Contenidodescarga WHERE idContenidodescarga = 1;
select *from Contenidodescarga;
INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(1, 2000, 'Escarlata');

INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(2, 2000, 'Purpura');

INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(3, 3000, 'Oled');

INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(4, 6000, 'Ruby');

INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(5, 4000, 'RubyOmega');

INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(6, 7000, 'Zafiro');

INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(7, 6000, 'ZafiroAlfa');

INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(8, 7000, 'Oro');

INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(9, 3000, 'Plata');

INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(10, 2000, 'Escudo');

UPDATE Consola SET Numero = '1' WHERE idConsola = 2;
DELETE FROM Consola WHERE idConsola = 1;
SELECT *FROM Consola;
INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(1, 200, 'Escarlata');

INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(2, 300, 'Evee');

INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(3, 500, 'Scorbunny');

INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(4, 400, 'Ruby');

INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(5, 200, 'Zafiro');

INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(6, 200, 'Escarlata');

INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(7, 200, 'Purpura');

INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(8, 200, 'Oro');

INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(9, 200, 'Gamepad azul');

INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(10, 200, 'Esmeralda');

UPDATE Contro SET Numero = '1' WHERE idContro = 2;
DELETE FROM Contro WHERE idContro = 1;
Select *From Contro;
INSERT INTO Desarrollador(Telefono, Nombre, RFC) VALUES(8662, 'Julian', 'VECJ880326 XXX');

INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('866', 'Marcos', 'VECJ880326 XXX');

INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('862', 'Tencent', 'VECJ880326 XXX');

INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('355', 'Gamefreak', 'VECJ880326 XXX');

INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('222', 'Pablo', 'VECJ880326 XXX');

INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('523', 'Megan', 'VECJ880326 XXX');

INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('446', 'Shiro', 'VECJ880326 XXX');

INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('392', 'Lina', 'VECJ880326 XXX');

INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('453', 'Fani', 'VECJ880326 XXX');

INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('824', 'Axel', 'VECJ880326 XXX');

UPDATE Desarrollador SET Telefono = '678' WHERE idDesarrollador = 2;
DELETE FROM Desarrollador WHERE idDesarrollador = 1;
select *from Desarrollador;
INSERT INTO	Distribución(Pedidos, Lugares, Transporte) VALUES(30, 'America', 'Barco');

INSERT INTO	Distribución(Pedidos, Lugares, Transporte) VALUES(540, 'Asia', 'Camión');

INSERT INTO	Distribución(Pedidos, Lugares, Transporte) VALUES(343, 'México', 'Avión');

INSERT INTO	Distribución(Pedidos, Lugares, Transporte) VALUES(30, 'CDMX', 'Camión');

INSERT INTO	Distribución(Pedidos, Lugares, Transporte) VALUES(640, 'Argentina', 'Barco');

INSERT INTO	Distribución(Pedidos, Lugares, Transporte) VALUES(322, 'India', 'Camión');

INSERT INTO	Distribución(Pedidos, Lugares, Transporte) VALUES(30, 'Japón', 'Camión');

INSERT INTO	Distribución(Pedidos, Lugares, Transporte) VALUES(30, 'E.U', 'Barco');

INSERT INTO	Distribución(Pedidos, Lugares, Transporte) VALUES(30, 'Santa cecilia', 'Barco');

INSERT INTO	Distribución(Pedidos, Lugares, Transporte) VALUES(30, 'Hawai', 'Barco');

UPDATE Distribución SET Lugares = 'prueba' WHERE idDistribución = 2;
DELETE FROM Distribución WHERE idDistribución = 1;
select *from Distribución;
INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Rojo', 6, 'Variado');

INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Azul', 6, 'Variado');

INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Cynthia', 6, 'Variado');

INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Maximo', 6, 'Variado');

INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Plubio', 6, 'Variado');

INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Petra', 3, 'Roca');

INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Marcial', 3, 'Lucha');

INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Vito', 2, 'Psiquico');

INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Leti', 2, 'Psiquico');

INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Candela', 5, 'Fuego');

UPDATE Entrenador SET Nombre = 'Prueba' WHERE idEntrenador = 2;
DELETE FROM Entrenador WHERE idEntrenador = 1;
select *from Entrenador;
INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('VsMarcial', 32, 'Lucha contra Marcial');

INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('Liga', 322, 'Llegada a la liga');

INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('Sueños', 321, 'Pelea en los sueños');

INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('VsCandela', 33, 'Lucha contra Candela');

INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('AtaqueMasivo', 36, 'un ataque en ciudad petalia');

INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('VsDante', 43, 'Pelea final contra Dante');

INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('Proyecto Mew', 223, 'En busqueda de mew');

INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('VsPetra', 10, 'Lucha contra Petra');

INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('Groudon', 12, 'Aparece Groudon');

INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('Kyogre', 14, 'Aparece kyogre');

INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('Raqyuaza', 20, 'Aparece rayquaza');

UPDATE Episodio SET Nombre = 'Prueba' WHERE idEpisodio = 2;
DELETE FROM Episodio WHERE idEpisodio = 1;
select *from Episodio;
INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Navidad', 1, 'Pikachu celebra Navidad');

INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Sanvalentín', 2, 'Pikachu se enamora');

INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Megaevolucion', 3, 'Peleas de megaevoluciones');

INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('ProfesorOak', 4, 'Explicación de algunos pokemon');

INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Halloween', 5, 'Celebración de Halloween');

INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Celebi', 6, 'Aparece Celebi');

INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Pikachu y amigos', 7, 'Pikachu convive con sus amigos');

INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Mew', 8, 'Se conoce a mew');

INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Rocket', 9, 'Aventuras del teamrocket');

INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Pasado', 10, 'Pasado de Pikachu');

UPDATE Especial SET Nombre = 'Prueba' WHERE idEspecial = 2;
DELETE FROM Especial WHERE idEspecial = 1;
select *from Especial;

INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(1, 'Pokes de ash', '03/12/2022');

INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(2, 'Zorua Shiny', '10/11/2021');

INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(3, 'Eeve', '02/10/2021');

INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(4, 'Pokemon go fest', '10/08/2015');

INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(5, 'Pokemon go fiesta', '10/08/2015');

INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(6, 'Eternatus', '01/12/2022');

INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(7, 'Diancie', '02/09/2018');

INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(8, 'Volcanion', '09/12/2022');

INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(9, 'Zarude', '10/12/2021');

INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(10, 'Blastoise', '05/08/2021');

UPDATE Evento SET Numero = '1' WHERE idEvento = 2;
DELETE FROM Evento WHERE idEvento = 1;
select *from Evento;
INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio1', 'hiroshima', 'calle3', 1,'8662424323', '25781');

INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio2', 'hiroshima', 'calle2', 2,'8662424323', '25781');

INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio3', 'hiroshima', 'calle1', 3,'8662424323', '25781');

INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio4', 'hiroshima', 'calle4', 4,'8662424323', '25781');

INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio5', 'hiroshima', 'calle5', 5,'8662424323', '25781');

INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio6', 'hiroshima', 'calle6', 6,'8662424323', '25781');

INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio7', 'hiroshima', 'call345', 7,'8662424323', '25781');

INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio8', 'hiroshima', 'calle54', 8,'8662424323', '25781');

INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio9', 'hiroshima', 'calle23', 9,'8662424323', '25781');

INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio10', 'hiroshima', 'calle32', 10,'8662424323', '25781');

UPDATE Estudio SET Nombre = 'prueba' WHERE idEstudio = 2;
DELETE FROM Estudio WHERE idEstudio = 1;
select *from Estudio;
INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Resplandor', 1, '03/12/2022');

INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Rojo', 2, '03/12/2020');

INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Oro', 3, '03/12/2021');

INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Espada', 4, '04/12/2022');

INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Escudo', 5, '02/12/2022');

INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Leyendas', 6, '09/12/2022');

INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Ascenso', 7, '03/12/2018');

INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Poder', 8, '03/12/2012');

INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('sonico', 9, '03/10/2022');

INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Rebelion', 10, '03/02/2022');

UPDATE Expansion SET Nombre = 'prueba' WHERE idExpansion = 2;
DELETE FROM Expansion WHERE idExpansion = 1;
select *from Expansion;
INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 1, 'Pokemon rojo', 'Guion de pokemon rojo y sus aventuras');

INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 2, 'Guion2', 'Guion de pokemon para anime');

INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 3, 'Guion3', 'Guion de pokemon anime');

INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 4, 'Guion4', 'Guion de pokemon Manga');

INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 5, 'Guion5', 'Guion de pokemon manga');

INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 6, 'Guion 6', 'Guion de pokemon Anime');

INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 7, 'Guion 7', 'Guion de pokemon Anime');

INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 8, 'Guion 8', 'Guion de pokemon Anime');

INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 9, 'Guion 9', 'Guion de pokemon Manga');

INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 10, 'Guion 10', 'Guion de pokemon Manga');

UPDATE Guion SET Numero = '1' WHERE idGuion = 2;
DELETE FROM Guion WHERE idGuion = 1;
select *from Guion;
INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta1', 'Mexico', 'calle8', 1,'8662424323', '25789');

INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta2', 'E.u', 'calle23', 2,'8662424353', '25723');

INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta3', 'monclova', 'calle34', 3,'8666455324', '75342');

INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta4', 'Tokyo', 'calle13', 4,'8662234422', '12324');

INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta1','Odaiba', 'calle2', 5,'8665434234', '23564');

INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta1','shibuya', 'callecanto', 6,'8660987532', '23543');

INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta1', 'osaka', 'calle13', 7,'8661928312', '20391');

INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta1', 'nayoma', 'calle54', 8,'8662424323', '25789');

INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta1', 'sapporo', 'calle23', 9,'8662424323', '25342');

INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta1', 'hiroshima', 'calleqw', 10,'8662424323', '25781');

UPDATE Imprenta SET Nombre = 'prueba' WHERE idimprenta = 2;
DELETE FROM Imprenta WHERE idimprenta = 1;
select *from Imprenta;
INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(120, '03/12/2022', 1);

INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(130, '04/12/2022', 2);

INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(120, '12/12/2021', 3);

INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(123, '10/12/2022', 4);

INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(121, '03/12/2022', 5);

INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(112, '03/12/2012', 6);

INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(120, '03/11/2020', 7);

INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(1123, '03/12/2022', 8);

INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(600, '03/12/2022', 9);

INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(131, '03/10/2022', 10);

UPDATE Membresia SET Precio = '21' WHERE idMembresia = 2;
DELETE FROM Membresia WHERE idMembresia = 1;
Select *from Membresia;
INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Peluches', 1);

INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Pokeball control',2);

INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Camisa', 3);

INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Calcetines', 4);

INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Pantalones', 5);

INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'lllaveros', 6);

INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Auto', 7);

INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Juguetes', 8);

INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Accesorios', 9);

INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Teclado', 10);

UPDATE Mercancia SET Precio = '21' WHERE idMercancia = 2;
DELETE FROM Mercancia WHERE idMercancia = 1;
select *from Mercancia;
INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('Poción','Curación', 'Cura 20ps');

INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('SuperPoción','Curación', 'Cura 50ps');

INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('HiperPoción','Curación', 'Cura 200ps');

INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('Restaurar','Curación', 'Cura todo');

INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('AntiParaliz','Curación', 'Cura Paralicis');

INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('Antiquemar','Curación', 'Cura Quemaduras');

INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('Ataque X','Combate', 'Aumenta ataque');

INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('CambiaHabilidad','Combate', 'Cambia de habilidad');

INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('Cura total','Curación', 'Cura todo estado');

INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('repelente','normal', 'Ahuyenta pokemon');

UPDATE Objeto SET Nombre = 'Prueba' WHERE idObjeto = 2;
DELETE FROM Objeto WHERE idObjeto = 1;
select *from Objeto;
INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(1,1213, 10);

INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(2,1213, 1053);

INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(3,1213, 101);

INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(4,1213, 132);

INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(5,1213, 231);

INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(6,1213, 123);

INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(7,1213, 123);

INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(8,1213, 100);

INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(9,1213, 1123);

INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(10,1213, 1012);

UPDATE Enlinea SET Numero = '1' WHERE idEnlinea = 2;
DELETE FROM Enlinea WHERE idEnlinea = 1;
select *from Enlinea;
INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Mewtwo strickes back', 1, 'Mewtwo ataca');

INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Genesect', 2, 'Los genesect invaden la ciudad');

INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Lucario y mew', 3, 'Lucario vuelve del pasado');

INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Hoopa', 4, 'Ash conoce a hoopa');

INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Volcanion', 5, 'Rescate de diancie');

INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Pokemon 2', 6, 'Lugia aparece');

INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Jirachi y su deseo', 7, 'Jirachi cae de un meteoro junto a deoxys');

INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Victini', 8, 'Ash conoce a victini');

INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Zoroark', 9, 'Un pokemon Zoroark es capturado');

INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Darkrai', 10, 'Darkrai advierte de la pelea de los legendarios');

UPDATE Pelicula SET Nombre = 'Prueba' WHERE idPelicula = 2;
DELETE FROM Pelicula WHERE idPelicula = 1;
select *from Pelicula;
INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('Android', 1, '300mhz');

INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('AndroidPie', 2, '300mhz');

INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('AndroidCupcake', 3, '300mhz');

INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('Android10', 4, '300mhz');

INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('PC', 5, '3000mhz');

INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('Ios', 6, '2300mhz');

INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('Ios2', 7, '300mhz');

INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('Xiaomi', 8, '300mhz');

INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('Mac', 9, '3200mhz');

INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('Xiaomi', 10, '300mhz');

UPDATE Plataforma SET Nombre = 'Prueba' WHERE idPlataforma = 2;
DELETE FROM Plataforma WHERE idPlataforma = 1;
select *from Plataforma;
INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Pokeball', 200, 'Pokeball normal');

INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Superball', 300, 'Mejor que la pokeball');

INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Ultraball', 400, 'Mejor que la superball');

INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Masterball', 500, 'Nunca falla');

INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Mallaball', 400, 'Mejor contra bicho y agua');

INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Lunaball', 200, 'Mejor con pokes lunares');

INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Sanaball', 300, 'Cura a los pokemon');

INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Lujoball', 200, 'Aumenta amistad');

INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Aprioball', 200, 'Mejor con pokemon ya capturados');

INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Velozball', 200, 'Funciona mejor en los primeros turnos');

INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Turnoball', 200, 'Mas turnos mejor funciona');

UPDATE Pokeball SET Nombre = 'Prueba' WHERE idPokeball = 2;
DELETE FROM Pokeball WHERE idPokeball = 1;
select *from Pokeball;
INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Pokedex con dos pantallas', 150, 'Solo da datos de los pokemon');

INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Pokedex rectangular', 200, 'Da información de rutas');

INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Gameboy', 330, 'Da información de evoluciones');

INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Ds', 450, 'Da datos generales de los pokemon');

INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Celular', 550, 'Da información casi detallada');

INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Tableta', 650, 'se divide en regiones');

INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Rotomdex', 760, 'Da información de todo');

INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Rotomtelefono', 830, 'Se usa para monturas');

INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Libro', 450, 'Pokedex antigua');

INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Rotomiphone', 950, 'Da arte del pokemon');

UPDATE Pokedex SET Diseño = 'Prueba' WHERE idPokedex = 2;
DELETE FROM Pokedex WHERE idPokedex = 1;
select *from Pokedex;
INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('PokemonViolet', '03/12/2022', 'WWW.pokemon.com');

INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('Wiki', '03/11/2010', 'WWW.Wikidex.com');

INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('PokemonNormal', '03/12/2022', 'WWW.Nintendo.com');

INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('Pokemon de cartas', '03/12/2022', 'WWW.TCG.com');

INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('información y imagenes', '10/10/2022', 'WWW.ClubEntrenadorwa.com');

INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('Pokemon con juegos', '03/10/2008', 'WWW.pokemonjuegos.com');

INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('Pokemon blanco y negro con sus juegos', '03/12/2022', 'WWW.CartoonNetwork.com');

INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('PokemonViolet', '03/12/2022', 'WWW.pokemonTienda.com');

INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('PokemonScarlet', '03/12/2022', 'WWW.pokemonInfo.com');

INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('PokemonZafiro', '03/12/2022', 'WWW.pokemonLive.com');

UPDATE Pagina SET Diseño = 'Prueba' WHERE idPagina = 2;
DELETE FROM Pagina WHERE idPagina = 1;
select *from Pagina;
INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Pirata', 1, 'Cinderace y tsarena');

INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Elegante', 2, 'Absol y buzzwole');

INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Espacial', 3, 'Gengar');

INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Divino', 4, 'Ninetales y Delphox');

INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Castillonieve', 5, 'Gardevoir');

INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Marcial', 6, 'Machamp');

INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Vaquero', 7, 'Zeraora, Greedent y Cramorant');

INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Uniforme', 9, 'Espeon, charizard y Snorlax');

INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Indumentaria', 10, 'Glaceon');

UPDATE Skin SET Nombre = 'Prueba' WHERE idSkin = 2;
DELETE FROM Skin WHERE idSkin = 1;
select *From Skin;
INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2010', 2000, 'Trofeo');

INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2011', 2000, 'Trofeo');

INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2012', 3000, 'Trofeo');

INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2013', 4000, 'Dinero');

INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2015', 20000, 'Consola');

INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Unite', 21000, 'Dinero');

INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2016', 2300, 'Trofeo');

INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2017', 2000, 'Trofeo');

INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2018', 2000, 'Trofeo');

INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2019', 2000, 'Trofeo');

INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2020', 2000, 'Trofeo');

UPDATE Torneo SET Nombre = 'Prueba' WHERE idTorneo = 2;
DELETE FROM Torneo WHERE idTorneo = 1;
select *from Torneo;
INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto elegante', 1, 'Smoquin');

INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto Gengar', 2, 'Morado con capucha');

INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto Delphox', 3, 'Abrigo rojo');

INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto zubat', 4, 'Capucha morada');

INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto Aegislash', 5, 'Traje formal');

INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto Pirata', 6, 'Disfraz de pirata');

INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto Bombero', 7, 'Disfraz de bombero');

INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto Lionel', 8, 'Ropa total de lionel');

INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto AEOS', 9, 'Uniforme morado Aeos');

INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto Blissey', 10, 'ropa rosa');

UPDATE Vestuario SET Nombre = 'Prueba' WHERE idVestuario = 2;
DELETE FROM Vestuario WHERE idVestuario = 1;
select *from Vestuario;
INSERT INTO	Generacion(FechaSalida, Numero, Descripcion,idPokedex) VALUES('03/11/1996', 1, 'La primera generación en kanto', 2);

INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/1999', 2, 'La segunda generación en Johto', 2);

INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2000', 3, 'La Tercera generación en hoenn', 3);

INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2006', 4, 'La Cuarta generación en Sinnoh', 4);

INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2010', 5, 'La quinta generación en Unova', 5);

INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2013', 6, 'La sexta generación en kalos', 6);

INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2016', 7, 'La septima generación en Alola', 7);

INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2019', 8, 'La Octava generación en galar', 8);

INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2021', 9, 'La Novena generación en hisui', 10);

INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2022', 10, 'La Decima generación en Paldea', 9);

UPDATE Generacion SET FechaSalida = '04/11/2022' WHERE idGeneracion = 2;
DELETE FROM Generacion WHERE idGeneracion = 1;
Select *from Generacion;
INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad petalia', 1, 'Normal', 2);

INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad Robusta', 2, 'Normal', 2);

INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad Abolaria', 3, 'Normal', 3);

INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad Algaria', 4, 'Hierbas', 3);

INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad Malvalona', 5, 'Cartas', 4);

INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad Verde', 6, 'Normal', 3);

INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Pueblo esmeralda', 7, 'CentroPokemon', 3);

INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad portual', 8, 'Comercio', 8);

INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad Portual', 9, 'Normal', 7);

INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Calle victoria', 10, 'Normal', 9);

UPDATE Tienda SET Ubicacion = 'Prueba' WHERE idTienda = 2;
DELETE FROM Tienda WHERE idTienda = 1;
select *from Tienda;
INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Liga añil', '03/12/2022', 2, 2, 2);

INSERT INTO Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Liga naranja', '03/12/2022', 4,2, 2);

INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES( '03/12/2022', 'Liga Johto', '03/12/2022', 3, 3, 2);

INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Advanced', '03/12/2022', 3, 4, 2);

INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Hoenn', '03/12/2022', 2, 5, 2);

INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Shinooh', '03/12/2022', 4, 6, 3);

INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Unova', '03/12/2022', 5, 7, 2);

INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Kalos', '03/12/2022', 6, 2 , 2);

INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'XYZ', '03/12/2022', 7, 2, 2);

INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'XY', '03/12/2022', 6, 2, 2);

INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Alola', '03/12/2022', 7, 2, 2);

UPDATE Anime SET Nombre = 'Prueba' WHERE idAnime = 2;
DELETE FROM Anime WHERE idAnime = 1;
select *from Anime;
INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(200, 'Aplicación 1', 'Aplicación para celular', 8);

INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(300, 'Aplicación 2', 'Aplicación para celular', 5);

INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(500, 'Aplicación 3', 'Aplicación para celular', 6);

INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(200, 'Aplicación 4', 'Aplicación para celular', 2);

INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(231, 'Aplicación 5', 'Aplicación para Ios', 2);

INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(120, 'Aplicación 6', 'Aplicación para celular', 3);

INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(200, 'Aplicación 7', 'Aplicación para celular', 4);

INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(200, 'Aplicación 8', 'Aplicación para celular', 2);

INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(320, 'Aplicación 9', 'Aplicación para celular', 2);

INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(1230, 'Aplicación 10', 'Aplicación para celular', 5);

UPDATE Aplicacion SET Nombre = 'Prueba' WHERE idAplicacion = 2;
DELETE FROM Aplicacion WHERE idAplicacion = 1;
select *from Aplicacion;
INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista1', 'hiroshima', 'calle32', 1,'33452', 'RAOP020917HCLMRBA7', 2);

INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista2', 'hiroshima', 'calle12', 2,'25789', 'RDS023917HCLM2BA7', 2);

INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista3', 'Tokyo', 'calle3e3', 3,'23456', 'DSK02337HCLMRBA7', 3);

INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista4', 'hiyasama', 'calle25', 4,'86686', 'SDRT920917HCLMRBA7', 4);

INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista5', 'hiroshima', 'calle32', 5,'98675', 'RAOP020917HCLMRBA7', 5);

INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista6', 'hiroshima', 'calle234', 6,'98765', 'DKAM020917HCLMRBA7', 1);

INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista7', 'Odaiba', 'calle32', 7,'87665', 'LSAE30917HCLMRBA7', 7);

INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista8', 'hiroshima', 'calle322', 8,'90876', 'RAOP020917HCLMRBA7', 8);

INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista9', 'hiroshima', 'calle322', 9,'45678', 'RAOP020917HCLMRBA7', 9);

INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista10', 'hiroshima', 'calle3256', 10,'86754', 'RAOP020917HCLMRBA7', 10);

UPDATE Artista SET Nombre = 'Prueba' WHERE idArtista = 2;
DELETE FROM Artista WHERE idArtista = 1;
Select *from Artista;
INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'PokemonRojo', 1233, 2, 2);

INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'Pokemonazul', 1233, 2, 2);

INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'PokemonOro', 2134, 2, 2);

INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'PokemonPlata', 5424, 2, 2);

INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('04/10/2022', 'PokemonRuby', 8764, 3, 3);

INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('11/02/2022', 'PokemonZafiro', 1233, 3, 3);

INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'PokemonEscudo', 645322, 8, 8);

INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'PokemonEspada', 1233, 8, 8);

INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'PokemonPlatino', 1231, 4, 4);

INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'PokemonBlanco', 7432, 5, 5);

UPDATE Videojuego SET Nombre = 'Prueba' WHERE idVideojuego = 2;
DELETE FROM Objeto WHERE idObjeto = 1;
select *from Videojuego;
INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada1', 1, '11/12/2022' , '11/12/2022', 2);

INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada2', 2, '11/12/2022' , '11/12/2022', 2);

INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada3', 3, '12/10/2022' , '12/12/2022', 3);

INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada4', 4, '11/09/2022' , '11/12/2022', 4);

INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada5', 5, '10/12/2022' , '10/12/2022', 6);

INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada6', 6, '09/12/2022' , '09/12/2022', 2);

INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada7', 7, '09/12/2022' , '09/12/2022', 2);

INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada8', 8, '09/12/2022' , '09/12/2022', 2);

INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada9', 9, '10/12/2022' , '10/12/2022', 2);

INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada10', 10, '10/12/2022' , '10/12/2022', 3);

UPDATE Temporada SET Nombre = 'Prueba' WHERE idTemporada = 2;
DELETE FROM Temporada WHERE idTemporada = 1;
select *from Temporada;
INSERT INTO	Transmisión(Canal, Numero, Horario, idAnime) VALUES('Canal1', 1, '10/12/2022' , 2);

INSERT INTO	Transmisión(Canal, Numero, Horario, idAnime) VALUES('Canal2', 2, '10/12/2022' , 2);

INSERT INTO	Transmisión(Canal, Numero, Horario, idAnime) VALUES('Canal3', 3, '10/12/2022' , 3);

INSERT INTO	Transmisión(Canal, Numero, Horario, idAnime) VALUES('Canal4', 4, '10/12/2022' , 4);

INSERT INTO	Transmisión(Canal, Numero, Horario, idAnime) VALUES('Canal5', 5, '10/12/2022' , 4);

INSERT INTO	Transmisión(Canal, Numero, Horario, idAnime) VALUES('Canal6', 6, '10/12/2022' , 5);

INSERT INTO	Transmisión(Canal, Numero, Horario, idAnime) VALUES('Canal7', 7, '10/12/2022' , 6);

INSERT INTO	Transmisión(Canal, Numero, Horario, idAnime) VALUES('Canal8', 8, '10/12/2022' , 7);

INSERT INTO	Transmisión(Canal, Numero, Horario, idAnime) VALUES('Canal9', 9, '10/12/2022' , 8);

INSERT INTO	Transmisión(Canal, Numero, Horario, idAnime) VALUES('Canal10', 10, '10/12/2022' , 9);

UPDATE Transmisión SET Canal = 'Prueba' WHERE idTransmisión = 2;
DELETE FROM Transmisión WHERE idTransmisión = 1;
Select *from Transmisión;
INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(200, 'Pase1', 'Temática1' , 2);

INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(200, 'Pase2', 'Temática2' , 2);

INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(220, 'Pase3', 'Temática3' , 2);

INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(232, 'Pase4', 'Temática4' , 2);

INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(300, 'Pase5', 'Temática5' , 3);

INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(200, 'Pase6', 'Temática6' , 4);

INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(200, 'Pase7', 'Temática7' , 5);

INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(200, 'Pase8', 'Temática8' , 6);

INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(200, 'Pase9', 'Temática9' , 7);

INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(200, 'Pase10', 'Temática10' , 8);

UPDATE BattlePass SET Nombre = 'Prueba' WHERE idBattlePass = 2;
DELETE FROM BattlePass WHERE idBattlePass = 1;
select *from BattlePass;
INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(1, '12/09/2022', 'Rareza1', 2);

INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(2, '12/09/2022', 'Rareza2', 2);

INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(3, '12/09/2022', 'Rareza3', 3);

INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(4, '12/09/2022', 'Rareza1', 2);

INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(5, '12/09/2022', 'Rareza1', 5);

INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(6, '12/09/2022', 'Rareza6', 6);

INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(7, '12/09/2022', 'Rareza7', 7);

INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(8, '12/09/2022', 'Rareza1', 7);

INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(9, '12/09/2022', 'Rareza1', 3);

INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(10, '12/09/2022', 'Rareza1', 2);

UPDATE Carta SET Codigo = '12' WHERE idCarta = 2;
DELETE FROM Carta WHERE idCarta = 1;
select *from Carta;
INSERT INTO	Jugador(Usuario, Contraseña, Correo, idEnlinea, idMembresia) VALUES('Usuario1', 'Contraseña1', 'Correo1@gmail.com', 2, 2);

INSERT INTO	Jugador(Usuario, Contraseña, Correo, idEnlinea, idMembresia) VALUES('Usuario2', 'Contraseña2', 'Correo2@gmail.com', 2, 2);

INSERT INTO	Jugador(Usuario, Contraseña, Correo, idEnlinea, idMembresia) VALUES('Usuario3', 'Contraseña3', 'Correo3@gmail.com', 3, 3);

INSERT INTO	Jugador(Usuario, Contraseña, Correo, idEnlinea, idMembresia) VALUES('Usuario4', 'Contraseña4', 'Correo4@gmail.com', 4, 4);

INSERT INTO	Jugador(Usuario, Contraseña, Correo, idEnlinea, idMembresia) VALUES('Usuario5', 'Contraseña5', 'Correo5@gmail.com', 4, 5);

INSERT INTO	Jugador(Usuario, Contraseña, Correo, idEnlinea, idMembresia) VALUES('Usuario7', 'Contraseña7', 'Correo7@gmail.com', 4, 6);

INSERT INTO	Jugador(Usuario, Contraseña, Correo, idEnlinea, idMembresia) VALUES('Usuario8', 'Contraseña8', 'Correo8@gmail.com', 3, 3);

INSERT INTO	Jugador(Usuario, Contraseña, Correo, idEnlinea, idMembresia) VALUES('Usuario9', 'Contraseña9', 'Correo9@gmail.com', 2, 2);

INSERT INTO	Jugador(Usuario, Contraseña, Correo, idEnlinea, idMembresia) VALUES('Usuario10', 'Contraseña10', 'Correo10@gmail.com', 3, 3);

UPDATE Jugador SET Usuario = 'Prueba' WHERE idJugador = 2;
DELETE FROM Jugador WHERE idJugador = 1;
select *from Jugador;
INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 1, '03/12/2022', 'Metodo1', 2);

INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 2, '03/12/2022', 'Metodo2', 2);

INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 3, '03/12/2022', 'Metodo3', 3);

INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 4, '03/12/2022', 'Metodo4', 2);

INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 5, '03/12/2022', 'Metodo5', 5);

INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 6, '03/12/2022', 'Metodo6', 3);

INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 7, '03/12/2022', 'Metodo1', 2);

INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 8, '03/12/2022', 'Metodo2', 3);

INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 9, '03/12/2022', 'Metodo3', 9);

INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 10, '03/12/2022', 'Metodo1', 9);

UPDATE Compra SET Codigo = '21' WHERE idCompra = 2;
DELETE FROM Compra WHERE idCompra = 1;
select *from Compra;
INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona1', 'Director1', 'Lenguaje1', 2);

INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona2', 'Director2', 'Lenguaje2', 3);

INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona3', 'Director3', 'Lenguaje3', 4);

INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona4', 'Director4', 'Lenguaje4', 5);

INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona5', 'Director5', 'Lenguaje5', 6);

INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona6', 'Director6', 'Lenguaje6', 5);

INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona7', 'Director7', 'Lenguaje7', 6);

INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona1', 'Director8', 'Lenguaje8', 9);

INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona1', 'Director9', 'Lenguaje9', 10);

INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona10', 'Director10', 'Lenguaje10', 3);

UPDATE Doblaje SET Zona = 'Prueba' WHERE idDoblaje = 2;
DELETE FROM Doblaje WHERE idDoblaje = 1;
select *from Doblaje;
INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 1, 'Piedra', 23, 3);

INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 2, 'Amistad', 232, 2);

INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 3, 'AmistadDia', 4, 2);

INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 4, 'AmistadNoche', 5, 2);

INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 5, 'Objetoequipado', 24, 2);

INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 1, 'Intercambio', 23, 2);

INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 1, 'SUbir de nivel con siniestro', 1, 6);

INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 1, 'Subir de nivel', 870, 2);

INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 1, 'Ataque especifico', 31, 4);

INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 1, 'Pasos', 324, 8);

UPDATE Evolucion SET Descripcion = 'Prueba' WHERE idEvolucion = 2;
DELETE FROM Evolucion WHERE idEvolucion = 1;
select *from Evolucion;
INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo1', 'Objeto exclusivo', '03/12/2022', 2);

INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo2', 'Objeto exclusivo', '03/12/2022', 2);

INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo3', 'Objeto exclusivo', '03/12/2022', 8);

INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo4', 'Objeto exclusivo', '03/12/2022', 3);

INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo5', 'Objeto exclusivo', '03/12/2022', 2);

INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo6', 'Objeto exclusivo', '03/12/2022', 3);

INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo7', 'Objeto exclusivo', '03/12/2022', 4);

INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo8', 'Objeto exclusivo', '03/12/2022', 8);

INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo9', 'Objeto exclusivo', '03/12/2022', 7);

INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo1o', 'Objeto exclusivo', '03/12/2022', 2);

UPDATE Exclusivo SET Nombre = 'Prueba' WHERE idExclusivo = 2;
DELETE FROM Exclusivo WHERE idExclusivo = 1;
select *From Exclusivo;
INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 1, 'Creador1', 'Fangame1', 2);

INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 2, 'Creador2', 'Fangame2', 2);

INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 3, 'Creador3', 'Fangame3', 3);

INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 4, 'Creador4', 'Fangame4', 8);

INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 5, 'Creador5', 'Fangame5', 4);

INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 6, 'Creador6', 'Fangame6', 6);

INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 7, 'Creador7', 'Fangame7', 7);

INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 8, 'Creador8', 'Fangame8', 8);

INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 9, 'Creador9', 'Fangame9', 9);

INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 10, 'Creador10', 'Fangame10', 10);

UPDATE FanGame SET Nombre = 'Prueba' WHERE idFanGame = 2;
DELETE FROM FanGame WHERE idFanGame = 1;
select *from FanGame;
INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador1', 'Omega red', 2);

INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador2', 'Kaizo', 3);

INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador3', 'Enchanced', 4);

INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Ceador4', 'Glazed', 3);

INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador5', 'Espada escudo', 5);

INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador6', 'Flora sky', 3);

INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador7', 'Nine', 9);

INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'DS', 'Creador8', 'Balze black', 2);

INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador9', 'Blaze', 5);

INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador10', 'Dark rising', 2);

UPDATE Hackrom SET Nombre = 'Prueba' WHERE idHackrom = 2;
DELETE FROM Hackrom WHERE idHackrom = 1;
select *from Hackrom;
INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga1', '03/12/2022', 1, 2, 2);

INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga2', '03/12/2022', 2, 2, 2);

INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga3', '03/12/2022', 3, 4, 6);

INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga4', '03/12/2022', 4, 5, 6);

INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga5', '03/12/2022', 5, 7, 5);

INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga6', '03/12/2022', 6, 5, 5);

INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga7', '03/12/2022', 7, 8, 8);

INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga8', '03/12/2022', 8,2, 4);

INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga1', '03/12/2022', 9, 9, 2);

INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga10', '03/12/2022', 10, 8,2);

UPDATE Manga SET Nombre = 'Prueba' WHERE idManga = 2;
DELETE FROM Manga WHERE idManga = 1;
select *from Manga;
INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'CombateDoble', 'Combate de 4 jugadores', 'Pelea de 4 jugadores', 2);

INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'RepartirExperienciatodos', 'Objeto que da experiencia', 'Mediante la bolsa', 6);

INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'Experiencia a todos', 'Todos reciben experiencia', 'Derrotando un enemigo', 8);

INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'Incursiones', 'Combate de 4 jugadores vs un pokemon', 'En un nido incursión', 8);

INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'Monturas', 'Usar pokemon para viajar', 'Con un objeto de montura', 7);

INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'Megaevolución', 'Mega evolucionar un pokemon', 'MegaAro y MegaPiedra', 6);

INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'Poder Z', 'Un enorme ataque', 'Aro Z', 7);

INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'Dinamax', 'Hace al pokemon gigante', 'Pulsera dynamax', 8);

INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'Teracristalización', 'Cambia el tipo del pokemon', 'Anillotera', 9);

INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'CombateRoyal', 'Combate de 4 jugadores todos vs todos', 'Pelea de 4 jugadores', 7);

UPDATE Mecanica SET Nombre = 'Prueba' WHERE idMecanica = 2;
DELETE FROM Mecanica WHERE idMecanica = 1;
select *from Mecanica;
INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Ascuas', 14, 'Lanza pequeñas ascuas', 2);

INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Poder pasado', 60, 'Lanza varias piedras antiguas', 3);

INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'canto helado', 50, 'Lanza hielo', 4);

INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Liofilización', 60, 'Congela el agua', 4);

INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Mazazo', 120, 'Crea un mazo de planta', 4);

INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Onda voltio', 70, 'Nunca falla', 3);

INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Voto planta', 70, 'Lanza flores', 6);

INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Voto agua', 70, 'Lanza un chorro de agua', 6);

INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Voto fuego', 70, 'Lanza un ataque de fuego', 6);

INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Voto combinado', 80, 'Cuando dos votos se combinan', 6);

INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Bomba lodo', 80, 'Lanza una bomba de lodo', 3);

UPDATE Movimiento SET Nombre = 'Prueba' WHERE idMovimiento = 2;
DELETE FROM Movimiento WHERE idMovimiento = 1;
select *from Movimiento;
INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Combate', 1, 4, 2);

INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Combate entrenador', 2, 3, 2);

INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Ruta', 3, 5, 4);

INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Surf', 4, 5, 2);

INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Casa', 5, 31, 2);

INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Lider', 6, 3, 3);

INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Pescando', 7, 5, 3);

INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Campeon', 8, 5, 3);

INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'AltoMando', 9, 3, 3);

INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Calle victoria', 10, 3,5);

UPDATE Soundtrack SET Uso = 'Prueba' WHERE idSoundtrack = 2;
DELETE FROM Soundtrack WHERE idSoundtrack = 1;
select *from Soundtrack;
INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Stadium', 1, 329,2);

INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Stadium2', 2, 3221,2);

INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Colloseum', 3, 3329,3);

INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'XD', 4, 3249,3);

INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Mundo Misteerioso rojo', 5, 3229,3);

INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Rangers', 6, 3229, 4);

INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Exploradores cielo', 7, 3293,4);

INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Portales infinito', 8, 3229,5);

INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Mega', 9, 2191,6);

INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Dx', 10, 3229,3);

UPDATE Spinoff SET Nombre = 'Prueba' WHERE idSpinoff = 2;
DELETE FROM Spinoff WHERE idSpinoff = 1;
select *from Spinoff;
INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona1', 1, 'surf',2);

INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona2', 2, 'Acceso2',2);

INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona3', 3, 'Acceso3',3);

INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona4', 4, 'Acceso4',4);

INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona5', 5, 'Acceso5',3);

INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona6', 6, 'Acceso1',4);

INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona7', 7, 'Acceso7', 4);

INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona8', 8, 'surf',2);

INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona9', 8, 'surf',2);

UPDATE Zona SET Nombre = 'Prueba' WHERE idZona = 2;
DELETE FROM Zona WHERE idZona = 1;
select *from Zona;
INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 2, 2);

INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 2, 2);

INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 3, 2);

INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 4, 3);

INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 5, 3);

INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 6, 2);

INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 7, 3);

INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 7, 5);

INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 8, 3);

INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 9, 6);

UPDATE AnimeEpisodio SET estatus = '0' WHERE idAnimeEpisodio = 2;
DELETE FROM AnimeEpisodio WHERE idAnimeEpisodio = 1;
select *from AnimeEpisodio;
INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 2, 2);

INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 3, 2);

INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 7, 3);

INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 7, 2);

INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 2, 6);

INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 4, 8);

INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 5, 9);

INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 7, 10);

INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 8, 10);

INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 9, 3);

UPDATE AnimeEspecial SET estatus = '0' WHERE idAnimeEspecial = 2;
DELETE FROM AnimeEspecial WHERE idAnimeEspecial = 1;
select *from AnimeEspecial;
INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 7, 2);

INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 7, 2);

INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 8, 3);

INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 2, 4);

INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 7, 5);

INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 3, 6);

INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 4, 7);

INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 5, 8);

INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 8, 9);

INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 8, 10);

UPDATE AnimePelicula SET estatus = '0' WHERE idAnimePelicula = 2;
DELETE FROM AnimePelicula WHERE idAnimePelicula = 1;
select *from AnimePelicula;
INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 2, 2);

INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 2, 2);

INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 3, 3);

INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 4, 4);

INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 5, 5);

INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 6, 6);

INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 7, 8);

INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 8, 8);

INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 9, 9);

INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 10, 10);

UPDATE ConsolaContro SET estatus = '0' WHERE idConsolaContro = 2;
DELETE FROM ConsolaContro WHERE idConsolaContro = 1;
select *from ConsolaContro;
INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 2, 2);

INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 2, 2);

INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 3, 3);

INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 4, 4);

INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 5, 5);

INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 6, 6);

INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 7, 7);

INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 8, 8);

INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 9, 9);

INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 10, 10);

UPDATE ConsolaVideojuego SET estatus = '0' WHERE idConsolaVideojuego = 2;
DELETE FROM ConsolaVideojuego WHERE idConsolaVideojuego = 1;
select *from ConsolaVideojuego;
INSERT INTO	DistribucionMercancia(idDistribución, idMercancia)VALUES( 2, 2);

INSERT INTO	DistribucionMercancia(idDistribución, idMercancia)VALUES( 2, 2);

INSERT INTO	DistribucionMercancia(idDistribución, idMercancia)VALUES( 3, 3);

INSERT INTO	DistribucionMercancia(idDistribución, idMercancia)VALUES( 4, 4);

INSERT INTO	DistribucionMercancia(idDistribución, idMercancia)VALUES( 5, 5);

INSERT INTO	DistribucionMercancia(idDistribución, idMercancia)VALUES( 6, 6);

INSERT INTO	DistribucionMercancia(idDistribución, idMercancia)VALUES( 7, 7);

INSERT INTO	DistribucionMercancia(idDistribución, idMercancia)VALUES( 8, 8);

INSERT INTO	DistribucionMercancia(idDistribución, idMercancia)VALUES( 9, 9);

INSERT INTO	DistribucionMercancia(idDistribución, idMercancia)VALUES( 10, 10);

UPDATE DistribucionMercancia SET estatus = '0' WHERE idDistribucionMercancia = 2;
DELETE FROM DistribucionMercancia WHERE idDistribucionMercancia = 1;
select *from DistribucionMercancia;
INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 2, 2);

INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 2, 2);

INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 3, 3);

INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 4, 4);

INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 5, 5);

INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 6, 6);

INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 7, 7);

INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 8, 8);

INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 9, 9);

INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 10, 10);

UPDATE GeneracionEntrenador SET estatus = '0' WHERE idGeneracionEntrenador = 2;
DELETE FROM GeneracionEntrenador WHERE idGeneracionEntrenador = 1;
select *from GeneracionEntrenador;
INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 2, 2);

INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 2, 2);

INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 3, 3);

INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 4, 4);

INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 5, 5);

INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 6, 6);

INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 7, 7);

INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 8, 8);

INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 9, 9);

INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 10, 10);

UPDATE GeneracionMercancia SET estatus = '0' WHERE idGeneracionMercancia = 2;
DELETE FROM GeneracionMercancia WHERE idGeneracionMercancia = 1;
select *from GeneracionMercancia;
INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 2, 2);

INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 2, 2);

INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 3, 3);

INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 4, 4);

INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 5, 5);

INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 6, 6);

INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 7, 7);

INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 8, 8);

INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 9, 9);

INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 10, 10);

UPDATE ColaboracionCarta SET estatus = '0' WHERE idColaboracionCarta = 2;
DELETE FROM ColaboracionCarta WHERE idColaboracionCarta = 1;
Select *from ColaboracionCarta;
INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 2, 2);

INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 2, 2);

INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 3, 3);

INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 4, 4);

INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 5, 5);

INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 6, 6);

INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 7, 7);

INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 8, 8);

INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 9, 9);

INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 10, 10);

UPDATE CartaArtista SET estatus = '0' WHERE idCartaArtista = 2;
DELETE FROM CartaArtista WHERE idCartaArtista = 1;
select *from CartaArtista;
INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 2, 2);

INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 2, 2);

INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 3, 3);

INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 4, 4);

INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 5, 5);

INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 6, 6);

INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 7, 7);

INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 8, 8);

INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 9, 9);

INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 10, 10);

UPDATE MangaImprenta SET estatus = '0' WHERE idMangaImprenta = 2;
DELETE FROM MangaImprenta WHERE idMangaImprenta = 1;
select*from MangaImprenta;
INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 2, 2);

INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 2, 2);

INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 3, 3);

INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 4, 4);

INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 5, 5);

INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 6, 6);

INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 7, 7);

INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 8, 8);

INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 9, 9);

INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 10, 10);

UPDATE MercanciaPagina SET estatus = '0' WHERE idMercanciaPagina = 2;
DELETE FROM MercanciaPagina WHERE idMercanciaPagina = 1;
select *from MercanciaPagina;
INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 2, 2);

INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 2, 2);

INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 3, 3);

INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 4, 4);

INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 5, 5);

INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 6, 6);

INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 7, 7);

INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 8, 8);

INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 9, 9);

INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 10, 10);

UPDATE ObjetoTienda SET estatus = '0' WHERE idObjetoTienda = 2;
DELETE FROM ObjetoTienda WHERE idObjetoTienda = 1;
select *from ObjetoTienda;
INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 2, 2);

INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 2, 2);

INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 3, 3);

INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 4, 4);

INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 5, 5);

INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 6, 6);

INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 7, 7);

INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 8, 8);

INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 9, 9);

INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 10, 10);

UPDATE PokeballTienda SET estatus = '0' WHERE idPokeballTienda = 2;
DELETE FROM PokeballTienda WHERE idPokeballTienda = 1;
select *from PokeballTienda;
INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 5, 2);

INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 4, 2);

INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 5, 3);

INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 6, 4);

INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 7, 5);

INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 8, 5);

INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 9, 6);

INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 10, 7);

INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 3, 8);

INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 6, 9);

UPDATE TemporadaSkin SET estatus = '0' WHERE idTemporadaSkin = 2;
DELETE FROM TemporadaSkin WHERE idTemporadaSkin = 1;
select *from TemporadaSkin;
INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 5, 5);

INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 4, 2);

INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 5, 3);

INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 6, 4);

INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 7, 5);

INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 8, 6);

INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 9, 7);

INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 10, 8);

INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 6, 9);

INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 7, 10);

UPDATE TemporadaVestuario SET estatus = '0' WHERE idTemporadaVestuario = 2;
DELETE FROM TemporadaVestuario WHERE idTemporadaVestuario = 1;
select *from TemporadaVestuario;
INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 2, 3);

INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 2, 2);

INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 3, 3);

INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 4, 4);

INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 5, 5);

INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 6, 6);

INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 7, 7);

INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 8, 8);

INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 9, 9);

INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 10, 10);

UPDATE TorneoVideojuego SET estatus = '0' WHERE idTorneoVideojuego = 2;
DELETE FROM TorneoVideojuego WHERE idTorneoVideojuego = 1;
select *from TorneoVideojuego;
INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 2, 2);

INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 2, 2);

INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 3, 3);

INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 4, 4);

INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 5, 5);

INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 6, 6);

INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 7, 7);

INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 8, 8);

INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 9, 9);

INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 10, 10);

UPDATE VideojuegoEvento SET estatus = '0' WHERE idVideojuegoEvento = 2;
DELETE FROM VideojuegoEvento WHERE idVideojuegoEvento = 1;
Select *from VideojuegoEvento;
INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 2, 2);

INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 2, 2);

INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 3, 3);

INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 4, 4);

INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 5, 5);

INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 6, 6);

INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 7, 7);

INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 8, 8);

INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 9, 9);

INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 10, 9);

UPDATE VideojuegoJugador SET estatus = '0' WHERE idVideojuegoJugador = 2;
DELETE FROM VideojuegoJugador WHERE idVideojuegoJugador = 1;
select *from VideojuegoJugador;
INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 2, 2);

INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 2, 2);

INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 3, 3);

INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 4, 4);

INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 5, 5);

INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 6, 6);

INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 7, 7);

INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 8, 8);

INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 9, 9);

INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 10, 10);

UPDATE VideoJuegoColaboracion SET estatus = '0' WHERE idVideojuegoColaboracion = 2;
DELETE FROM VideoJuegoColaboracion WHERE idVideojuegoColaboracion = 1;
select *from VideoJuegoColaboracion;
INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 2, 2);

INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 2, 2);

INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 3, 3);

INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 4, 4);

INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 5, 5);

INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 6, 6);

INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 7, 7);

INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 8, 8);

INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 9, 9);

INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 10, 10);

UPDATE VideoJuegoContenidodescarga SET estatus = '0' WHERE idVideojuegoContenidodescarga = 2;
DELETE FROM VideoJuegoContenidodescarga WHERE idVideojuegoContenidodescarga = 1;
select *from VideoJuegoContenidodescarga;
INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 2, 2);

INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 2, 2);

INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 3, 3);

INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 4, 4);

INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 5, 5);

INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 6, 6);

INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 7, 7);

INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 8, 8);

INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 9, 9);

INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 10, 10);

UPDATE PlataformaAplicacion SET estatus = '0' WHERE idPlataformaAplicacion = 2;
DELETE FROM PlataformaAplicacion WHERE idPlataformaAplicacion = 1;
select *from PlataformaAplicacion;