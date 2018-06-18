Dokumentacja:
	1. opis s³owny projektu, jakie s¹ najwa¿niejsze encje i ich atrybuty, jaki charakter maj¹ zwi¹zki je ³¹cz¹ce, jakie pytania mamy zamiar zadawaæ, ew. jakie przewidujemy wyzwalacze,
	2.diagram zwi¹zków i encji,
	3.fragmenty tabel w projekcie, po dwa, najwy¿ej trzy wiersze z ka¿dej tabeli (ta czêœæ powinna siê zmieœciæ na jednej stronie wydruku),
	4.przyk³ady zapytañ i ew. fragmenty ich wyników.
Dokumentacja powinna byæ dostarczona w postaci jednego pliku pdf.
Pliki:
	1. z definicj¹ tabel (równie¿ jakaœ perspektywa),
	2. z danymi (z polskimi literami!),
	3. pomocniczy plik do usuwania tabel,
	4. plik z zapytaniami.
Dodatkowo
	5. plik z definicj¹/definicjami procedur wyzwalanych,
	6. plik z przyk³adami zastosowania tych procedur.
Projekt powinien mieæ swoj¹ nazwê, np. prawo_jazdy. Dostarczone pliki powinny znaleŸæ siê w podkatalogu i powinny mieæ nastêpuj¹ce nazwy:

'nazwa_projektu.pdf' - g³ówny plik z dokumentacj¹
'erd' - plik z samym diagramem w jakimœ formacie graficznym (pdf, gif, png)
'create_db.sql' - definicja tabel
'drop_db.sql' - usuwanie tabel
'insert_db.sql' - wstawianie danych
'select_db.sql' - przyk³adowe zapytania
'trigger.sql' - definicja wyzwalaczy
'trigger-ex.sql' - przyk³ad u¿ycia wyzwalaczy

Zapytania w projekcie powinny wykazaæ nastêpuj¹ce aspekty:
	• Obecnoœæ z³¹czenia, zarówno w sk³adni ze s³owami INNER JOIN jak i bez niej.
	• U¿ycie grupowania i funkcji agreguj¹cych.
	• Wyœwietlanie wyniku operacji arytmetycznych na liczbach oraz na datach.
	• Warunki odwo³uj¹ce siê do wzorców napisów (np. opisy wszystkich uk³adanek itp).
	• U¿ycie zagnie¿d¿enia, dobrze jeœli w obu odmianach (nieskorelowane i skorelowane).
	• Sprawdzanie warunku NULL.
	• Zapytania negatywne, np. klienci bez z³o¿onych zamówieñ. Co najmniej w dwu wersjach.
Wersje zapytañ negatywnych:
	o ... klient.nr NOT IN (SELECT klient_nr FROM ...)
	o ... NOT EXISTS (SELECT 1 FROM ...)
	o ... LEFT OUTER JOIN ... WHERE zamowienie_nr IS NULL
	o (SELECT klient.nr ...) EXCEPT (SELECT klient_nr ...)
	• U¿ycie widoku (perspektywy, view).
	• Usuwanie z tabeli.
	• Aktualizacja wierszy w tabeli.
Oczywiœcie jedno zapytanie mo¿e mieæ kilka aspektów, np. usuwanie na podstawie skomplikowanego warunku u¿ywaj¹cego zagnie¿d¿enia i badaj¹cego zarówno napis jak i wyra¿enie arytmetyczne czy NULL. Nie chcia³bym jednak by projekt ograniczy³ siê do trzech nies³ychanie skomplikowanych zapytañ. Ma byæ wiêcej.
