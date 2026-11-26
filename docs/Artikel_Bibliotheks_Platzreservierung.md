# BiBViSiT: Eine Reservierungsanwendung für Bibliotheksplätze, und was ich fünf Jahre später daran ändern würde

*Von Bayrem Trabelsi. Teamprojekt aus dem Bachelorstudium Wirtschaftsinformatik (Hochschule Ludwigshafen, 2021). Quellcode: [BiBViSiT](https://github.com/TBayrem/BiBViSiT).*

---

## Die Idee

In Prüfungsphasen sind Bibliotheksplätze knapp. BiBViSiT ist eine Java-Webanwendung, in der Besucher online einen Arbeitsplatz für einen Tag reservieren und Administratoren das Angebot verwalten.

## Funktionen

- **Frontend:** Startseite, Platzübersicht, Reservierung pro Tag, Kontaktformular, Anmeldung
- **Backend:** Plätze anlegen, ändern und löschen, Besucher, Reservierungen und Nachrichten verwalten, weitere Administratoren verwalten
- **Datenbank:** fünf Tabellen (Admin, Place, Visitor, Reservation, Messages), die eine Installationsklasse anlegt

## Architektur

Die Anwendung nutzt JSP für die Oberfläche, Java-Klassen für die Datenmodelle und PostgreSQL per JDBC. Die JSP-Seiten sind in **Views** (Darstellung) und **Controller** (Formulare verarbeiten, Modell aufrufen) getrennt. Die Model-Klassen kapseln alle Datenbankzugriffe und verwenden `PreparedStatement`, wodurch SQL-Injection über Formularfelder vermieden wird.

## Was ich 2026 überarbeitet habe

Beim Durchsehen für mein GitHub-Profil fielen mir Dinge auf, die in einem öffentlichen Repository nicht stehen sollten:

- **Zugangsdaten im Quellcode:** Datenbank-Benutzer und Passwort standen in einer Java-Klasse. Jetzt kommen sie aus Umgebungsvariablen.
- **Feste Admin-Konten mit einfachem Passwort:** Die Installationsklasse legte drei Konten an. Jetzt entsteht ein Konto aus Umgebungsvariablen.
- **Personenbezogene Daten Dritter:** E-Mail-Adressen und Fotos von Teammitgliedern sind entfernt.
- **Dokumentation:** README mit Voraussetzungen, Einrichtung, Architektur und Einschränkungen.

Die alten Zugangsdaten stehen weiter in der Git-Historie. Das ist ein gutes Beispiel dafür, dass ein Commit nicht rückgängig zu machen ist: Wer ein Geheimnis committet hat, muss es ändern und nicht nur löschen.

## Bekannte Einschränkungen

- **Passwörter im Klartext.** Die Spalte ist `CHAR(32)`, die Anmeldung vergleicht direkt in SQL. Für den echten Einsatz bräuchte es einen Hash mit Salz (zum Beispiel bcrypt oder Argon2).
- **Keine automatisierten Tests.** Der Java-Code lässt sich kompilieren, ein Lauf gegen eine Datenbank steht aus.
- **Fremdmaterial:** Das Design nutzt eine Bootstrap-Vorlage samt Bibliotheken mit eigenen Lizenzen.
- **Stand 2021:** Seitdem nicht gewartet.

## Was ich mitnehme

1. **Zugangsdaten gehören nie in den Quellcode**, auch nicht in ein Studentenprojekt.
2. **Sicherheit gehört in die Architektur.** Passwort-Hashing später nachzurüsten ist aufwendiger als es von Anfang an einzuplanen.
3. **Klare Schichten** erlauben es einem Team, parallel an Views, Controllern und Modellen zu arbeiten.

---

*Ich suche zum 01.03.2027 den Einstieg als Junior IT Consultant oder IT Business Analyst. [LinkedIn](https://linkedin.com/in/bayremtrabelsi) · [GitHub](https://github.com/TBayrem)*