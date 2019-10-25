use ventas;
INSERT INTO  cliente
	(CODCLIEN,NOMCLIEN,APECLIEN,CUICLIENT,ESTCLIEN ,ZIPCLIEN,PAGCLIEN)
VALUES
	('c0954327','sheri','gordom', 'littleton','co','801295543','230.00'),
	('c1010398', 'jim', 'glussman', 'denver','co','801110033','200.00'),
    ('c2388597', 'beth', 'taylor', 'seattle','wa','981031121','500.00'),
    ('c3340959', 'betty', 'wise', 'seattle','wa','981783311','200.00'),
	('c3499503', 'bob', 'mann', 'monroe','wa','980131095','0.00'),
	('c8543321', 'ron', 'thompson', 'rentom','wa','986661289','85.00');
    
 INSERT INTO  empleado
	(CODEMP,NOMEMP,APEEMP,CELEMP,EMAEMP)
VALUES
	('e1329595','landi','santos', '(303) 789-1234','LSantos@bigco.com'),
	('e8544399', 'joe', 'jenkins', '(303) 221-9875','JJenkins@bigco.com'),
    ('e8843211', 'amy', 'tang', '(303) 556-4321','ATang@bigco.com'),
    ('e9345771', 'colin', 'white', '(303) 221-4453','CWhite@bigco.com'),
	('e9884325', 'thomas', 'jhonson', '(303) 556-9987','TJhonson@bigco.com'),
	('e8543321', 'mary', 'hill', '(303) 556-9871','MHill@bigco.com');
   
INSERT INTO  orden
	(CODORD,FECORD,CODCLIEN,CODEMP)
VALUES
	('O4714645','2013/01/11','c2388597','e1329595'),
	('O5511365','2013/01/22','c3340959','e9884325'),
	('O7989497','2013/01/16','c3499503','e9345771'),
	('O1656777','2013/02/11','c8543321','e1329595'),
	('O7959898','2013/02/19','c8543321','e8544399');
    
INSERT INTO  orden
(CODORD,FECORD,CODCLIEN)
VALUES
	('O3331222','2013/01/13','c1010398'),
	('O2233457','2013/01/12','c2388597');
    select * from orden;
    delete from cliente;