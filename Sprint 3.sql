SELECT *
FROM credit_card
WHERE id = 'CcU-2938';


UPDATE credit_card
SET iban = 'R323456312213576817699999' 
WHERE id = 'CcU-2938';

SELECT *
FROM credit_card
WHERE id = 'CcU-2938';

SELECT *
FROM credit_card;

INSERT INTO credit_card 
VALUES ('CcU-9999', 0, null, null, null, null);


INSERT INTO company 
VALUES ('b-9999', null, null, null, null, null);


INSERT INTO transaction (id, credit_card_id, company_id, user_id, lat, longitude, timestamp, amount, declined)
VALUES ('108B1D1D-5B23-A76C-55EF-C568E49A99DD', 'CcU-9999', 'b-9999', '9999', '829.999','-117.999', null, '111.11', 0);

select *
from credit_Card;

ALTER TABLE credit_Card
DROP COLUMN pan;

DELETE FROM transaction
WHERE id ='02C6201E-D90A-1859-B4EE-88D2986D3B02';

select *
from transaction;


CREATE VIEW VistaMarketing AS
SELECT c.company_name, c.phone, c.country, round(avg(amount),2) AS avg
FROM company c
JOIN transaction AS t ON c.id = t.company_id
WHERE declined = 0
GROUP BY c.company_name , c.phone, c.country
ORDER BY round(avg(amount),2) DESC;

SELECT *
FROM vistamarketing;

SELECT * 
FROM vistamarketing
WHERE country = 'Germany';

ALTER TABLE transaction
ADD CONSTRAINT fk_card
FOREIGN KEY (user_id) 
REFERENCES user(id);

SELECT *
FROM credit_card;

CREATE VIEW InformeTecnico AS
SELECT t.id, c.iban , u.name, u.surname, co.company_name
FROM transaction t
JOIN user AS u ON u.id = t.user_id
JOIN credit_card AS c ON c.id = t.credit_card_id
join company AS co ON co.id = t.company_id
GROUP BY  t.id, c.iban , u.name, u.surname, co.company_name
ORDER BY t.id DESC;

SELECT *
FROM InformeTecnico;

alter table transaction drop primary key ,
add primary key ( id, credit_card_id, user_id);

rename table user to data_user;

ALTER TABLE data_user rename column email to  personal_email;

ALTER table company DROP column website;


ALTER TABLE credit_card modify column id varchar(20);


ALTER TABLE credit_card modify column pin varchar(4);

ALTER TABLE credit_card modify column cvv INT;

ALTER TABLE credit_card
ADD COLUMN fecha_Actual DATE ;





