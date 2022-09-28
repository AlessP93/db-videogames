--1- Selezionare tutte le software house americane (3)
--SELECT *
--FROM software_houses
--where country = 'United States';

--2- Selezionare tutti i giocatori della città di 'Rogahnland' (2)
--SELECT *
--FROM players
--where city = 'Rogahnland';

--3- Selezionare tutti i giocatori il cui nome finisce per "a" (220)
--SELECT * 
--FROM players
--where name LIKE '%a';

--4- Selezionare tutte le recensioni scritte dal giocatore con ID = 800 (11)
--SELECT * 
--FROM reviews
--where player_id = 800;

--5- Contare quanti tornei ci sono stati nell'anno 2015 (9)
--SELECT *
--FROM tournaments
--where year = 2015;

--6- Selezionare tutti i premi che contengono nella descrizione la parola 'facere' (2)
--SELECT *
--FROM awards
--where description LIKE '%facere%';

--7- Selezionare tutti i videogame che hanno la categoria 2 (FPS) o 6 (RPG), mostrandoli una sola volta (del videogioco vogliamo solo l'ID) (287)
--SELECT DISTINCT videogame_id
--FROM category_videogame
--where category_id = 2 OR category_id = 6;

--8- Selezionare tutte le recensioni con voto compreso tra 2 e 4 (2947)
--SELECT *
--FROM reviews
--where rating BETWEEN 2 and 4;

--9- Selezionare tutti i dati dei videogiochi rilasciati nell'anno 2020 (46)
--SELECT * 
--FROM videogames
--where YEAR(release_date) = 2020;

--10- Selezionare gli id dei videogame che hanno ricevuto almeno una recensione da stelle, mostrandoli una sola volta (443)
--SELECT DISTINCT videogame_id
--FROM reviews
--where rating = 5;

--Query con group by
--1- Contare quante software house ci sono per ogni paese (3)
--SELECT COUNT(id), country
--FROM software_houses
--GROUP BY country;

--2- Contare quante recensioni ha ricevuto ogni videogioco (del videogioco vogliamo solo l'ID) (500)
--SELECT COUNT(id)
--FROM reviews
--GROUP BY videogame_id

--3- Contare quanti videogiochi hanno ciascuna classificazione PEGI (della classificazione PEGI vogliamo solo l'ID) (13)
--SELECT COUNT(id)
--FROM pegi_label_videogame
--GROUP BY pegi_label_id

--4- Mostrare il numero di videogiochi rilasciati ogni anno (11)
SELECT COUNT(id)
FROM videogames
GROUP BY release_date
