----------------------------- Query su singola tabella

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

--10- Selezionare gli id dei videogame che hanno ricevuto almeno una recensione da 5 stelle, mostrandoli una sola volta (443)
--SELECT DISTINCT videogame_id
--FROM reviews
--where rating = 5;

--11- Selezionare il numero e la media delle recensioni per il videogioco con ID = 412 (review number = 12, avg_rating = 3)
--select count(*) as media, avg(rating) 
--from vide
--------------------------------- Query con group by

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
--SELECT COUNT(id)
--FROM videogames
--GROUP BY YEAR(release_date)

--5- Contare quanti videogiochi sono disponbiili per ciascun device (del device vogliamo solo l'ID) (7)
--SELECT COUNT(id)
--FROM device_videogame
--GROUP BY device_id

--6- Ordinare i videogame in base alla media delle recensioni (del videogioco vogliamo solo l'ID) (500)
--SELECT COUNT(id)
--FROM reviews
--GROUP BY videogame_id

------------------------------- Query con join

--1- Selezionare i dati di tutti giocatori che hanno scritto almeno una recensione, mostrandoli una sola volta (996)
--SELECT DISTINCT player_id
--FROM reviews
--INNER JOIN players 
--ON player_id = reviews.player_id

--2- Sezionare tutti i videogame dei tornei tenuti nel 2016, mostrandoli una sola volta (226)
SELECT DISTINCT videogame_id
FROM tournament_videogame
INNER JOIN tournaments

--9- Selezionare i giocatori che hanno giocato al gioco più atteso del 2018 in un torneo del 2019 (3306)
--SELECT *
--FROM players as p
--INNER JOIN player_tournament as pt ON p.id = pt.player_id