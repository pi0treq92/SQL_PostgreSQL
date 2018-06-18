Dokumentacja:
	1. opis s�owny projektu, jakie s� najwa�niejsze encje i ich atrybuty, jaki charakter maj� zwi�zki je ��cz�ce, jakie pytania mamy zamiar zadawa�, ew. jakie przewidujemy wyzwalacze,
	2.diagram zwi�zk�w i encji,
	3.fragmenty tabel w projekcie, po dwa, najwy�ej trzy wiersze z ka�dej tabeli (ta cz�� powinna si� zmie�ci� na jednej stronie wydruku),
	4.przyk�ady zapyta� i ew. fragmenty ich wynik�w.
Dokumentacja powinna by� dostarczona w postaci jednego pliku pdf.
Pliki:
	1. z definicj� tabel (r�wnie� jaka� perspektywa),
	2. z danymi (z polskimi literami!),
	3. pomocniczy plik do usuwania tabel,
	4. plik z zapytaniami.
Dodatkowo
	5. plik z definicj�/definicjami procedur wyzwalanych,
	6. plik z przyk�adami zastosowania tych procedur.
Projekt powinien mie� swoj� nazw�, np. prawo_jazdy. Dostarczone pliki powinny znale�� si� w podkatalogu i powinny mie� nast�puj�ce nazwy:

'nazwa_projektu.pdf' - g��wny plik z dokumentacj�
'erd' - plik z samym diagramem w jakim� formacie graficznym (pdf, gif, png)
'create_db.sql' - definicja tabel
'drop_db.sql' - usuwanie tabel
'insert_db.sql' - wstawianie danych
'select_db.sql' - przyk�adowe zapytania
'trigger.sql' - definicja wyzwalaczy
'trigger-ex.sql' - przyk�ad u�ycia wyzwalaczy

Zapytania w projekcie powinny wykaza� nast�puj�ce aspekty:
	� Obecno�� z��czenia, zar�wno w sk�adni ze s�owami INNER JOIN jak i bez niej.
	� U�ycie grupowania i funkcji agreguj�cych.
	� Wy�wietlanie wyniku operacji arytmetycznych na liczbach oraz na datach.
	� Warunki odwo�uj�ce si� do wzorc�w napis�w (np. opisy wszystkich uk�adanek itp).
	� U�ycie zagnie�d�enia, dobrze je�li w obu odmianach (nieskorelowane i skorelowane).
	� Sprawdzanie warunku NULL.
	� Zapytania negatywne, np. klienci bez z�o�onych zam�wie�. Co najmniej w dwu wersjach.
Wersje zapyta� negatywnych:
	o ... klient.nr NOT IN (SELECT klient_nr FROM ...)
	o ... NOT EXISTS (SELECT 1 FROM ...)
	o ... LEFT OUTER JOIN ... WHERE zamowienie_nr IS NULL
	o (SELECT klient.nr ...) EXCEPT (SELECT klient_nr ...)
	� U�ycie widoku (perspektywy, view).
	� Usuwanie z tabeli.
	� Aktualizacja wierszy w tabeli.
Oczywi�cie jedno zapytanie mo�e mie� kilka aspekt�w, np. usuwanie na podstawie skomplikowanego warunku u�ywaj�cego zagnie�d�enia i badaj�cego zar�wno napis jak i wyra�enie arytmetyczne czy NULL. Nie chcia�bym jednak by projekt ograniczy� si� do trzech nies�ychanie skomplikowanych zapyta�. Ma by� wi�cej.
