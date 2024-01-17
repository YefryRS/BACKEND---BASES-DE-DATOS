/*Crearemos una tabla que cruce con la tabla anterior de usuarios*/
CREATE TABLE products(
	id int not null auto_increment,
    name varchar(50) not null,
    created_by int not null, -- esta es la que va a referenciar a los users
    marca varchar(50) not null,
    primary key(id),
    foreign key(created_by) references user(id) /*nombre de la tabla y 
    entre parentesis la columna a referenciar*/
);

-- cambiar el nombre de la tabla
RENAME table products to product;


--Insertar muchos datos usando UN solo insert
insert into product(name,created_by,marca)
values
    ("ipad",1,"apple")
    ("iphone",1,"apple")
    ("watch",2,"apple")
    ("mackbook",1,"apple");

--left join
/* METODOS PARA EL CRUD
POST -> CREATE
GET -> READ
PUT -> UDPATE
DELETE -> DELETE
 */