CREATE TABLE item_bought (
    buyer TEXT NOT NULL,
    item TEXT NOT NULL
);

INSERT INTO item_bought (buyer, item) VALUES
('A', 'Asus'),
('B', 'Lenovo'),
('C', 'Lenovo'),
('D', 'Acer'),
('E', 'Acer'),
('F', 'Acer');


SELECT * from item_bought;

-- answer 
SELECT DISTINCT
	item
FROM (SELECT 
        item, 
        COUNT(item) 
      from item_bought 
      group by item 
      having count(item) not in 
      	(SELECT max(jumlah) from (SELECT COUNT(item) as jumlah from item_bought group by item))
      and COUNT(item) not in 
      	(SELECT min(jumlah) from (SELECT COUNT(item) as jumlah from item_bought group by item))
      )

