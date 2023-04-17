CREATE TABLE user1 (
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO user1(name,edad,email) VALUES ("Oscar",25,"oscar@gmail.com");
INSERT INTO user1(name,edad,email) VALUES ("Layla",15,"layla@gmail.com");
INSERT INTO user1(name,edad,email) VALUES ("Nicole",36,"nico@gmail.com");
INSERT INTO user1(name,edad,email) VALUES ("Chanchito",7,"chanchito@gmail.com");

select * from user1;
select * from user1 limit 1; /*limitar la cantidad de recursos que va 
a devolvernos, en este caso el primer registro que encuentre*/

/* De las siguientes formas puedo buscar un registro que cumpla 
con determinadas caracteristicas*/
select * from user1 where edad > 15;
select * from user1 where edad > 15;
select * from user1 where edad > 20 and email = "nico@gmail.com";
select * from user1 where edad > 20 or email = "layla@gmail.com";
select * from user1 where email != "layla@gmail.com";
select * from user1 where edad between 15 and 30; 
select * from user1 where email like "%gmail%"; /*traeme los registros 
dentro del email que contenga la palabra "gmail", me da igual su inicio y
me da igual su final*/
select * from user1 where email like "%gmail";/*Aqui le indico que me traiga
solo las que terminen con "gmail", por ende no me trae ninguna, ya que
todos terminan con ".com" */
select * from user1 where email like "oscar%";/*Aqui le indico que me traiga
solo las que empiezen con "oscar" */

select * from user1 order by edad asc; /* Me lo ordene de menor a mayor*/
select * from user1 order by edad desc; /* Me lo ordene de mayor a menor*/
select max(edad) as mayor from user1; /*Solo me trae el de mayor edad*/
select min(edad) as menor from user1;  /*Solo me trae el de menor edad*/

/*Ahora veremos como llamar las columnas que sean de interes para nosotros*/
select id, name from user1; /*Seleccionamos solo la columna de id y name*/
select id,name as Nombre from user1;/*Cambiamos el nombre de la columna 
"name" por cualquier otro nombre */