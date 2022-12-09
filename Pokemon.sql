USE master;
GO
IF DB_ID(N'Pokemon')IS NOT NULL
DROP DATABASE Pokemon;
GO
CREATE DATABASE Pokemon
ON
(NAME = Pokemon_dat,
FILENAME= 'C:\BaseDatos\Pokemon.mdf',
SIZE = 10,
MAXSIZE = 50,
FILEGROWTH = 5)
LOG ON 
(NAME =Pokemon_log,
FILENAME = 'C:\BaseDatos\Pokemon.ldf',
SIZE = 5MB,
MAXSIZE = 25MB,
FILEGROWTH = 5MB);
GO
USE Pokemon;
GO
CREATE TABLE Anime
(
idAnime INT identity (1,1),
fechainicio DATETIME NOT NULL,
nombre VARCHAR (50) NOT NULL,
fechafinalización DATETIME NOT NULL,
idGeneracion INT NOT NULL,
idEstudio INT NOT NULL,
idGuion INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Aplicacion
(
idAplicacion INT identity (1,1),
tamaño INT NOT NULL,
nombre VARCHAR (50) NOT NULL,
descripción VARCHAR (50) NOT NULL,
idGeneracion INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Artista
(
idArtista INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
ciudad VARCHAR (50) NOT NULL,
calle VARCHAR (50) NOT NULL,
numero INT NOT NULL,
cp CHAR (5) NOT NULL,
curp VARCHAR (50) NOT NULL,
idGeneración INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE BattlePass
(
idBattlePass INT identity (1,1),
precio INT NOT NULL,
nombre VARCHAR (50) NOT NULL,
tematica VARCHAR (50) NOT NULL,
idTemporada INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Carta
(
idCarta INT identity (1,1),
codigo INT NOT NULL,
fechacreacion DATETIME NOT NULL,
rareza VARCHAR (50) NOT NULL,
idExpansion INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Colaboracion
(
idColaboracion INT identity (1,1),
numero INT NOT NULL,
tipo VARCHAR (50) NOT NULL,
fecha DATETIME NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Compra
(
idCompra INT identity (1,1),
codigo INT NOT NULL,
fecha DATETIME NOT NULL,
metodopago VARCHAR (50) NOT NULL,
idJugador INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Contenidodescarga
(
idContenidodescarga INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
precio INT NOT NULL,
fecha DATETIME NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Consola
(
idConsola INT identity (1,1),
numero INT NOT NULL,
precio INT NOT NULL,
diseño VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Contro
(
idContro INT identity (1,1),
numero INT NOT NULL,
precio INT NOT NULL,
diseño VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Desarrollador
(
idDesarrollador INT identity (1,1),
telefono VARCHAR(10) NOT NULL,
nombre CHAR (10) NOT NULL,
rfc VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Distribucion
(
idDistribucion INT identity (1,1),
lugares VARCHAR (50) NOT NULL,
pedidos INT NOT NULL,
transporte VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Doblaje
(
idDoblaje INT identity (1,1),
zona VARCHAR (50) NOT NULL,
director VARCHAR (50) NOT NULL,
lenguaje VARCHAR (50) NOT NULL,
idAnime INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Entrenador
(
idEntrenador INT identity (1,1),
cantidadpokemon INT NOT NULL,
nombre VARCHAR (50) NOT NULL,
Tipo VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Episodio
(
idEpisodio INT identity (1,1),
numero INT NOT NULL,
nombre VARCHAR (50) NOT NULL,
sipnosis VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Especial
(
idEspecial INT identity (1,1),
numero INT NOT NULL,
nombre VARCHAR (50) NOT NULL,
sipnosis VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Estudio
(
idEstudio INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
ciudad VARCHAR (50) NOT NULL,
calle VARCHAR (50) NOT NULL,
numero INT NOT NULL,
cp CHAR(5) NOT NULL,
telefono CHAR (10) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Evento
(
idEvento INT identity (1,1),
numero INT NOT NULL,
nombre VARCHAR (50) NOT NULL,
fecha DATETIME NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Evolucion
(
idEvolucion INT identity (1,1),
numero INT NOT NULL,
descripcion VARCHAR (50) NOT NULL,
pokemonuso int NOT NULL,
idGeneracion INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Exclusivo
(
idExclusivo INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
descripcion VARCHAR (50) NOT NULL,
fechadisponibilidad DATETIME NOT NULL,
idVideojuego INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Expansion
(
idExpansion INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
numero INT NOT NULL,
fechasalida DATETIME NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE FanGame
(
idFanGame INT identity (1,1),
numero INT NOT NULL,
creador VARCHAR (50) NOT NULL,
nombre VARCHAR (50) NOT NULL,
idGeneracion INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Generacion
(
idGeneracion INT identity (1,1),
descripcion VARCHAR (50) NOT NULL,
numero INT NOT NULL,
fechasalida DATETIME NOT NULL,
idPokedex INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Guion
(
idGuion INT identity (1,1),
numero INT NOT NULL,
nombre VARCHAR (50) NOT NULL,
descripcion VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Hackrom
(
idHackrom INT identity (1,1),
plataforma VARCHAR (50) NOT NULL,
creador VARCHAR (50) NOT NULL,
nombre VARCHAR (50) NOT NULL,
idVideojuego INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Imprenta
(
idimprenta INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
ciudad VARCHAR (50) NOT NULL,
calle VARCHAR (50) NOT NULL,
numero INT NOT NULL,
cp INT NOT NULL,
telefono CHAR (10) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Jugador
(
idJugador INT identity (1,1),
usuario VARCHAR (50) NOT NULL,
Contrasena VARCHAR (50) NOT NULL,
correo VARCHAR (50) NOT NULL,
idMembresia INT NOT NULL,
idEnlinea INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Manga
(
idManga INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
fechaSalida DATETIME NOT NULL,
numero int NOT NULL,
idGeneracion INT NOT NULL,
idGuion INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Mecanica
(
idMecanica INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
descripcion VARCHAR (50) NOT NULL,
activacion VARCHAR (50) NOT NULL,
idGeneracion INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Membresia
(
idMembresia INT identity (1,1),
precio INT NOT NULL,
fechaSalida DATETIME NOT NULL,
numero int NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Mercancia
(
idMercancia INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
numero INT NOT NULL,
precio INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Movimiento
(
idMovimiento INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
poder INT NOT NULL,
descripcion VARCHAR (50) NOT NULL,
idGeneracion INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Objeto 
(
idObjeto INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
tipo VARCHAR (50) NOT NULL,
descripcion VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Enlinea
(
idEnlinea INT identity (1,1),
numero INT NOT NULL,
host INT NOT NULL,
personas INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Pelicula
(
idPelicula INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
sipnosis VARCHAR (50) NOT NULL,
numero int NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Plataforma
(
idPlataforma INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
capacidad VARCHAR (50) NOT NULL,
numero int NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Pokeball
(
idPokeball INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
precio INT NOT NULL,
descripcion VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Pokedex
(
idPokedex INT identity (1,1),
diseño VARCHAR (50) NOT NULL,
numeropokemon INT NOT NULL,
descripcion VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Pagina
(
idPagina INT identity (1,1),
diseño VARCHAR (50) NOT NULL,
fechacreacion DATETIME NOT NULL,
link VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Skin
(
idSkin INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
numero INT NOT NULL,
pokemon VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Soundtrack
(
idSoundtrack INT identity (1,1),
uso VARCHAR (50) NOT NULL,
numero INT NOT NULL,
duración INT NOT NULL,
idVideojuego INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Spinoff
(
idSpinoff INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
numero INT NOT NULL,
ventas INT NOT NULL,
idGeneracion INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Temporada
(
idTemporada INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
numero INT NOT NULL,
fechainicio DATETIME NOT NULL,
fechafinal DATETIME NOT NULL,
idVideojuego INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Tienda
(
idTienda INT identity (1,1),
ubicacion VARCHAR (50) NOT NULL,
numero INT NOT NULL,
tipo VARCHAR (50) NOT NULL,
idGeneracion INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Torneo
(
idTorneo INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
participantes INT NOT NULL,
premio VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Transmision
(
idTransmision INT identity (1,1),
canal VARCHAR (50) NOT NULL,
numero INT NOT NULL,
horario DATETIME NOT NULL,
idAnime INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Versionn
(
idVersionn INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
fechasalida DATETIME NOT NULL,
fechaactualizacion DATETIME NOT NULL,
idVideojuego INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Vestuario
(
idVestuario INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
numero INT NOT NULL,
diseño VARCHAR (50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Videojuego
(
idVideojuego INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
copiasvendidas INT NOT NULL,
fechasalida DATETIME NOT NULL,
idGeneracion INT NOT NULL,
idDesarrollador INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE Zona
(
idZona INT identity (1,1),
nombre VARCHAR (50) NOT NULL,
numero INT NOT NULL,
acceso VARCHAR (50) NOT NULL,
idGeneracion INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE AnimeEpisodio
(
idAnimeEpisodio INT identity (1,1),
idAnime INT NOT NULL,
idEpisodio INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE AnimeEspecial
(
idAnimeEspecial INT identity (1,1),
idAnime INT NOT NULL,
idEspecial INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE AnimePelicula
(
idAnimePelicula INT identity (1,1),
idAnime INT NOT NULL,
idPelicula INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE ConsolaContro
(
idConsolaContro INT identity (1,1),
idConsola INT NOT NULL,
idContro INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE ConsolaVideojuego
(
idConsolaVideojuego INT identity (1,1),
idConsola INT NOT NULL,
idVideojuego INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE DistribucionMercancia
(
idDistribucionMercancia INT identity (1,1),
idDistribucion INT NOT NULL,
idMercancia INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE GeneracionEntrenador
(
idGeneracionEntrenador INT identity (1,1),
idGeneracion INT NOT NULL,
idEntrenador INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE GeneracionMercancia
(
idGeneracionMercancia INT identity (1,1),
idGeneracion INT NOT NULL,
idMercancia INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE ColaboracionCarta
(
idColaboracionCarta INT identity (1,1),
idColaboracion INT NOT NULL,
idCarta INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE CartaArtista
(
idCartaArtista INT identity (1,1),
idArtista INT NOT NULL,
idCarta INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE MangaImprenta
(
idMangaImprenta INT identity (1,1),
idManga INT NOT NULL,
idImprenta INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE MercanciaPagina
(
idMercanciaPagina INT identity (1,1),
idMercancia INT NOT NULL,
idPagina INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
CREATE TABLE ObjetoTienda
(
idObjetoTienda INT identity (1,1),
idObjeto INT NOT NULL,
idTienda INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE PokeballTienda
(
idPokeballTienda INT identity (1,1),
idPokeball INT NOT NULL,
idTienda INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE TemporadaSkin
(
idTemporadaSkin INT identity (1,1),
idTemporada INT NOT NULL,
idSkin INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE TemporadaVestuario
(
idTemporadaVestuario INT identity (1,1),
idTemporada INT NOT NULL,
idVestuario INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE TorneoVideojuego
(
idTorneoVideojuego INT identity (1,1),
idTorneo INT NOT NULL,
idVideojuego INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE VideojuegoEvento
(
idVideojuegoEvento INT identity (1,1),
idVideojuego INT NOT NULL,
idEvento INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE VideojuegoJugador
(
idVideojuegoJugador INT identity (1,1),
idVideojuego INT NOT NULL,
idJugador INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE VideoJuegoColaboracion
(
idVideojuegoColaboracion INT identity (1,1),
idVideojuego INT NOT NULL,
idColaboracion INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE VideoJuegoContenidodescarga
(
idVideojuegoContenidodescarga INT identity (1,1),
idVideojuego INT NOT NULL,
idContenidodescarga INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO
CREATE TABLE PlataformaAplicacion
(
idPlataformaAplicacion INT identity (1,1),
idPlataforma INT NOT NULL,
idAplicacion INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
);
GO

--------------------------------INDEX------------------------------
CREATE INDEX IX_Anime ON Anime(idAnime);
GO
CREATE INDEX IX_Aplicacion ON Aplicacion(idAplicacion);
GO
CREATE INDEX IX_Artista ON Artista(idArtista);
GO
CREATE INDEX IX_BattlePass ON BattlePass(idBattlePass);
GO
CREATE INDEX IX_Carta ON Carta(idCarta);
GO
CREATE INDEX IX_Colaboración ON Colaboracion(idColaboracion);
GO
CREATE INDEX IX_Compra ON Compra(idCompra);
GO
CREATE INDEX IX_Consola ON Consola(idConsola);
GO
CREATE INDEX IX_Contenidodescarga ON Contenidodescarga(idContenidodescarga);
GO
CREATE INDEX IX_Contro ON Contro(idContro);
GO
CREATE INDEX IX_Desarrollador ON Desarrollador(idDesarrollador);
GO
CREATE INDEX IX_Distribucion ON Distribucion(idDistribucion);
GO
CREATE INDEX IX_Doblaje ON Doblaje(idDoblaje);
GO
CREATE INDEX IX_Entrenador ON Entrenador(idEntrenador);
GO
CREATE INDEX IX_Episodio ON Episodio(idEpisodio);
GO
CREATE INDEX IX_Especial ON Especial(idEspecial);
GO
CREATE INDEX IX_Estudio ON Estudio(idEstudio);
GO
CREATE INDEX IX_Evento ON Evento(idEvento);
GO
CREATE INDEX IX_Evolucion ON Evolucion(idEvolucion);
GO
CREATE INDEX IX_Exclusivo ON Exclusivo(idExclusivo);
GO
CREATE INDEX IX_Expansion ON Expansion(idExpansion);
GO
CREATE INDEX IX_Fangame ON Fangame(idFangame);
GO
CREATE INDEX IX_Generacion ON Generacion(idGeneracion);
GO
CREATE INDEX IX_Guion ON Guion(idGuion);
GO
CREATE INDEX IX_Hackrom ON Hackrom(idHackrom);
GO
CREATE INDEX IX_Imprenta ON Imprenta(idImprenta);
GO
CREATE INDEX IX_Jugador ON Jugador(idJugador);
GO
CREATE INDEX IX_Manga ON Manga(idManga);
GO
CREATE INDEX IX_Mecanica ON Mecanica(idMecanica);
GO
CREATE INDEX IX_Membresia ON Membresia(idMembresia);
GO
CREATE INDEX IX_Mercancia ON Mercancia(idMercancia);
GO
CREATE INDEX IX_Movimiento ON Movimiento(idMovimiento);
GO
CREATE INDEX IX_Objeto ON Objeto(idObjeto);
GO
CREATE INDEX IX_Enlinea ON Enlinea(idEnlinea);
GO
CREATE INDEX IX_Pelicula ON Pelicula(idPelicula);
GO
CREATE INDEX IX_Plataforma ON Plataforma(idPlataforma);
GO
CREATE INDEX IX_Pokeball ON Pokeball(idPokeball);
GO
CREATE INDEX IX_Pokedex ON Pokedex(idPokedex);
GO
CREATE INDEX IX_Skin ON Skin(idSkin);
GO
CREATE INDEX IX_Soundtrack ON Soundtrack(idSoundtrack);
GO
CREATE INDEX IX_Spinoff ON Spinoff(idSpinoff);
GO
CREATE INDEX IX_Temporada ON Temporada(idTemporada);
GO
CREATE INDEX IX_Tienda ON Tienda(idTienda);
GO
CREATE INDEX IX_Torneo ON Torneo(idTorneo);
GO
CREATE INDEX IX_Transmision ON Transmision(idTransmision);
GO
CREATE INDEX IX_Versionn ON Versionn(idVersionn);
GO
CREATE INDEX IX_Vestuario ON Vestuario(idVestuario);
GO
CREATE INDEX IX_Videojuego ON Videojuego(idVideojuego);
GO
CREATE INDEX IX_Zona ON Zona(idZona);
GO
CREATE INDEX IX_AnimeEpisodio ON AnimeEpisodio(idAnimeEpisodio);
GO
CREATE INDEX IX_AnimeEspecial ON AnimeEspecial(idAnimeEspecial);
GO
CREATE INDEX IX_AnimePelicula ON AnimePelicula(idAnimePelicula);
GO
CREATE INDEX IX_CartaArtista ON CartaArtista(idCartaArtista);
GO
CREATE INDEX IX_ColaboracionCarta ON ColaboracionCarta(idColaboracionCarta);
GO
CREATE INDEX IX_ConsolaContro ON ConsolaContro(idConsolaContro);
GO
CREATE INDEX IX_ConsolaVideojuego ON ConsolaVideojuego(idConsolaVideojuego);
GO
CREATE INDEX IX_DistribucionMercancia ON DistribucionMercancia(idDistribucionMercancia);
GO
CREATE INDEX IX_GeneracionEntrenador ON GeneracionEntrenador(idGeneracionEntrenador);
GO
CREATE INDEX IX_GeneracionMercancia ON GeneracionMercancia(idGeneracionMercancia);
GO
CREATE INDEX IX_MangaImprenta ON MangaImprenta(idMangaImprenta);
GO
CREATE INDEX IX_MercanciaPagina ON MercanciaPagina(idMercanciaPagina);
GO
CREATE INDEX IX_Objetotienda ON Objetotienda(idObjetotienda);
GO
CREATE INDEX IX_PokeballTienda ON PokeballTienda(idPokeballTienda);
GO
CREATE INDEX IX_TemporadaSkin ON TemporadaSkin(idTemporadaSkin);
GO
CREATE INDEX IX_TemporadaVestuario ON TemporadaVestuario(idTemporadaVestuario);
GO
CREATE INDEX IX_TorneoVideojuego ON TorneoVideojuego(idTorneoVideojuego);
GO
CREATE INDEX IX_VideojuegoColaboracion ON VideojuegoColaboracion(idVideojuegoColaboracion);
GO
CREATE INDEX IX_VideojuegoContenidoDescarga ON VideojuegoContenidoDescarga(idVideojuegoContenidoDescarga);
GO
CREATE INDEX IX_VIdeojuegoEvento ON VIdeojuegoEvento(idVIdeojuegoEvento);
GO
CREATE INDEX IX_VideojuegoJugador ON VideojuegoJugador(idVideojuegoJugador);
GO
CREATE INDEX IX_PlataformaAplicacion ON PlataformaAplicacion(idPlataformaAplicacion);
GO


ALTER TABLE Anime ADD CONSTRAINT PK_Anime PRIMARY KEY (idAnime)
ALTER TABLE Aplicacion ADD CONSTRAINT PK_Aplicacion PRIMARY KEY (idAplicacion)
ALTER TABLE Artista ADD CONSTRAINT PK_Artista PRIMARY KEY (idArtista)
ALTER TABLE BattlePass ADD CONSTRAINT PK_BattlePass PRIMARY KEY (idBattlePass)
ALTER TABLE Carta ADD CONSTRAINT PK_Carta PRIMARY KEY (idCarta)
ALTER TABLE Colaboracion ADD CONSTRAINT PK_Colaboracion PRIMARY KEY (idColaboracion)
ALTER TABLE Compra ADD CONSTRAINT PK_Compra PRIMARY KEY (idCompra)
ALTER TABLE Consola ADD CONSTRAINT PK_Consola PRIMARY KEY (idConsola)
ALTER TABLE Contenidodescarga ADD CONSTRAINT PK_Contenidodescarga PRIMARY KEY (idContenidodescarga)
ALTER TABLE Contro ADD CONSTRAINT PK_Contro PRIMARY KEY (idContro)
ALTER TABLE Desarrollador ADD CONSTRAINT PK_Desarrollador PRIMARY KEY (idDesarrollador)
ALTER TABLE Distribucion ADD CONSTRAINT PK_Distribucion PRIMARY KEY (idDistribucion)
ALTER TABLE Doblaje ADD CONSTRAINT PK_Doblaje PRIMARY KEY (idDoblaje)
ALTER TABLE Entrenador ADD CONSTRAINT PK_Entrenador PRIMARY KEY (idEntrenador)
ALTER TABLE Episodio ADD CONSTRAINT PK_Episodio PRIMARY KEY (idEpisodio)
ALTER TABLE Especial ADD CONSTRAINT PK_Especial PRIMARY KEY (idEspecial)
ALTER TABLE Estudio ADD CONSTRAINT PK_Estudio PRIMARY KEY (idEstudio)
ALTER TABLE Evento ADD CONSTRAINT PK_Evento PRIMARY KEY (idEvento)
ALTER TABLE Evolucion ADD CONSTRAINT PK_Evolucion PRIMARY KEY (idEvolucion)
ALTER TABLE Expansion ADD CONSTRAINT PK_Expansion PRIMARY KEY (idExpansion)
ALTER TABLE Exclusivo ADD CONSTRAINT PK_Exclusivo PRIMARY KEY (idExclusivo)
ALTER TABLE Fangame ADD CONSTRAINT PK_Fangame PRIMARY KEY (idFangame)
ALTER TABLE Generacion ADD CONSTRAINT PK_Generacion PRIMARY KEY (idGeneracion)
ALTER TABLE Guion ADD CONSTRAINT PK_Guion PRIMARY KEY (idGuion)
ALTER TABLE Hackrom ADD CONSTRAINT PK_Hackrom PRIMARY KEY (idHackrom)
ALTER TABLE Imprenta ADD CONSTRAINT PK_Imprenta PRIMARY KEY (idImprenta)
ALTER TABLE Jugador ADD CONSTRAINT PK_Jugador PRIMARY KEY (idJugador)
ALTER TABLE Manga ADD CONSTRAINT PK_Manga PRIMARY KEY (idManga)
ALTER TABLE Mecanica ADD CONSTRAINT PK_Mecanica PRIMARY KEY (idMecanica)
ALTER TABLE Mercancia ADD CONSTRAINT PK_Mercancia PRIMARY KEY (idMercancia)
ALTER TABLE Membresia ADD CONSTRAINT PK_Membresia PRIMARY KEY (idMembresia)
ALTER TABLE Movimiento ADD CONSTRAINT PK_Movimiento PRIMARY KEY (idMovimiento)
ALTER TABLE Objeto ADD CONSTRAINT PK_Objeto PRIMARY KEY (idObjeto)
ALTER TABLE Enlinea ADD CONSTRAINT PK_Enlinea PRIMARY KEY (idEnlinea)
ALTER TABLE Pelicula ADD CONSTRAINT PK_Pelicula PRIMARY KEY (idPelicula)
ALTER TABLE Plataforma ADD CONSTRAINT PK_Plataforma PRIMARY KEY (idPlataforma)
ALTER TABLE Pokeball ADD CONSTRAINT PK_Pokeball PRIMARY KEY (idPokeball)
ALTER TABLE Pokedex ADD CONSTRAINT PK_Pokedex PRIMARY KEY (idPokedex)
ALTER TABLE Pagina ADD CONSTRAINT PK_Pagina PRIMARY KEY (idPagina)
ALTER TABLE Skin ADD CONSTRAINT PK_Skin PRIMARY KEY (idSkin)
ALTER TABLE Soundtrack ADD CONSTRAINT PK_Soundtrack PRIMARY KEY (idSoundtrack)
ALTER TABLE Spinoff ADD CONSTRAINT PK_Spinoff PRIMARY KEY (idSpinoff)
ALTER TABLE Temporada ADD CONSTRAINT PK_Temporada PRIMARY KEY (idTemporada)
ALTER TABLE Tienda ADD CONSTRAINT PK_Tienda PRIMARY KEY (idTienda)
ALTER TABLE Torneo ADD CONSTRAINT PK_Torneo PRIMARY KEY (idTorneo)
ALTER TABLE Transmision ADD CONSTRAINT PK_Transmision PRIMARY KEY (idTransmision)
ALTER TABLE Versionn ADD CONSTRAINT PK_Versionn PRIMARY KEY (idVersionn)
ALTER TABLE Vestuario ADD CONSTRAINT PK_Vestuario PRIMARY KEY (idVestuario)
ALTER TABLE Videojuego ADD CONSTRAINT PK_Videojuego PRIMARY KEY (idVideojuego)
ALTER TABLE Zona ADD CONSTRAINT PK_Zona PRIMARY KEY (idZona)
ALTER TABLE AnimeEpisodio ADD CONSTRAINT PK_AnimeEpisodio PRIMARY KEY (idAnimeEpisodio)
ALTER TABLE AnimeEspecial ADD CONSTRAINT PK_AnimeEspecial PRIMARY KEY (idAnimeEspecial)
ALTER TABLE AnimePelicula ADD CONSTRAINT PK_AnimePelicula PRIMARY KEY (idAnimePelicula)
ALTER TABLE CartaArtista ADD CONSTRAINT PK_CartaArtista PRIMARY KEY (idCartaArtista)
ALTER TABLE ColaboracionCarta ADD CONSTRAINT PK_ColaboracionCarta PRIMARY KEY (idColaboracionCarta)
ALTER TABLE ConsolaContro ADD CONSTRAINT PK_ConsolaContro PRIMARY KEY (idConsolaContro)
ALTER TABLE ConsolaVideojuego ADD CONSTRAINT PK_ConsolaVideojuego PRIMARY KEY (idConsolaVideojuego)
ALTER TABLE DistribucionMercancia ADD CONSTRAINT PK_DistribucionMercancia PRIMARY KEY (idDistribucionMercancia)
ALTER TABLE GeneracionEntrenador ADD CONSTRAINT PK_GeneracionEntrenador PRIMARY KEY (idGeneracionEntrenador)
ALTER TABLE MangaImprenta ADD CONSTRAINT PK_MangaImprenta PRIMARY KEY (idMangaImprenta)
ALTER TABLE MercanciaPagina ADD CONSTRAINT PK_MercanciaPagina PRIMARY KEY (idMercanciaPagina)
ALTER TABLE Objetotienda ADD CONSTRAINT PK_Objetotienda PRIMARY KEY (idObjetotienda)
ALTER TABLE PokeballTienda ADD CONSTRAINT PK_PokeballTienda PRIMARY KEY (idPokeballTienda)
ALTER TABLE TemporadaSkin ADD CONSTRAINT PK_TemporadaSkin PRIMARY KEY (idTemporadaSkin)
ALTER TABLE TemporadaVestuario ADD CONSTRAINT PK_TemporadaVestuario PRIMARY KEY (idTemporadaVestuario)
ALTER TABLE TorneoVideojuego ADD CONSTRAINT PK_TorneoVideojuego PRIMARY KEY (idTorneoVideojuego)
ALTER TABLE VideojuegoColaboracion ADD CONSTRAINT PK_VideojuegoColaboracion PRIMARY KEY (idVideojuegoColaboracion)
ALTER TABLE VideojuegoContenidoDescarga ADD CONSTRAINT PK_VideojuegoContenidoDescarga PRIMARY KEY (idVideojuegoContenidoDescarga)
ALTER TABLE VIdeojuegoEvento ADD CONSTRAINT PK_VIdeojuegoEvento PRIMARY KEY (idVIdeojuegoEvento)
ALTER TABLE VideojuegoJugador ADD CONSTRAINT PK_VideojuegoJugador PRIMARY KEY (idVideojuegoJugador)
ALTER TABLE PlataformaAplicacion ADD CONSTRAINT PK_PlataformaAplicacion PRIMARY KEY (idPlataformaAplicacion)

ALTER TABLE Anime ADD CONSTRAINT FK_AnimeGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion)
GO
ALTER TABLE Anime ADD CONSTRAINT FK_AnimeEstudio
FOREIGN  KEY(idEstudio) REFERENCES Estudio(idEstudio)
GO
ALTER TABLE Anime ADD CONSTRAINT FK_AnimeGuion
FOREIGN  KEY(idGuion) REFERENCES Guion(idGuion)
GO
ALTER TABLE Aplicacion ADD CONSTRAINT FK_AplicacionGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion)
GO
ALTER TABLE BattlePass ADD CONSTRAINT FK_BattlePassTemporada
FOREIGN  KEY(idTemporada) REFERENCES Temporada(idTemporada)
GO
ALTER TABLE Carta ADD CONSTRAINT FK_CartaExpansion
FOREIGN  KEY(idExpansion) REFERENCES Expansion(idExpansion)
GO
ALTER TABLE Compra ADD CONSTRAINT FK_CompraJugador
FOREIGN  KEY(idJugador) REFERENCES Jugador(idJugador)
GO
ALTER TABLE Doblaje ADD CONSTRAINT FK_DoblajeAnime
FOREIGN  KEY(idAnime) REFERENCES Anime(idAnime)
GO
ALTER TABLE Evolucion ADD CONSTRAINT FK_EvolucionGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion)
GO
ALTER TABLE Exclusivo ADD CONSTRAINT FK_ExclusivoVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego)
GO
ALTER TABLE Fangame ADD CONSTRAINT FK_FangameGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion)
GO
ALTER TABLE Generacion ADD CONSTRAINT FK_GeneracionPokedex
FOREIGN  KEY(idPokedex) REFERENCES Pokedex(idPokedex)
GO

ALTER TABLE Hackrom ADD CONSTRAINT FK_HackromVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego)
GO
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorMembresia
FOREIGN  KEY(idMembresia) REFERENCES Membresia(idMembresia)
GO
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorEnlinea
FOREIGN  KEY(idEnlinea) REFERENCES Enlinea(idEnlinea)
GO
ALTER TABLE Manga ADD CONSTRAINT FK_MangaGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion)
GO
ALTER TABLE Manga ADD CONSTRAINT FK_MangaGuion
FOREIGN  KEY(idGuion) REFERENCES Guion(idGuion)
GO
ALTER TABLE Mecanica ADD CONSTRAINT FK_MecanicaGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion)
GO
ALTER TABLE Movimiento ADD CONSTRAINT FK_MovimientoGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion)
GO
ALTER TABLE Soundtrack ADD CONSTRAINT FK_SoundtrackVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego)
GO
ALTER TABLE Spinoff ADD CONSTRAINT FK_SpinoffGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion)
GO
ALTER TABLE Temporada ADD CONSTRAINT FK_TemporadaVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego)
GO
ALTER TABLE Tienda ADD CONSTRAINT FK_TiendaGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion)
GO
ALTER TABLE Transmision ADD CONSTRAINT FK_TransmisionAnime
FOREIGN  KEY(idAnime) REFERENCES Anime(idAnime)
GO
ALTER TABLE Versionn ADD CONSTRAINT FK_VersionnVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego)
GO
ALTER TABLE Videojuego ADD CONSTRAINT FK_VideojuegoGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion)
GO
ALTER TABLE Videojuego ADD CONSTRAINT FK_VideojuegoDesarrollador
FOREIGN  KEY(idDesarrollador) REFERENCES Desarrollador(idDesarrollador)
GO
ALTER TABLE Zona ADD CONSTRAINT FK_ZonaGeneracion
FOREIGN KEY(idGeneracion) REFERENCES Generacion(idGeneracion)
GO
ALTER TABLE AnimeEpisodio ADD CONSTRAINT FK_AnimeEpisodioAnime
FOREIGN  KEY(idAnime) REFERENCES Anime(idAnime)
GO
ALTER TABLE AnimeEpisodio ADD CONSTRAINT FK_AnimeEpisodioEpisodio
FOREIGN  KEY(idEpisodio) REFERENCES Episodio(idEpisodio)
GO
ALTER TABLE AnimeEspecial ADD CONSTRAINT FK_AnimeEspecialEspecial
FOREIGN  KEY(idEspecial) REFERENCES Especial(idEspecial)
GO
ALTER TABLE AnimeEspecial ADD CONSTRAINT FK_AnimeEspecialAnime
FOREIGN  KEY(idAnime) REFERENCES Anime(idAnime)
GO
ALTER TABLE AnimePelicula ADD CONSTRAINT FK_AnimePeliculaAnime
FOREIGN  KEY(idAnime) REFERENCES Anime(idAnime)
GO
ALTER TABLE AnimePelicula ADD CONSTRAINT FK_AnimePeliculaPelicula
FOREIGN  KEY(idPelicula) REFERENCES Pelicula(idPelicula)
GO
ALTER TABLE ConsolaContro ADD CONSTRAINT FK_ConsolaControConsola
FOREIGN  KEY(idConsola) REFERENCES Consola(idConsola)
GO
ALTER TABLE ConsolaContro ADD CONSTRAINT FK_ConsolaControContro
FOREIGN  KEY(idContro) REFERENCES Contro(idContro)
GO
ALTER TABLE ConsolaVideojuego ADD CONSTRAINT FK_ConsolaVideojuegoConsola
FOREIGN  KEY(idConsola) REFERENCES Consola(idConsola)
GO
ALTER TABLE ConsolaVideojuego ADD CONSTRAINT FK_ConsolaVideojuegoVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego)
GO
ALTER TABLE DistribucionMercancia ADD CONSTRAINT FK_DistribucionMercanciaDistribucion
FOREIGN  KEY(idDistribucion) REFERENCES Distribucion(idDistribucion)
GO
ALTER TABLE DistribucionMercancia ADD CONSTRAINT FK_DistribucionMercanciaMercancia
FOREIGN  KEY(idMercancia) REFERENCES Mercancia(idMercancia)
GO
ALTER TABLE GeneracionEntrenador ADD CONSTRAINT FK_GeneracionEntrenadorGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion)
GO
ALTER TABLE GeneracionEntrenador ADD CONSTRAINT FK_GeneracionEntrenadorEntrenador 
FOREIGN  KEY(idEntrenador ) REFERENCES Entrenador (idEntrenador )
GO
ALTER TABLE GeneracionMercancia ADD CONSTRAINT FK_GeneracionMercanciaMercancia 
FOREIGN  KEY(idMercancia) REFERENCES Mercancia(idMercancia)
GO
ALTER TABLE GeneracionMercancia ADD CONSTRAINT FK_GeneracionMercanciaGeneracion
FOREIGN  KEY(idGeneracion) REFERENCES Generacion(idGeneracion)
GO
ALTER TABLE ColaboracionCarta ADD CONSTRAINT FK_ColaboracionCartaColaboracion
FOREIGN  KEY(idColaboracion) REFERENCES Colaboracion(idColaboracion)
GO
ALTER TABLE ColaboracionCarta ADD CONSTRAINT FK_ColaboracionCartaCarta
FOREIGN  KEY(idCarta) REFERENCES Carta(idCarta)
GO
ALTER TABLE CartaArtista ADD CONSTRAINT FK_CartaArtistaCarta
FOREIGN  KEY(idCarta) REFERENCES Carta(idCarta)
GO
ALTER TABLE CartaArtista ADD CONSTRAINT FK_CartaArtistaArtista
FOREIGN  KEY(idArtista) REFERENCES Artista(idArtista)
GO
ALTER TABLE MangaImprenta ADD CONSTRAINT FK_MangaImprentaManga
FOREIGN  KEY(idManga) REFERENCES Manga(idManga)
GO
ALTER TABLE MangaImprenta ADD CONSTRAINT FK_MangaImprentaImprenta
FOREIGN  KEY(idImprenta) REFERENCES Imprenta(idImprenta)
GO
ALTER TABLE MercanciaPagina ADD CONSTRAINT FK_NMercanciaPaginaMercancia
FOREIGN  KEY(idMercancia) REFERENCES Mercancia(idMercancia)
GO
ALTER TABLE MercanciaPagina ADD CONSTRAINT FK_NMercanciaPaginaPagina
FOREIGN  KEY(idPagina) REFERENCES Pagina(idPagina)
GO
ALTER TABLE ObjetoTienda ADD CONSTRAINT FK_ObjetoTiendaObjeto
FOREIGN  KEY(idObjeto) REFERENCES Objeto(idObjeto)
GO
ALTER TABLE ObjetoTienda ADD CONSTRAINT FK_ObjetoTiendaTienda
FOREIGN  KEY(idTienda) REFERENCES Tienda(idTienda)
GO
ALTER TABLE PokeballTienda ADD CONSTRAINT FK_PokeballTiendaTienda
FOREIGN  KEY(idTienda) REFERENCES Tienda(idTienda)
GO
ALTER TABLE PokeballTienda ADD CONSTRAINT FK_PokeballTiendaPokeball
FOREIGN  KEY(idPokeball) REFERENCES Pokeball(idPokeball)
GO
ALTER TABLE TemporadaSkin ADD CONSTRAINT FK_TemporadaSkinTemporada
FOREIGN  KEY(idTemporada) REFERENCES Temporada(idTemporada)
GO
ALTER TABLE TemporadaSkin ADD CONSTRAINT FK_TemporadaSkinSkin
FOREIGN  KEY(idSkin) REFERENCES Skin(idSkin)
GO
ALTER TABLE TemporadaVestuario ADD CONSTRAINT FK_TemporadaVestuarioTemporada
FOREIGN  KEY(idTemporada) REFERENCES Temporada(idTemporada)
GO
ALTER TABLE TemporadaVestuario ADD CONSTRAINT FK_TemporadaVestuarioVestuario
FOREIGN  KEY(idVestuario) REFERENCES Vestuario(idVestuario)
GO
ALTER TABLE TorneoVideojuego ADD CONSTRAINT FK_TorneoVideojuegoTorneo
FOREIGN  KEY(idTorneo) REFERENCES Torneo(idTorneo)
GO
ALTER TABLE TorneoVideojuego ADD CONSTRAINT FK_TorneoVideojuegoVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego)
GO
ALTER TABLE VideojuegoEvento ADD CONSTRAINT FK_VideojuegoEvento
FOREIGN  KEY(idEvento) REFERENCES Evento(idEvento)
GO
ALTER TABLE VideojuegoEvento ADD CONSTRAINT FK_VideojuegoEventoVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego)
GO
ALTER TABLE VideojuegoJugador ADD CONSTRAINT FK_VideojuegoJugador
FOREIGN  KEY(idJugador) REFERENCES Jugador(idJugador)
GO
ALTER TABLE VideojuegoJugador ADD CONSTRAINT FK_VideojuegoJugadorVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego)
GO
ALTER TABLE VideojuegoColaboracion ADD CONSTRAINT FK_VideojuegoColaboracionVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego)
GO
ALTER TABLE VideojuegoColaboracion ADD CONSTRAINT FK_VideojuegoColaboracionColaboracion
FOREIGN  KEY(idColaboracion) REFERENCES Colaboracion(idColaboracion)
GO
ALTER TABLE VideojuegoContenidodescarga ADD CONSTRAINT FK_VideojuegoContenidodescargaVideojuego
FOREIGN  KEY(idVideojuego) REFERENCES Videojuego(idVideojuego)
GO
ALTER TABLE VideojuegoContenidodescarga ADD CONSTRAINT FK_VideojuegoContenidodescargaContenidodescarga
FOREIGN  KEY(idContenidodescarga) REFERENCES Contenidodescarga(idContenidodescarga)
GO
ALTER TABLE PlataformaAplicacion ADD CONSTRAINT FK_PlataformaAplicacionPlataforma
FOREIGN  KEY(idPlataforma) REFERENCES Plataforma(idPlataforma)
GO
ALTER TABLE PlataformaAplicacion ADD CONSTRAINT FK_PlataformaAplicacionAplicacion
FOREIGN  KEY(idAplicacion) REFERENCES Aplicacion(idAplicacion)
GO








INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(1, 'Votacion', '03/12/2022')
GO
INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(2, 'EasterEgg', '01/12/2022')
GO
INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(3, 'Votacion', '05/12/2022')
GO
INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(4, 'Cancion', '05/12/2022')
GO
INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(5, 'Votacion', '03/12/2022')
GO
INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(6, 'Diseño', '10/12/2021')
GO
INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(7, 'Marca', '01/12/2022')
GO
INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(8, 'Encuesta', '02/12/2022')
GO
INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(9, 'Aparición', '09/12/2022')
GO
INSERT INTO	Colaboracion(numero, tipo, fecha) VALUES(10, 'Juego', '03/12/2022')
GO
UPDATE Colaboracion SET numero = '1' WHERE idColaboracion = 2
DELETE FROM Colaboracion WHERE idColaboracion = 1
GO
SELECT *FROM Colaboracion

INSERT INTO	Contenidodescarga(nombre, precio, fecha) VALUES('Nieves de corona', 2000, '03/11/2022')
GO
INSERT INTO	Contenidodescarga(nombre, precio, fecha) VALUES('Pokemon nuevo', 2000, '04/11/2022')
GO
INSERT INTO	Contenidodescarga(nombre, precio, fecha) VALUES('Competitivo', 2000, '05/11/2022')
GO
INSERT INTO	Contenidodescarga(nombre, precio, fecha) VALUES('Apoyo de captura', 2000, '03/11/2022')
GO
INSERT INTO	Contenidodescarga(Nombre, Precio, Fecha) VALUES('Arceus DLC', 2000, '06/11/2022')
GO
INSERT INTO	Contenidodescarga(Nombre, Precio, Fecha) VALUES('Isla Armadura', 10000, '03/11/2022')
GO
INSERT INTO	Contenidodescarga(Nombre, Precio, Fecha) VALUES('UltraEntes', 21000, '10/11/2022')
GO
INSERT INTO	Contenidodescarga(Nombre, Precio, Fecha) VALUES('Suicune y virizion paradox', 32000, '03/11/2022')
GO
INSERT INTO	Contenidodescarga(Nombre, Precio, Fecha) VALUES('Pokeballs', 24000, '07/11/2022')
GO
INSERT INTO	Contenidodescarga(Nombre, Precio, Fecha) VALUES('Historia', 2000, '03/11/2022')
GO
UPDATE Contenidodescarga SET Nombre = 'prueba' WHERE idContenidodescarga = 2
DELETE FROM Contenidodescarga WHERE idContenidodescarga = 1
GO
select *from Contenidodescarga
INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(1, 2000, 'Escarlata')
GO
INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(2, 2000, 'Purpura')
GO
INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(3, 3000, 'Oled')
GO
INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(4, 6000, 'Ruby')
GO
INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(5, 4000, 'RubyOmega')
GO
INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(6, 7000, 'Zafiro')
GO
INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(7, 6000, 'ZafiroAlfa')
GO
INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(8, 7000, 'Oro')
GO
INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(9, 3000, 'Plata')
GO
INSERT INTO	Consola(Numero, Precio, Diseño) VALUES(10, 2000, 'Escudo')
GO
UPDATE Consola SET Numero = '1' WHERE idConsola = 2
DELETE FROM Consola WHERE idConsola = 1
GO
SELECT *FROM Consola
INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(1, 200, 'Escarlata')
GO
INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(2, 300, 'Evee')
GO
INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(3, 500, 'Scorbunny')
GO
INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(4, 400, 'Ruby')
GO
INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(5, 200, 'Zafiro')
GO
INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(6, 200, 'Escarlata')
GO
INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(7, 200, 'Purpura')
GO
INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(8, 200, 'Oro')
GO
INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(9, 200, 'Gamepad azul')
GO
INSERT INTO	Contro(Numero, Precio, Diseño) VALUES(10, 200, 'Esmeralda')
GO
UPDATE Contro SET Numero = '1' WHERE idContro = 2
DELETE FROM Contro WHERE idContro = 1
GO
Select *From Contro
INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES(8662373023, 'Julian', 'VECJ880326 XXX')
GO
INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('8662373302', 'Marcos', 'VECJ880326 XXX')
GO
INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('8662374324', 'Tencent', 'VECJ880326 XXX')
GO
INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('8665653355', 'Gamefreak', 'VECJ880326 XXX')
GO
INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('8665224322', 'Pablo', 'VECJ880326 XXX')
GO
INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('8669876523', 'Megan', 'VECJ880326 XXX')
GO
INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('8668676446', 'Shiro', 'VECJ880326 XXX')
GO
INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('8664382392', 'Lina', 'VECJ880326 XXX')
GO
INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('8668765453', 'Fani', 'VECJ880326 XXX')
GO
INSERT INTO	Desarrollador(Telefono, Nombre, RFC) VALUES('8662373024', 'Axel', 'VECJ880326 XXX')
GO
UPDATE Desarrollador SET Telefono = '8662371361' WHERE idDesarrollador = 2
DELETE FROM Desarrollador WHERE idDesarrollador = 1
GO
select *from Desarrollador
INSERT INTO	Distribucion(Pedidos, Lugares, Transporte) VALUES(30, 'America', 'Barco')
GO
INSERT INTO	Distribucion(Pedidos, Lugares, Transporte) VALUES(540, 'Asia', 'Camion')
GO
INSERT INTO	Distribucion(Pedidos, Lugares, Transporte) VALUES(343, 'Mexico', 'Avion')
GO
INSERT INTO	Distribucion(Pedidos, Lugares, Transporte) VALUES(30, 'CDMX', 'Camion')
GO
INSERT INTO	Distribucion(Pedidos, Lugares, Transporte) VALUES(640, 'Argentina', 'Barco')
GO
INSERT INTO	Distribucion(Pedidos, Lugares, Transporte) VALUES(322, 'India', 'Camion')
GO
INSERT INTO	Distribucion(Pedidos, Lugares, Transporte) VALUES(30, 'Japón', 'Camion')
GO
INSERT INTO	Distribucion(Pedidos, Lugares, Transporte) VALUES(30, 'E.U', 'Barco')
GO
INSERT INTO	Distribucion(Pedidos, Lugares, Transporte) VALUES(30, 'Santa cecilia', 'Barco')
GO
INSERT INTO	Distribucion(Pedidos, Lugares, Transporte) VALUES(30, 'Hawai', 'Barco')
GO
UPDATE Distribucion SET Lugares = 'prueba' WHERE idDistribucion = 2
DELETE FROM Distribucion WHERE idDistribucion = 1
GO
select *from Distribucion
INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Rojo', 6, 'Variado')
GO
INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Azul', 6, 'Variado')
GO
INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Cynthia', 6, 'Variado')
GO
INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Maximo', 6, 'Variado')
GO
INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Plubio', 6, 'Variado')
GO
INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Petra', 3, 'Roca')
GO
INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Marcial', 3, 'Lucha')
GO
INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Vito', 2, 'Psiquico')
GO
INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Leti', 2, 'Psiquico')
GO
INSERT INTO	Entrenador(Nombre, CantidadPokemon, Tipo) VALUES('Candela', 5, 'Fuego')
GO
UPDATE Entrenador SET Nombre = 'Prueba' WHERE idEntrenador = 2
DELETE FROM Entrenador WHERE idEntrenador = 1
GO
select *from Entrenador
INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('VsMarcial', 32, 'Lucha contra Marcial')
GO
INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('Liga', 322, 'Llegada a la liga')
GO
INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('Sueños', 321, 'Pelea en los sueños')
GO
INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('VsCandela', 33, 'Lucha contra Candela')
GO
INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('AtaqueMasivo', 36, 'un ataque en ciudad petalia')
GO
INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('VsDante', 43, 'Pelea final contra Dante')
GO
INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('Proyecto Mew', 223, 'En busqueda de mew')
GO
INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('VsPetra', 10, 'Lucha contra Petra')
GO
INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('Groudon', 12, 'Aparece Groudon')
GO
INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('Kyogre', 14, 'Aparece kyogre')
GO
INSERT INTO	Episodio(Nombre, Numero, Sipnosis) VALUES('Raqyuaza', 20, 'Aparece rayquaza')
GO
UPDATE Episodio SET Nombre = 'Prueba' WHERE idEpisodio = 2
DELETE FROM Episodio WHERE idEpisodio = 1
GO
select *from Episodio
INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Navidad', 1, 'Pikachu celebra Navidad')
GO
INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Sanvalentin', 2, 'Pikachu se enamora')
GO
INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Megaevolucion', 3, 'Peleas de megaevoluciones')
GO
INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('ProfesorOak', 4, 'Explicación de algunos pokemon')
GO
INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Halloween', 5, 'Celebración de Halloween')
GO
INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Celebi', 6, 'Aparece Celebi')
GO
INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Pikachu y amigos', 7, 'Pikachu convive con sus amigos')
GO
INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Mew', 8, 'Se conoce a mew')
GO
INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Rocket', 9, 'Aventuras del teamrocket')
GO
INSERT INTO	Especial(Nombre, Numero, Sipnosis) VALUES('Pasado', 10, 'Pasado de Pikachu')
GO
UPDATE Especial SET Nombre = 'Prueba' WHERE idEspecial = 2
DELETE FROM Especial WHERE idEspecial = 1
GO
select *from Especial
INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(1, 'Pokes de ash', '03/12/2022')
GO
INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(2, 'Zorua Shiny', '10/11/2021')
GO
INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(3, 'Eeve', '02/10/2021')
GO
INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(4, 'Pokemon go fest', '10/08/2015')
GO
INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(5, 'Pokemon go fiesta', '10/08/2015')
GO
INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(6, 'Eternatus', '01/12/2022')
GO
INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(7, 'Diancie', '02/09/2018')
GO
INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(8, 'Volcanion', '09/12/2022')
GO
INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(9, 'Zarude', '10/12/2021')
GO
INSERT INTO	Evento(Numero, Nombre, Fecha) VALUES(10, 'Blastoise', '05/08/2021')
GO
UPDATE Evento SET Numero = '1' WHERE idEvento = 2
DELETE FROM Evento WHERE idEvento = 1
GO
select *from Evento
INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio1', 'hiroshima', 'calle3', 1,'8662424323', '25781')
GO
INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio2', 'hiroshima', 'calle2', 2,'8662424323', '25781')
GO
INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio3', 'hiroshima', 'calle1', 3,'8662424323', '25781')
GO
INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio4', 'hiroshima', 'calle4', 4,'8662424323', '25781')
GO
INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio5', 'hiroshima', 'calle5', 5,'8662424323', '25781')
GO
INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio6', 'hiroshima', 'calle6', 6,'8662424323', '25781')
GO
INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio7', 'hiroshima', 'call345', 7,'8662424323', '25781')
GO
INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio8', 'hiroshima', 'calle54', 8,'8662424323', '25781')
GO
INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio9', 'hiroshima', 'calle23', 9,'8662424323', '25781')
GO
INSERT INTO	Estudio(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Estudio10', 'hiroshima', 'calle32', 10,'8662424323', '25781')
GO
UPDATE Estudio SET Nombre = 'prueba' WHERE idEstudio = 2
DELETE FROM Estudio WHERE idEstudio = 1
GO
select *from Estudio
INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Resplandor', 1, '03/12/2022')
GO
INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Rojo', 2, '03/12/2020')
GO
INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Oro', 3, '03/12/2021')
GO
INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Espada', 4, '04/12/2022')
GO
INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Escudo', 5, '02/12/2022')
GO
INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Leyendas', 6, '09/12/2022')
GO
INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Ascenso', 7, '03/12/2018')
GO
INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Poder', 8, '03/12/2012')
GO
INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('sonico', 9, '03/10/2022')
GO
INSERT INTO	Expansion(Nombre, Numero, FechaSalida) VALUES('Rebelion', 10, '03/02/2022')
GO
UPDATE Expansion SET Nombre = 'prueba' WHERE idExpansion = 2
DELETE FROM Expansion WHERE idExpansion = 1
GO
select *from Expansion
INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 1, 'Pokemon rojo', 'Guion de pokemon rojo y sus aventuras')
GO
INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 2, 'Guion2', 'Guion de pokemon para anime')
GO
INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 3, 'Guion3', 'Guion de pokemon anime')
GO
INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 4, 'Guion4', 'Guion de pokemon Manga')
GO
INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 5, 'Guion5', 'Guion de pokemon manga')
GO
INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 6, 'Guion 6', 'Guion de pokemon Anime')
GO
INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 7, 'Guion 7', 'Guion de pokemon Anime')
GO
INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 8, 'Guion 8', 'Guion de pokemon Anime')
GO
INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 9, 'Guion 9', 'Guion de pokemon Manga')
GO
INSERT INTO	Guion(Numero, Nombre, Descripcion) VALUES( 10, 'Guion 10', 'Guion de pokemon Manga')
GO
UPDATE Guion SET Numero = '1' WHERE idGuion = 2
DELETE FROM Guion WHERE idGuion = 1
GO
select *from Guion
INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta1', 'Mexico', 'calle8', 1,'8662424323', '25789')
GO
INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta2', 'E.u', 'calle23', 2,'8662424353', '25723')
GO
INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta3', 'monclova', 'calle34', 3,'8666455324', '75342')
GO
INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta4', 'Tokyo', 'calle13', 4,'8662234422', '12324')
GO
INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta1','Odaiba', 'calle2', 5,'8665434234', '23564')
GO
INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta1','shibuya', 'callecanto', 6,'8660987532', '23543')
GO
INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta1', 'osaka', 'calle13', 7,'8661928312', '20391')
GO
INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta1', 'nayoma', 'calle54', 8,'8662424323', '25789')
GO
INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta1', 'sapporo', 'calle23', 9,'8662424323', '25342')
GO
INSERT INTO	Imprenta(Nombre, Ciudad, Calle, Numero,Telefono,CP) VALUES('Imprenta1', 'hiroshima', 'calleqw', 10,'8662424323', '25781')
GO
UPDATE Imprenta SET Nombre = 'prueba' WHERE idimprenta = 2
DELETE FROM Imprenta WHERE idimprenta = 1
GO
select *from Imprenta
INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(120, '03/12/2022', 1)
GO
INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(130, '04/12/2022', 2)
GO
INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(120, '12/12/2021', 3)
GO
INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(123, '10/12/2022', 4)
GO
INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(121, '03/12/2022', 5)
GO
INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(112, '03/12/2012', 6)
GO
INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(120, '03/11/2020', 7)
GO
INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(1123, '03/12/2022', 8)
GO
INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(600, '03/12/2022', 9)
GO
INSERT INTO	Membresia(Precio, FechaSalida, Numero) VALUES(131, '03/10/2022', 10)
GO
UPDATE Membresia SET Precio = '21' WHERE idMembresia = 2
DELETE FROM Membresia WHERE idMembresia = 1
GO
Select *from Membresia
INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Peluches', 1)
GO
INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Pokeball control',2)
GO
INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Camisa', 3)
GO
INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Calcetines', 4)
GO
INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Pantalones', 5)
GO
INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'lllaveros', 6)
GO
INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Auto', 7)
GO
INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Juguetes', 8)
GO
INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Accesorios', 9)
GO
INSERT INTO	Mercancia(Precio, Nombre, Numero) VALUES(1200, 'Teclado', 10)
GO
UPDATE Mercancia SET Precio = '21' WHERE idMercancia = 2
DELETE FROM Mercancia WHERE idMercancia = 1
GO
select *from Mercancia
INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('Poción','Curación', 'Cura 20ps')
GO
INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('SuperPoción','Curación', 'Cura 50ps')
GO
INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('HiperPoción','Curación', 'Cura 200ps')
GO
INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('Restaurar','Curación', 'Cura todo')
GO
INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('AntiParaliz','Curación', 'Cura Paralicis')
GO
INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('Antiquemar','Curación', 'Cura Quemaduras')
GO
INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('Ataque X','Combate', 'Aumenta ataque')
GO
INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('CambiaHabilidad','Combate', 'Cambia de habilidad')
GO
INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('Cura total','Curación', 'Cura todo estado')
GO
INSERT INTO	Objeto(Nombre, Tipo, Descripcion) VALUES('repelente','normal', 'Ahuyenta pokemon')
GO
UPDATE Objeto SET Nombre = 'Prueba' WHERE idObjeto = 2
DELETE FROM Objeto WHERE idObjeto = 1
GO
select *from Objeto
INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(1,1213, 10)
GO
INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(2,1213, 1053)
GO
INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(3,1213, 101)
GO
INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(4,1213, 132)
GO
INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(5,1213, 231)
GO
INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(6,1213, 123)
GO
INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(7,1213, 123)
GO
INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(8,1213, 100)
GO
INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(9,1213, 1123)
GO
INSERT INTO	Enlinea(Numero, Host, Personas) VALUES(10,1213, 1012)
GO
UPDATE Enlinea SET Numero = '1' WHERE idEnlinea = 2
DELETE FROM Enlinea WHERE idEnlinea = 1
GO
select *from Enlinea
INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Mewtwo strickes back', 1, 'Mewtwo ataca')
GO
INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Genesect', 2, 'Los genesect invaden la ciudad')
GO
INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Lucario y mew', 3, 'Lucario vuelve del pasado')
GO
INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Hoopa', 4, 'Ash conoce a hoopa')
GO
INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Volcanion', 5, 'Rescate de diancie')
GO
INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Pokemon 2', 6, 'Lugia aparece')
GO
INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Jirachi y su deseo', 7, 'Jirachi cae de un meteoro junto a deoxys')
GO
INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Victini', 8, 'Ash conoce a victini')
GO
INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Zoroark', 9, 'Un pokemon Zoroark es capturado')
GO
INSERT INTO	Pelicula(Nombre, Numero, Sipnosis) VALUES('Darkrai', 10, 'Darkrai advierte de la pelea de los legendarios')
GO
UPDATE Pelicula SET Nombre = 'Prueba' WHERE idPelicula = 2
DELETE FROM Pelicula WHERE idPelicula = 1
GO
select *from Pelicula
INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('Android', 1, '300mhz')
GO
INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('AndroidPie', 2, '300mhz')
GO
INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('AndroidCupcake', 3, '300mhz')
GO
INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('Android10', 4, '300mhz')
GO
INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('PC', 5, '3000mhz')
GO
INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('Ios', 6, '2300mhz')
GO
INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('Ios2', 7, '300mhz')
GO
INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('Xiaomi', 8, '300mhz')
GO
INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('Mac', 9, '3200mhz')
GO
INSERT INTO	Plataforma(Nombre, Numero, Capacidad) VALUES('Xiaomi', 10, '300mhz')
GO
UPDATE Plataforma SET Nombre = 'Prueba' WHERE idPlataforma = 2
DELETE FROM Plataforma WHERE idPlataforma = 1
GO
select *from Plataforma
INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Pokeball', 200, 'Pokeball normal')
GO
INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Superball', 300, 'Mejor que la pokeball')
GO
INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Ultraball', 400, 'Mejor que la superball')
GO
INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Masterball', 500, 'Nunca falla')
GO
INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Mallaball', 400, 'Mejor contra bicho y agua')
GO
INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Lunaball', 200, 'Mejor con pokes lunares')
GO
INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Sanaball', 300, 'Cura a los pokemon')
GO
INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Lujoball', 200, 'Aumenta amistad')
GO
INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Aprioball', 200, 'Mejor con pokemon ya capturados')
GO
INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Velozball', 200, 'Funciona mejor en los primeros turnos')
GO
INSERT INTO	Pokeball(Nombre, Precio, Descripcion) VALUES('Turnoball', 200, 'Mas turnos mejor funciona')
GO
UPDATE Pokeball SET Nombre = 'Prueba' WHERE idPokeball = 2
DELETE FROM Pokeball WHERE idPokeball = 1
GO
select *from Pokeball
INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Pokedex con dos pantallas', 150, 'Solo da datos de los pokemon')
GO
INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Pokedex rectangular', 200, 'Da información de rutas')
GO
INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Gameboy', 330, 'Da información de evoluciones')
GO
INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Ds', 450, 'Da datos generales de los pokemon')
GO
INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Celular', 550, 'Da información casi detallada')
GO
INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Tableta', 650, 'se divide en regiones')
GO
INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Rotomdex', 760, 'Da información de todo')
GO
INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Rotomtelefono', 830, 'Se usa para monturas')
GO
INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Libro', 450, 'Pokedex antigua')
GO
INSERT INTO	Pokedex(Diseño, NumeroPokemon, Descripcion) VALUES('Rotomiphone', 950, 'Da arte del pokemon')
GO
UPDATE Pokedex SET Diseño = 'Prueba' WHERE idPokedex = 2
DELETE FROM Pokedex WHERE idPokedex = 1
GO
select *from Pokedex
INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('PokemonViolet', '03/12/2022', 'WWW.pokemon.com')
GO
INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('Wiki', '03/11/2010', 'WWW.Wikidex.com')
GO
INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('PokemonNormal', '03/12/2022', 'WWW.Nintendo.com')
GO
INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('Pokemon de cartas', '03/12/2022', 'WWW.TCG.com')
GO
INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('información y imagenes', '10/10/2022', 'WWW.ClubEntrenadorwa.com')
GO
INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('Pokemon con juegos', '03/10/2008', 'WWW.pokemonjuegos.com')
GO
INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('Pokemon blanco y negro con sus juegos', '03/12/2022', 'WWW.CartoonNetwork.com')
GO
INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('PokemonViolet', '03/12/2022', 'WWW.pokemonTienda.com')
GO
INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('PokemonScarlet', '03/12/2022', 'WWW.pokemonInfo.com')
GO
INSERT INTO	Pagina(Diseño, FechaCreacion, Link) VALUES('PokemonZafiro', '03/12/2022', 'WWW.pokemonLive.com')
GO
UPDATE Pagina SET Diseño = 'Prueba' WHERE idPagina = 2
DELETE FROM Pagina WHERE idPagina = 1
GO
select *from Pagina
INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Pirata', 1, 'Cinderace y tsarena')
GO
INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Elegante', 2, 'Absol y buzzwole')
GO
INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Espacial', 3, 'Gengar')
GO
INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Divino', 4, 'Ninetales y Delphox')
GO
INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Castillonieve', 5, 'Gardevoir')
GO
INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Marcial', 6, 'Machamp')
GO
INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Vaquero', 7, 'Zeraora, Greedent y Cramorant')
GO
INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Uniforme', 9, 'Espeon, charizard y Snorlax')
GO
INSERT INTO	Skin(Nombre, Numero, Pokemon) VALUES('Indumentaria', 10, 'Glaceon')
GO
UPDATE Skin SET Nombre = 'Prueba' WHERE idSkin = 2
DELETE FROM Skin WHERE idSkin = 1
GO
select *From Skin

INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2010', 2000, 'Trofeo')
GO
INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2011', 2000, 'Trofeo')
GO
INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2012', 3000, 'Trofeo')
GO
INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2013', 4000, 'Dinero')
GO
INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2015', 20000, 'Consola')
GO
INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Unite', 21000, 'Dinero')
GO
INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2016', 2300, 'Trofeo')
GO
INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2017', 2000, 'Trofeo')
GO
INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2018', 2000, 'Trofeo')
GO
INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2019', 2000, 'Trofeo')
GO
INSERT INTO	Torneo(Nombre, Participantes, Premio) VALUES('Worldcup2020', 2000, 'Trofeo')
GO
UPDATE Torneo SET Nombre = 'Prueba' WHERE idTorneo = 2
DELETE FROM Torneo WHERE idTorneo = 1
GO
select *from Torneo
INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto elegante', 1, 'Smoquin')
GO
INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto Gengar', 2, 'Morado con capucha')
GO
INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto Delphox', 3, 'Abrigo rojo')
GO
INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto zubat', 4, 'Capucha morada')
GO
INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto Aegislash', 5, 'Traje formal')
GO
INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto Pirata', 6, 'Disfraz de pirata')
GO
INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto Bombero', 7, 'Disfraz de bombero')
GO
INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto Lionel', 8, 'Ropa total de lionel')
GO
INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto AEOS', 9, 'Uniforme morado Aeos')
GO
INSERT INTO	Vestuario (Nombre, Numero, Diseño) VALUES('Conjunto Blissey', 10, 'ropa rosa')
GO
UPDATE Vestuario SET Nombre = 'Prueba' WHERE idVestuario = 2
DELETE FROM Vestuario WHERE idVestuario = 1
GO
select *from Vestuario
INSERT INTO	Generacion(FechaSalida, Numero, Descripcion,idPokedex) VALUES('03/11/1996', 1, 'La primera generación en kanto', 2)
GO
INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/1999', 2, 'La segunda generación en Johto', 2)
GO
INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2000', 3, 'La Tercera generación en hoenn', 3)
GO
INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2006', 4, 'La Cuarta generación en Sinnoh', 4)
GO
INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2010', 5, 'La quinta generación en Unova', 5)
GO
INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2013', 6, 'La sexta generación en kalos', 6)
GO
INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2016', 7, 'La septima generación en Alola', 7)
GO
INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2019', 8, 'La Octava generación en galar', 8)
GO
INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2021', 9, 'La Novena generación en hisui', 10)
GO
INSERT INTO	Generacion(FechaSalida, Numero, Descripcion, idPokedex) VALUES('03/11/2022', 10, 'La Decima generación en Paldea', 9)
GO
UPDATE Generacion SET FechaSalida = '04/11/2022' WHERE idGeneracion = 2
DELETE FROM Generacion WHERE idGeneracion = 1
GO
Select *from Generacion
INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad petalia', 1, 'Normal', 2) --ocupa geeneracion
GO
INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad Robusta', 2, 'Normal', 2)
GO
INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad Abolaria', 3, 'Normal', 3)
GO
INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad Algaria', 4, 'Hierbas', 3)
GO
INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad Malvalona', 5, 'Cartas', 4)
GO
INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad Verde', 6, 'Normal', 3)
GO
INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Pueblo esmeralda', 7, 'CentroPokemon', 3)
GO
INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad portual', 8, 'Comercio', 8)
GO
INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Ciudad Portual', 9, 'Normal', 7)
GO
INSERT INTO	Tienda(Ubicacion, Numero, Tipo,idGeneracion) VALUES('Calle victoria', 10, 'Normal', 9)
GO
UPDATE Tienda SET Ubicacion = 'Prueba' WHERE idTienda = 2
DELETE FROM Tienda WHERE idTienda = 1
GO
select *from Estudio
INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Liga añil', '03/12/2022', 2, 2, 2)
GO
INSERT INTO Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Liga naranja', '03/12/2022', 4,2, 2)
GO
INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES( '03/12/2022', 'Liga Johto', '03/12/2022', 3, 3, 2)
GO
INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Advanced', '03/12/2022', 3, 4, 2)
GO
INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Hoenn', '03/12/2022', 2, 5, 2)
GO
INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Shinooh', '03/12/2022', 4, 6, 3)
GO
INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Unova', '03/12/2022', 5, 7, 2)
GO
INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Kalos', '03/12/2022', 6, 2 , 2)
GO
INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'XYZ', '03/12/2022', 7, 2, 2)
GO
INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'XY', '03/12/2022', 6, 2, 2)
GO
INSERT INTO	Anime(Fechainicio, Nombre, FechaFinalización, idGeneracion, idGuion, idEstudio) VALUES('03/12/2022', 'Alola', '03/12/2022', 7, 2, 2)
GO
UPDATE Anime SET Nombre = 'Prueba' WHERE idAnime = 2
DELETE FROM Anime WHERE idAnime = 1
GO
select *from Anime
INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(200, 'Aplicación 1', 'Aplicación para celular', 8)
GO
INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(300, 'Aplicación 2', 'Aplicación para celular', 5)
GO
INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(500, 'Aplicación 3', 'Aplicación para celular', 6)
GO
INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(200, 'Aplicación 4', 'Aplicación para celular', 2)
GO
INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(231, 'Aplicación 5', 'Aplicación para Ios', 2)
GO
INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(120, 'Aplicación 6', 'Aplicación para celular', 3)
GO
INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(200, 'Aplicación 7', 'Aplicación para celular', 4)
GO
INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(200, 'Aplicación 8', 'Aplicación para celular', 2)
GO
INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(320, 'Aplicación 9', 'Aplicación para celular', 2)
GO
INSERT INTO	Aplicacion(Tamaño, Nombre, Descripción, idGeneracion) VALUES(1230, 'Aplicación 10', 'Aplicación para celular', 5)
GO
UPDATE Aplicacion SET Nombre = 'Prueba' WHERE idAplicacion = 2
DELETE FROM Aplicacion WHERE idAplicacion = 1
GO
select *from Aplicacion
INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista1', 'hiroshima', 'calle32', 1,'33452', 'RAOP020917HCLMRBA7', 2)
GO
INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista2', 'hiroshima', 'calle12', 2,'25789', 'RDS023917HCLM2BA7', 2)
GO
INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista3', 'Tokyo', 'calle3e3', 3,'23456', 'DSK02337HCLMRBA7', 3)
GO
INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista4', 'hiyasama', 'calle25', 4,'86686', 'SDRT920917HCLMRBA7', 4)
GO
INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista5', 'hiroshima', 'calle32', 5,'98675', 'RAOP020917HCLMRBA7', 5)
GO
INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista6', 'hiroshima', 'calle234', 6,'98765', 'DKAM020917HCLMRBA7', 1)
GO
INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista7', 'Odaiba', 'calle32', 7,'87665', 'LSAE30917HCLMRBA7', 7)
GO
INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista8', 'hiroshima', 'calle322', 8,'90876', 'RAOP020917HCLMRBA7', 8)
GO
INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista9', 'hiroshima', 'calle322', 9,'45678', 'RAOP020917HCLMRBA7', 9)
GO
INSERT INTO	Artista (Nombre, Ciudad, Calle, Numero,CP,CURP, idGeneración) VALUES('Artista10', 'hiroshima', 'calle3256', 10,'86754', 'RAOP020917HCLMRBA7', 10)
GO
UPDATE Artista SET Nombre = 'Prueba' WHERE idArtista = 2
DELETE FROM Artista WHERE idArtista = 1
GO
Select *from Artista
INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'PokemonRojo', 1233, 2, 2)
GO
INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'Pokemonazul', 1233, 2, 2)
GO
INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'PokemonOro', 2134, 2, 2)
GO
INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'PokemonPlata', 5424, 2, 2)
GO
INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('04/10/2022', 'PokemonRuby', 8764, 3, 3)
GO
INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('11/02/2022', 'PokemonZafiro', 1233, 3, 3)
GO
INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'PokemonEscudo', 645322, 8, 8)
GO
INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'PokemonEspada', 1233, 8, 8)
GO
INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'PokemonPlatino', 1231, 4, 4)
GO
INSERT INTO	Videojuego(FechaSalida, Nombre, CopiasVendidas, idGeneracion, idDesarrollador) VALUES('03/12/2022', 'PokemonBlanco', 7432, 5, 5)
GO
UPDATE Videojuego SET Nombre = 'Prueba' WHERE idVideojuego = 2
DELETE FROM Objeto WHERE idObjeto = 1
GO
select *from Videojuego
INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada1', 1, '11/12/2022' , '11/12/2022', 2)
GO
INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada2', 2, '11/12/2022' , '11/12/2022', 2)
GO
INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada3', 3, '12/10/2022' , '12/19/2022', 3)
GO
INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada4', 4, '11/09/2022' , '11/12/2022', 4)
GO
INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada5', 5, '10/12/2022' , '10/12/2022', 6)
Go
INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada6', 6, '09/12/2022' , '09/12/2022', 2)
GO
INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada7', 7, '09/12/2022' , '09/12/2022', 2)
GO
INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada8', 8, '09/12/2022' , '09/12/2022', 2)
GO
INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada9', 9, '10/12/2022' , '10/12/2022', 2)
GO
INSERT INTO	Temporada(Nombre, Numero, Fechainicio, Fechafinal, idVideojuego) VALUES('Temporada10', 10, '10/12/2022' , '10/12/2022', 3)
GO
UPDATE Temporada SET Nombre = 'Prueba' WHERE idTemporada = 2
DELETE FROM Temporada WHERE idTemporada = 1
GO
select *from Temporada
INSERT INTO	Transmision(Canal, Numero, Horario, idAnime) VALUES('Canal1', 1, '10/12/2022' , 2)
GO
INSERT INTO	Transmision(Canal, Numero, Horario, idAnime) VALUES('Canal2', 2, '10/12/2022' , 2)
GO
INSERT INTO	Transmision(Canal, Numero, Horario, idAnime) VALUES('Canal3', 3, '10/12/2022' , 3)
GO
INSERT INTO	Transmision(Canal, Numero, Horario, idAnime) VALUES('Canal4', 4, '10/12/2022' , 4)
GO
INSERT INTO	Transmision(Canal, Numero, Horario, idAnime) VALUES('Canal5', 5, '10/12/2022' , 4)
GO
INSERT INTO	Transmision(Canal, Numero, Horario, idAnime) VALUES('Canal6', 6, '10/12/2022' , 5)
GO
INSERT INTO	Transmision(Canal, Numero, Horario, idAnime) VALUES('Canal7', 7, '10/12/2022' , 6)
GO
INSERT INTO	Transmision(Canal, Numero, Horario, idAnime) VALUES('Canal8', 8, '10/12/2022' , 7)
GO
INSERT INTO	Transmision(Canal, Numero, Horario, idAnime) VALUES('Canal9', 9, '10/12/2022' , 8)
GO
INSERT INTO	Transmision(Canal, Numero, Horario, idAnime) VALUES('Canal10', 10, '10/12/2022' , 9)
GO
UPDATE Transmision SET Canal = 'Prueba' WHERE idTransmision = 2
DELETE FROM Transmision WHERE idTransmision = 1
GO
Select *from Transmision
INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(200, 'Pase1', 'Temática1' , 2)
GO
INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(200, 'Pase2', 'Temática2' , 2)
GO
INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(220, 'Pase3', 'Temática3' , 2)
GO
INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(232, 'Pase4', 'Temática4' , 2)
GO
INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(300, 'Pase5', 'Temática5' , 3)
GO
INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(200, 'Pase6', 'Temática6' , 4)
GO
INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(200, 'Pase7', 'Temática7' , 5)
GO
INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(200, 'Pase8', 'Temática8' , 6)
GO
INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(200, 'Pase9', 'Temática9' , 7)
GO
INSERT INTO	BattlePass(Precio, Nombre, Tematica, idTemporada) VALUES(200, 'Pase10', 'Temática10' , 8)
GO
select *from Temporada
UPDATE BattlePass SET Nombre = 'Prueba' WHERE idBattlePass = 2
DELETE FROM BattlePass WHERE idBattlePass = 1
GO
select *from BattlePass
INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(1, '12/09/2022', 'Rareza1', 2)
GO
INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(2, '12/09/2022', 'Rareza2', 2)
GO
INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(3, '12/09/2022', 'Rareza3', 3)
GO
INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(4, '12/09/2022', 'Rareza1', 2)
GO
INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(5, '12/09/2022', 'Rareza1', 5)
GO
INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(6, '12/09/2022', 'Rareza6', 6)
GO
INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(7, '12/09/2022', 'Rareza7', 7)
GO
INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(8, '12/09/2022', 'Rareza1', 7)
GO
INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(9, '12/09/2022', 'Rareza1', 3)
GO
INSERT INTO	Carta(Codigo, FechaCreacion, Rareza, idExpansion) VALUES(10, '12/09/2022', 'Rareza1', 2)
GO
UPDATE Carta SET Codigo = '12' WHERE idCarta = 2
DELETE FROM Carta WHERE idCarta = 1
GO
select *from Carta
INSERT INTO	Jugador(Usuario, Contrasena, Correo, idEnlinea, idMembresia) VALUES('Usuario1', 'Contrasena1', 'Correo1@gmail.com', 2, 2)
GO
INSERT INTO	Jugador(Usuario, Contrasena, Correo, idEnlinea, idMembresia) VALUES('Usuario2', 'Contrasena2', 'Correo2@gmail.com', 2, 2)
GO
INSERT INTO	Jugador(Usuario, Contrasena, Correo, idEnlinea, idMembresia) VALUES('Usuario3', 'Contrasena3', 'Correo3@gmail.com', 3, 3)
GO
INSERT INTO	Jugador(Usuario, Contrasena, Correo, idEnlinea, idMembresia) VALUES('Usuario4', 'Contrasena4', 'Correo4@gmail.com', 4, 4)
GO
INSERT INTO	Jugador(Usuario, Contrasena, Correo, idEnlinea, idMembresia) VALUES('Usuario5', 'Contrasena5', 'Correo5@gmail.com', 4, 5)
GO
INSERT INTO	Jugador(Usuario, Contrasena, Correo, idEnlinea, idMembresia) VALUES('Usuario7', 'Contrasena7', 'Correo7@gmail.com', 4, 6)
GO
INSERT INTO	Jugador(Usuario, Contrasena, Correo, idEnlinea, idMembresia) VALUES('Usuario8', 'Contrasena8', 'Correo8@gmail.com', 3, 3)
GO
INSERT INTO	Jugador(Usuario, Contrasena, Correo, idEnlinea, idMembresia) VALUES('Usuario9', 'Contrasena9', 'Correo9@gmail.com', 2, 2)
GO
INSERT INTO	Jugador(Usuario, Contrasena, Correo, idEnlinea, idMembresia) VALUES('Usuario10', 'Contrasena10', 'Correo10@gmail.com', 3, 3)
GO
UPDATE Jugador SET Usuario = 'Prueba' WHERE idJugador = 2
DELETE FROM Jugador WHERE idJugador = 1
GO
select *from Jugador
INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 1, '03/12/2022', 'Metodo1', 2)
GO
INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 2, '03/12/2022', 'Metodo2', 2)
GO
INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 3, '03/12/2022', 'Metodo3', 3)
GO
INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 4, '03/12/2022', 'Metodo4', 2)
GO
INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 5, '03/12/2022', 'Metodo5', 5)
GO
INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 6, '03/12/2022', 'Metodo6', 3)
GO
INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 7, '03/12/2022', 'Metodo1', 2)
GO
INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 8, '03/12/2022', 'Metodo2', 3)
GO
INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 9, '03/12/2022', 'Metodo3', 9)
GO
INSERT INTO	Compra(Codigo, Fecha, MetodoPago, idJugador) VALUES( 10, '03/12/2022', 'Metodo1', 9)
GO
UPDATE Compra SET Codigo = '21' WHERE idCompra = 2
DELETE FROM Compra WHERE idCompra = 1
GO
select *from Compra
INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona1', 'Director1', 'Lenguaje1', 2)
GO
INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona2', 'Director2', 'Lenguaje2', 3)
GO
INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona3', 'Director3', 'Lenguaje3', 4)
GO
INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona4', 'Director4', 'Lenguaje4', 5)
GO
INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona5', 'Director5', 'Lenguaje5', 6)
GO
INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona6', 'Director6', 'Lenguaje6', 5)
GO
INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona7', 'Director7', 'Lenguaje7', 6)
GO
INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona1', 'Director8', 'Lenguaje8', 9)
GO
INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona1', 'Director9', 'Lenguaje9', 10)
GO
INSERT INTO	Doblaje(Zona, Director, Lenguaje, idAnime) VALUES( 'Zona10', 'Director10', 'Lenguaje10', 3)
GO
UPDATE Doblaje SET Zona = 'Prueba' WHERE idDoblaje = 2
DELETE FROM Doblaje WHERE idDoblaje = 1
GO
select *from Doblaje
INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 1, 'Piedra', 23, 3)
GO
INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 2, 'Amistad', 232, 2)
GO
INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 3, 'AmistadDia', 4, 2)
GO
INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 4, 'AmistadNoche', 5, 2)
GO
INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 5, 'Objetoequipado', 24, 2)
GO
INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 1, 'Intercambio', 23, 2)
GO
INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 1, 'SUbir de nivel con siniestro', 1, 6)
GO
INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 1, 'Subir de nivel', 870, 2)
GO
INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 1, 'Ataque especifico', 31, 4)
GO
INSERT INTO	Evolucion(Numero, Descripcion, PokemonUso, idGeneracion) VALUES( 1, 'Pasos', 324, 8)
GO
UPDATE Evolucion SET Descripcion = 'Prueba' WHERE idEvolucion = 2
DELETE FROM Evolucion WHERE idEvolucion = 1
GO
select *from Evolucion
INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo1', 'Objeto exclusivo', '03/12/2022', 2)
GO
INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo2', 'Objeto exclusivo', '03/12/2022', 2)
GO
INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo3', 'Objeto exclusivo', '03/12/2022', 8)
GO
INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo4', 'Objeto exclusivo', '03/12/2022', 3)
GO
INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo5', 'Objeto exclusivo', '03/12/2022', 2)
GO
INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo6', 'Objeto exclusivo', '03/12/2022', 3)
GO
INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo7', 'Objeto exclusivo', '03/12/2022', 4)
GO
INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo8', 'Objeto exclusivo', '03/12/2022', 8)
GO
INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo9', 'Objeto exclusivo', '03/12/2022', 7)
GO
INSERT INTO	Exclusivo(Nombre, Descripcion, FechaDisponibilidad, idVideojuego) VALUES( 'Exclusivo1o', 'Objeto exclusivo', '03/12/2022', 2)
GO
UPDATE Exclusivo SET Nombre = 'Prueba' WHERE idExclusivo = 2
DELETE FROM Exclusivo WHERE idExclusivo = 1
GO
select *From Exclusivo
INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 1, 'Creador1', 'Fangame1', 2)
GO
INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 2, 'Creador2', 'Fangame2', 2)
GO
INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 3, 'Creador3', 'Fangame3', 3)
GO
INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 4, 'Creador4', 'Fangame4', 8)
GO
INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 5, 'Creador5', 'Fangame5', 4)
GO
INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 6, 'Creador6', 'Fangame6', 6)
GO
INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 7, 'Creador7', 'Fangame7', 7)
GO
INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 8, 'Creador8', 'Fangame8', 8)
GO
INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 9, 'Creador9', 'Fangame9', 9)
GO
INSERT INTO	FanGame(Numero, Creador, Nombre, idGeneracion) VALUES( 10, 'Creador10', 'Fangame10', 10)
GO
UPDATE FanGame SET Nombre = 'Prueba' WHERE idFanGame = 2
DELETE FROM FanGame WHERE idFanGame = 1
GO
select *from FanGame
INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador1', 'Omega red', 2)
GO
INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador2', 'Kaizo', 3)
GO
INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador3', 'Enchanced', 4)
GO
INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Ceador4', 'Glazed', 3)
GO
INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador5', 'Espada escudo', 5)
GO
INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador6', 'Flora sky', 3)
GO
INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador7', 'Nine', 9)
GO
INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'DS', 'Creador8', 'Balze black', 2)
GO
INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador9', 'Blaze', 5)
GO
INSERT INTO	Hackrom(Plataforma, Creador, Nombre, idVideojuego) VALUES( 'GBA', 'Creador10', 'Dark rising', 2)
GO
UPDATE Hackrom SET Nombre = 'Prueba' WHERE idHackrom = 2
DELETE FROM Hackrom WHERE idHackrom = 1
GO
select *from Hackrom
INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga1', '03/12/2022', 1, 2, 2)
GO
INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga2', '03/12/2022', 2, 2, 2)
GO
INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga3', '03/12/2022', 3, 4, 6)
GO
INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga4', '03/12/2022', 4, 5, 6)
GO
INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga5', '03/12/2022', 5, 7, 5)
GO
INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga6', '03/12/2022', 6, 5, 5)
GO
INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga7', '03/12/2022', 7, 8, 8)
GO
INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga8', '03/12/2022', 8,2, 4)
GO
INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga1', '03/12/2022', 9, 9, 2)
GO
INSERT INTO	Manga(Nombre, FechaSalida, Numero, idGeneracion, idGuion) VALUES( 'Manga10', '03/12/2022', 10, 8,2)
GO
UPDATE Manga SET Nombre = 'Prueba' WHERE idManga = 2
DELETE FROM Manga WHERE idManga = 1
GO
select *from Manga
INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'CombateDoble', 'Combate de 4 jugadores', 'Pelea de 4 jugadores', 2)
GO
INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'RepartirExperienciatodos', 'Objeto que da experiencia', 'Mediante la bolsa', 6)
GO
INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'Experiencia a todos', 'Todos reciben experiencia', 'Derrotando un enemigo', 8)
GO
INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'Incursiones', 'Combate de 4 jugadores vs un pokemon', 'En un nido incursión', 8)
GO
INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'Monturas', 'Usar pokemon para viajar', 'Con un objeto de montura', 7)
GO
INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'Megaevolución', 'Mega evolucionar un pokemon', 'MegaAro y MegaPiedra', 6)
GO
INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'Poder Z', 'Un enorme ataque', 'Aro Z', 7)
GO
INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'Dinamax', 'Hace al pokemon gigante', 'Pulsera dynamax', 8)
GO
INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'Teracristalización', 'Cambia el tipo del pokemon', 'Anillotera', 9)
GO
INSERT INTO	Mecanica(Nombre, Descripcion, Activacion, idGeneracion) VALUES( 'CombateRoyal', 'Combate de 4 jugadores todos vs todos', 'Pelea de 4 jugadores', 7)
GO
UPDATE Mecanica SET Nombre = 'Prueba' WHERE idMecanica = 2
DELETE FROM Mecanica WHERE idMecanica = 1
GO
select *from Mecanica
INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Ascuas', 14, 'Lanza pequeñas ascuas', 2)
GO
INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Poder pasado', 60, 'Lanza varias piedras antiguas', 3)
GO
INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'canto helado', 50, 'Lanza hielo', 4)
GO
INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Liofilización', 60, 'Congela el agua', 4)
GO
INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Mazazo', 120, 'Crea un mazo de planta', 4)
GO
INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Onda voltio', 70, 'Nunca falla', 3)
GO
INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Voto planta', 70, 'Lanza flores', 6)
GO
INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Voto agua', 70, 'Lanza un chorro de agua', 6)
GO
INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Voto fuego', 70, 'Lanza un ataque de fuego', 6)
GO
INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Voto combinado', 80, 'Cuando dos votos se combinan', 6)
GO
INSERT INTO	Movimiento(Nombre, Poder, Descripcion, idGeneracion) VALUES( 'Bomba lodo', 80, 'Lanza una bomba de lodo', 3)
GO
UPDATE Movimiento SET Nombre = 'Prueba' WHERE idMovimiento = 2
DELETE FROM Movimiento WHERE idMovimiento = 1
GO
select *from Movimiento
INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Combate', 1, 4, 2)
GO
INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Combate entrenador', 2, 3, 2)
GO
INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Ruta', 3, 5, 4)
GO
INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Surf', 4, 5, 2)
GO
INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Casa', 5, 31, 2)
GO
INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Lider', 6, 3, 3)
GO
INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Pescando', 7, 5, 3)
GO
INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Campeon', 8, 5, 3)
GO
INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'AltoMando', 9, 3, 3)
GO
INSERT INTO	Soundtrack(Uso, Numero, Duración, idVideojuego) VALUES( 'Calle victoria', 10, 3,5)
GO
UPDATE Soundtrack SET Uso = 'Prueba' WHERE idSoundtrack = 2
DELETE FROM Soundtrack WHERE idSoundtrack = 1
GO
select *from Soundtrack
INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Stadium', 1, 329,2)
GO
INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Stadium2', 2, 3221,2)
GO
INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Colloseum', 3, 3329,3)
GO
INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'XD', 4, 3249,3)
GO
INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Mundo Misteerioso rojo', 5, 3229,3)
GO
INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Rangers', 6, 3229, 4)
GO
INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Exploradores cielo', 7, 3293,4)
GO
INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Portales infinito', 8, 3229,5)
GO
INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Mega', 9, 2191,6)
GO
INSERT INTO	Spinoff(Nombre, Numero, Ventas, idGeneracion) VALUES( 'Dx', 10, 3229,3)
GO
UPDATE Spinoff SET Nombre = 'Prueba' WHERE idSpinoff = 2
DELETE FROM Spinoff WHERE idSpinoff = 1
GO
select *from Spinoff
INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona1', 1, 'surf',2)
GO
INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona2', 2, 'Acceso2',2)
GO
INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona3', 3, 'Acceso3',3)
GO
INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona4', 4, 'Acceso4',4)
GO
INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona5', 5, 'Acceso5',3)
GO
INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona6', 6, 'Acceso1',4)
GO
INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona7', 7, 'Acceso7', 4)
GO
INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona8', 8, 'surf',2)
GO
INSERT INTO	Zona(Nombre, Numero, Acceso, idGeneracion) VALUES( 'Zona9', 8, 'surf',2)
GO
UPDATE Zona SET Nombre = 'Prueba' WHERE idZona = 2
DELETE FROM Zona WHERE idZona = 1
GO
select *from Zona
INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 2, 2)
GO	
INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 2, 2)
GO
INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 3, 2)
GO
INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 4, 3)
GO
INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 5, 3)
GO
INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 6, 2)
GO
INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 7, 3)
GO
INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 7, 5)
GO
INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 8, 3)
GO
INSERT INTO	AnimeEpisodio(idAnime, idEpisodio)VALUES( 9, 6)
GO
UPDATE AnimeEpisodio SET estatus = '0' WHERE idAnimeEpisodio = 2
DELETE FROM AnimeEpisodio WHERE idAnimeEpisodio = 1
GO
select *from AnimeEpisodio
INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 2, 2)
GO
INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 3, 2)
GO
INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 7, 3)
GO
INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 7, 2)
GO
INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 2, 6)
GO
INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 4, 8)
GO
INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 5, 9)
GO
INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 7, 10)
GO
INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 8, 10)
GO
INSERT INTO	AnimeEspecial(idAnime, idEspecial)VALUES( 9, 3)
GO
UPDATE AnimeEspecial SET estatus = '0' WHERE idAnimeEspecial = 2
DELETE FROM AnimeEspecial WHERE idAnimeEspecial = 1
GO
select *from AnimeEspecial
INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 7, 2)
GO
INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 7, 2)
GO
INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 8, 3)
GO
INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 2, 4)
GO
INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 7, 5)
GO
INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 3, 6)
GO
INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 4, 7)
GO
INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 5, 8)
GO
INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 8, 9)
GO
INSERT INTO	AnimePelicula(idAnime, idPelicula)VALUES( 8, 10)
GO
UPDATE AnimePelicula SET estatus = '0' WHERE idAnimePelicula = 2
DELETE FROM AnimePelicula WHERE idAnimePelicula = 1
GO
select *from AnimePelicula
INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 2, 2)
GO
INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 2, 2)
GO
INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 3, 3)
GO
INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 4, 4)
GO
INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 5, 5)
GO
INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 6, 6)
GO
INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 7, 8)
GO
INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 8, 8)
GO
INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 9, 9)
GO
INSERT INTO	ConsolaContro(idConsola, idContro)VALUES( 10, 10)
GO
UPDATE ConsolaContro SET estatus = '0' WHERE idConsolaContro = 2
DELETE FROM ConsolaContro WHERE idConsolaContro = 1
GO
select *from ConsolaContro
INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 2, 2)
GO
INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 2, 2)
GO
INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 3, 3)
GO
INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 4, 4)
GO
INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 5, 5)
GO
INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 6, 6)
GO
INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 7, 7)
GO
INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 8, 8)
GO
INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 9, 9)
GO
INSERT INTO	ConsolaVideojuego(idConsola, idVideojuego)VALUES( 10, 10)
GO
UPDATE ConsolaVideojuego SET estatus = '0' WHERE idConsolaVideojuego = 2
DELETE FROM ConsolaVideojuego WHERE idConsolaVideojuego = 1
GO
select *from ConsolaVideojuego
INSERT INTO	DistribucionMercancia(idDistribucion, idMercancia)VALUES( 2, 2)
GO
INSERT INTO	DistribucionMercancia(idDistribucion, idMercancia)VALUES( 2, 2)
GO
INSERT INTO	DistribucionMercancia(idDistribucion, idMercancia)VALUES( 3, 3)
GO
INSERT INTO	DistribucionMercancia(idDistribucion, idMercancia)VALUES( 4, 4)
GO
INSERT INTO	DistribucionMercancia(idDistribucion, idMercancia)VALUES( 5, 5)
GO
INSERT INTO	DistribucionMercancia(idDistribucion, idMercancia)VALUES( 6, 6)
GO
INSERT INTO	DistribucionMercancia(idDistribucion, idMercancia)VALUES( 7, 7)
GO
INSERT INTO	DistribucionMercancia(idDistribucion, idMercancia)VALUES( 8, 8)
GO
INSERT INTO	DistribucionMercancia(idDistribucion, idMercancia)VALUES( 9, 9)
GO
INSERT INTO	DistribucionMercancia(idDistribucion, idMercancia)VALUES( 10, 10)
GO
UPDATE DistribucionMercancia SET estatus = '0' WHERE idDistribucionMercancia = 2
DELETE FROM DistribucionMercancia WHERE idDistribucionMercancia = 1
GO
select *from DistribucionMercancia
INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 2, 2)
GO
INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 2, 2)
GO
INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 3, 3)
GO
INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 4, 4)
GO
INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 5, 5)
GO
INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 6, 6)
GO
INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 7, 7)
GO
INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 8, 8)
GO
INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 9, 9)
GO
INSERT INTO	GeneracionEntrenador(idGeneracion, idEntrenador)VALUES( 10, 10)
GO
UPDATE GeneracionEntrenador SET estatus = '0' WHERE idGeneracionEntrenador = 2
DELETE FROM GeneracionEntrenador WHERE idGeneracionEntrenador = 1
GO
select *from GeneracionEntrenador
INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 2, 2)
GO
INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 2, 2)
GO
INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 3, 3)
GO
INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 4, 4)
GO
INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 5, 5)
GO
INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 6, 6)
GO
INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 7, 7)
GO
INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 8, 8)
GO
INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 9, 9)
GO
INSERT INTO	GeneracionMercancia(idGeneracion, idMercancia)VALUES( 10, 10)
GO
UPDATE GeneracionMercancia SET estatus = '0' WHERE idGeneracionMercancia = 2
DELETE FROM GeneracionMercancia WHERE idGeneracionMercancia = 1
GO
select *from GeneracionMercancia
INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 2, 2)
GO
INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 2, 2)
GO
INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 3, 3)
GO
INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 4, 4)
GO
INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 5, 5)
GO
INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 6, 6)
GO
INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 7, 7)
GO
INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 8, 8)
GO
INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 9, 9)
GO
INSERT INTO	ColaboracionCarta(idColaboracion, idCarta)VALUES( 10, 10)
GO
UPDATE ColaboracionCarta SET estatus = '0' WHERE idColaboracionCarta = 2
DELETE FROM ColaboracionCarta WHERE idColaboracionCarta = 1
GO
Select *from ColaboracionCarta
INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 2, 2)
GO
INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 2, 2)
GO
INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 3, 3)
GO
INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 4, 4)
GO
INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 5, 5)
GO
INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 6, 6)
GO
INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 7, 7)
GO
INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 8, 8)
GO
INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 9, 9)
GO
INSERT INTO	CartaArtista(idCarta, idArtista)VALUES( 10, 10)
GO
UPDATE CartaArtista SET estatus = '0' WHERE idCartaArtista = 2
DELETE FROM CartaArtista WHERE idCartaArtista = 1
GO
select *from CartaArtista
INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 2, 2)
GO
INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 2, 2)
GO
INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 3, 3)
GO
INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 4, 4)
GO
INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 5, 5)
GO
INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 6, 6)
GO
INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 7, 7)
GO
INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 8, 8)
GO
INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 9, 9)
GO
INSERT INTO	MangaImprenta(idManga, idImprenta)VALUES( 10, 10)
GO
UPDATE MangaImprenta SET estatus = '0' WHERE idMangaImprenta = 2
DELETE FROM MangaImprenta WHERE idMangaImprenta = 1
GO
select*from MangaImprenta 
INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 2, 2)
GO
INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 2, 2)
GO
INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 3, 3)
GO
INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 4, 4)
GO
INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 5, 5)
GO
INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 6, 6)
GO
INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 7, 7)
GO
INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 8, 8)
GO
INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 9, 9)
GO
INSERT INTO	MercanciaPagina(idMercancia, idPagina)VALUES( 10, 10)
GO
UPDATE MercanciaPagina SET estatus = '0' WHERE idMercanciaPagina = 2
DELETE FROM MercanciaPagina WHERE idMercanciaPagina = 1
GO
select *from MercanciaPagina
INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 2, 2)
GO
INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 2, 2)
GO
INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 3, 3)
GO
INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 4, 4)
GO
INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 5, 5)
GO
INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 6, 6)
GO
INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 7, 7)
GO
INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 8, 8)
GO
INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 9, 9)
GO
INSERT INTO	ObjetoTienda(idObjeto, idTienda)VALUES( 10, 10)
GO
UPDATE ObjetoTienda SET estatus = '0' WHERE idObjetoTienda = 2
DELETE FROM ObjetoTienda WHERE idObjetoTienda = 1
GO
select *from ObjetoTienda
INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 2, 2)
GO
INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 2, 2)
GO
INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 3, 3)
GO
INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 4, 4)
GO
INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 5, 5)
GO
INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 6, 6)
GO
INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 7, 7)
GO
INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 8, 8)
GO
INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 9, 9)
GO
INSERT INTO	PokeballTienda(idPokeball, idTienda)VALUES( 10, 10)
GO
UPDATE PokeballTienda SET estatus = '0' WHERE idPokeballTienda = 2
DELETE FROM PokeballTienda WHERE idPokeballTienda = 1
GO
select *from PokeballTienda
INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 5, 2)
GO
INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 4, 2)
GO
INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 5, 3)
GO
INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 6, 4)
GO
INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 7, 5)
GO
INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 8, 5)
GO
INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 9, 6)
GO
INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 10, 7)
GO
INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 3, 8)
GO
INSERT INTO	TemporadaSkin(idTemporada, idSkin)VALUES( 6, 9)
GO
UPDATE TemporadaSkin SET estatus = '0' WHERE idTemporadaSkin = 2
DELETE FROM TemporadaSkin WHERE idTemporadaSkin = 1
GO
select *from TemporadaSkin
INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 5, 5)
GO
INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 4, 2)
GO
INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 5, 3)
GO
INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 6, 4)
GO
INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 7, 5)
GO
INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 8, 6)
GO
INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 9, 7)
GO
INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 10, 8)
GO
INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 6, 9)
GO
INSERT INTO	TemporadaVestuario(idTemporada, idVestuario)VALUES( 7, 10)
GO
UPDATE TemporadaVestuario SET estatus = '0' WHERE idTemporadaVestuario = 2
DELETE FROM TemporadaVestuario WHERE idTemporadaVestuario = 1
GO
select *from TemporadaVestuario
INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 2, 3)
GO
INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 2, 2)
GO
INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 3, 3)
GO
INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 4, 4)
GO
INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 5, 5)
GO
INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 6, 6)
GO
INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 7, 7)
GO
INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 8, 8)
GO
INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 9, 9)
GO
INSERT INTO	TorneoVideojuego(idTorneo, idVideojuego)VALUES( 10, 10)
GO
UPDATE TorneoVideojuego SET estatus = '0' WHERE idTorneoVideojuego = 2
DELETE FROM TorneoVideojuego WHERE idTorneoVideojuego = 1
GO
select *from TorneoVideojuego
INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 2, 2)
GO
INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 2, 2)
GO
INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 3, 3)
GO
INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 4, 4)
GO
INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 5, 5)
GO
INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 6, 6)
GO
INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 7, 7)
GO
INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 8, 8)
GO
INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 9, 9)
GO
INSERT INTO	VideojuegoEvento(idVideojuego, idEvento)VALUES( 10, 10)
GO
UPDATE VideojuegoEvento SET estatus = '0' WHERE idVideojuegoEvento = 2
DELETE FROM VideojuegoEvento WHERE idVideojuegoEvento = 1
GO
Select *from VideojuegoEvento
INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 2, 2)
GO
INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 2, 2)
GO
INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 3, 3)
GO
INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 4, 4)
GO
INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 5, 5)
GO
INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 6, 6)
GO
INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 7, 7)
GO
INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 8, 8)
GO
INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 9, 9)
GO
INSERT INTO	VideojuegoJugador(idVideojuego, idJugador)VALUES( 10, 9)
GO
UPDATE VideojuegoJugador SET estatus = '0' WHERE idVideojuegoJugador = 2
DELETE FROM VideojuegoJugador WHERE idVideojuegoJugador = 1
GO
select *from VideojuegoJugador
INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 2, 2)
GO
INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 2, 2)
GO
INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 3, 3)
GO
INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 4, 4)
GO
INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 5, 5)
GO
INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 6, 6)
GO
INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 7, 7)
GO
INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 8, 8)
GO
INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 9, 9)
GO
INSERT INTO	VideoJuegoColaboracion(idVideojuego, idColaboracion)VALUES( 10, 10)
GO
UPDATE VideoJuegoColaboracion SET estatus = '0' WHERE idVideojuegoColaboracion = 2
DELETE FROM VideoJuegoColaboracion WHERE idVideojuegoColaboracion = 1
GO
select *from VideoJuegoColaboracion
INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 2, 2)
GO
INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 2, 2)
GO
INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 3, 3)
GO
INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 4, 4)
GO
INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 5, 5)
GO
INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 6, 6)
GO
INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 7, 7)
GO
INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 8, 8)
GO
INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 9, 9)
GO
INSERT INTO	VideoJuegoContenidodescarga(idVideojuego, idContenidodescarga)VALUES( 10, 10)
GO
UPDATE VideoJuegoContenidodescarga SET estatus = '0' WHERE idVideojuegoContenidodescarga = 2
DELETE FROM VideoJuegoContenidodescarga WHERE idVideojuegoContenidodescarga = 1
GO
select *from VideoJuegoContenidodescarga
INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 2, 2)
GO
INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 2, 2)
GO
INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 3, 3)
GO
INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 4, 4)
GO
INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 5, 5)
GO
INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 6, 6)
GO
INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 7, 7)
GO
INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 8, 8)
GO
INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 9, 9)
GO
INSERT INTO	PlataformaAplicacion(idPlataforma, idAplicacion)VALUES( 10, 10)
GO
UPDATE PlataformaAplicacion SET estatus = '0' WHERE idPlataformaAplicacion = 2
DELETE FROM PlataformaAplicacion WHERE idPlataformaAplicacion = 1
GO
select *from PlataformaAplicacion
