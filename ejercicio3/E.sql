create database tienda;

use tienda;
create table productos(
	id int primary KEY,
    nombre varchar(20),
    precio decimal(10,2),
    stock int
);
describe productos;
drop table productos;


insert into productos (id, nombre, precio, stock) values (1, 'Producto 1', 10.00, 20);
insert into productos (id, nombre, precio, stock) values (2, 'Producto 2', 15.50, 10);
insert into productos (id, nombre, precio, stock) values (3, 'Producto 3', 8.75, 5);
insert into productos (id, nombre, precio, stock) values (4, 'Producto 4', 25.00, 30);
insert into productos (id, nombre, precio, stock) values (5, 'Producto 5', 12.25, 15);
insert into productos (id, nombre, precio, stock) values (6, 'Producto 6', 30.50, 12);
insert into productos (id, nombre, precio, stock) values (7, 'Producto 7', 5.00, 50);
insert into productos (id, nombre, precio, stock) values (8, 'Producto 8', 18.75, 7);
insert into productos (id, nombre, precio, stock) values (9, 'Producto 9', 22.00, 25);
insert into productos (id, nombre, precio, stock) values (10, 'Producto 10', 17.50, 18);
insert into productos (id, nombre, precio, stock) values (11, 'Producto 11', 13.25, 9);
insert into productos (id, nombre, precio, stock) values (12, 'Producto 12', 27.00, 22);
insert into productos (id, nombre, precio, stock) values (13, 'Producto 13', 11.50, 35);
insert into productos (id, nombre, precio, stock) values (14, 'Producto 14', 20.00, 13);
insert into productos (id, nombre, precio, stock) values (15, 'Producto 15', 16.75, 19);



DELIMITER //
create procedure aumentar_stock(IN productos_id int, IN cantidad int)
	BEGIN
		declare stock_actual int;
        
        select stock into stock_actual from productos where id = productos_id;
        
        set stock_actual = stock_actual + cantidad;
        
		update productos set stock = stock_actual where id = productos_id;
		
	
    END //

DELIMITER ;

drop procedure aumentar_stock;
call aumentar_stock(10,10);
select * from productos;
 
