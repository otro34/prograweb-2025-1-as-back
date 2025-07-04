INSERT INTO public.users(
	role, username, password, "createdAt", "updatedAt")
	VALUES ('admin','admin', '1234', NOW(), NOW());
	
INSERT INTO public.users(
	role, username, password, "createdAt", "updatedAt")
	VALUES ('user','jorge', '1234', NOW(), NOW());
	
select * from users
select * from games
	
--ALTER TABLE games ALTER COLUMN descripcion type varchar(2000)
	
INSERT INTO games (
    id, 
    name, 
    precio, 
    "precioConDescuento", 
    "porcentajeDescuento", 
    publisher, 
    genero, 
    caracteristicas, 
    descripcion, 
    "jugarCon", 
    funcionalidades, 
    img, 
    "imgThumb",
	"createdAt",
	"updatedAt"
	
) VALUES 
(
    1,
    'Indiana Jones y el Gran Círculo',
    250.00,
    200.00,
    20,
    'Bethesda Softworks',
    'Acción Aventura',
    'Optimizado para Xbox Series X, Xbox Play Anywhere, 15 funcionalidades de accesibilidad, 14 idiomas permitidos',
    'Descifra uno de los misterios más insondables de la historia en Indiana Jones y el Gran Círculo™, una aventura individual en primera persona que se desarrolla entre Indiana Jones: en busca del arca perdida™ e Indiana Jones y la última cruzada™. Corre el año 1937 y fuerzas abyectas recorren el planeta para quedarse con el poder secreto del Gran Círculo. Solo hay una persona capaz de detenerlas: Indiana Jones™. Encarna al legendario arqueólogo en este trepidante juego cinemático de acción y aventura de MachineGames, el galardonado estudio que lleva las riendas de la saga Wolfenstein y que en esta ocasión cuenta con el aclamadísimo diseñador Todd Howard como productor ejecutivo.',
    'PC, Xbox Series X/S',
    '4K Ultra HD, HDR10, Single Player, Frecuencia de Actualización Variable, Ray Traycing, 60 fps+, Dolby Atmos, Xbox PlayAnywhere',
    'https://store-images.s-microsoft.com/image/apps.63459.14050533476382116.9ce9be62-6690-4c40-8e76-7e5af2a256fb.78dcc77d-f307-460e-b1eb-b80e352ddd30?q=90&w=177&h=265',
    'https://store-images.s-microsoft.com/image/apps.65483.14050533476382116.9ce9be62-6690-4c40-8e76-7e5af2a256fb.f7159002-6061-4c00-b0b3-0a66f96a6339?q=90&w=177&h=177',
	NOW(),
	NOW()
),
(
    2,
    'Doom: The Dark Ages',
    250.00,
    250.00,
    0,
    'Bethesda Softworks',
    'Shooter',
    'Optimizado para Xbox Series X, Xbox Play Anywhere, 15 funcionalidades de accesibilidad, 14 idiomas permitidos',
    'LUCHA EN LA PIEL DEL SLAYER EN UNA GUERRA MEDIEVAL CONTRA EL INFIERNO. DOOM: The Dark Ages es la precuela de los aclamados DOOM (2016) y DOOM Eternal, y narra el épico y cinematográfico origen de la leyenda del DOOM Slayer. En esta tercera entrega de la saga moderna de DOOM, los jugadores se pondrán en la piel del DOOM Slayer en una oscura y siniestra guerra medieval contra el infierno nunca vista. DOOM: The Dark Ages es una experiencia para un jugador ambientada en un mundo de fantasía oscura y ciencia ficción que ofrece los intensos combates y los espectaculares gráficos de la incomparable franquicia DOOM, mediante el último motor de idTech.',
    'PC, Xbox Series X/S',
    '4K Ultra HD, HDR10, Single Player, Frecuencia de Actualización Variable, Ray Traycing, 60 fps+, Dolby Atmos, Xbox PlayAnywhere',
    'https://store-images.s-microsoft.com/image/apps.47432.14239344665439398.f72b7e9e-0a95-4e76-b1e3-8989c4d70e2e.c8545c7d-a8d3-4853-b09f-25a680a145ad?q=90&w=177&h=265',
    'https://store-images.s-microsoft.com/image/apps.1369.14239344665439398.f72b7e9e-0a95-4e76-b1e3-8989c4d70e2e.b3c057a4-8d69-420d-8d02-9c28587dac55?q=90&w=177&h=177',
	NOW(),
	NOW()
),
(
    3,
    'Forza Horizon 5: Edicion Standard',
    200.00,
    160.00,
    20,
    'Xbox Game Studios',
    'Carreras',
    'Optimizado para Xbox Series X, Xbox Play Anywhere, 15 funcionalidades de accesibilidad, 14 idiomas permitidos',
    '¡Tu aventura definitiva en Horizon te espera! Explora los coloridos paisajes del mundo abierto de México con una acción de conducción ilimitada y divertida en los mejores autos del mundo.',
    'PC, Xbox Series X/S',
    '4K Ultra HD, HDR10, Single Player, Frecuencia de Actualización Variable, Ray Traycing, 60 fps+, Dolby Atmos, Xbox PlayAnywhere',
    'https://store-images.s-microsoft.com/image/apps.49800.13718773309227929.bebdcc0e-1ed5-4778-8732-f4ef65a2f445.9ac09d39-064d-466c-81ca-2f1b6f0b95c5?q=90&w=177&h=265',
    'https://store-images.s-microsoft.com/image/apps.18975.13718773309227929.bebdcc0e-1ed5-4778-8732-f4ef65a2f445.125d6b3b-492f-4e5f-8037-7ade230c8224?q=90&w=177&h=177',
	NOW(),
	NOW()
);
