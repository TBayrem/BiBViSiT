# BiBViSiT: Platzreservierung für die Bibliothek

**Webseite mit Prototyp zum Ausprobieren:** https://tbayrem.github.io/bibliotheks-platzreservierung/

Java-Webanwendung (JSP, Servlet-Container, PostgreSQL), mit der Besucher einer Hochschulbibliothek Arbeitsplätze reservieren und Administratoren Plätze, Besucher, Reservierungen und Nachrichten verwalten. Entstanden 2021 als Teamprojekt im Bachelorstudium Wirtschaftsinformatik (Hochschule Ludwigshafen).

## Funktionen

- **Frontend:** Startseite, Platzübersicht, Reservierung pro Tag, Kontaktformular, Anmeldung
- **Backend (Administratoren):** Plätze anlegen, ändern und löschen, Besucher, Reservierungen und Nachrichten verwalten, weitere Administratoren verwalten
- **Datenbank:** Tabellen für Admin, Place, Visitor, Reservation und Messages (Installationsklasse legt sie an)

## Architektur

```
BiBViSiT/
  src/DataBase/        JDBC-Zugriff (Verbindungsdaten aus Umgebungsvariablen)
  src/Model/           Admin, Place, Visitor, Reservation, Messages
  src/Installation/    Engine, CreateTables (legt Schema und Beispieldaten an)
  WebContent/View/     JSP-Seiten (Darstellung)
  WebContent/Controller/ JSP-Seiten mit Ablauflogik
```

Das Muster: Views zeigen an, Controller-JSPs verarbeiten Formulare und rufen die Model-Klassen auf, die per JDBC auf PostgreSQL zugreifen.

## Voraussetzungen

- JDK 8 oder neuer
- Apache Tomcat 9 (oder ein anderer Servlet-Container mit JSP-Unterstützung)
- PostgreSQL und der PostgreSQL-JDBC-Treiber (`postgresql-*.jar` in `WEB-INF/lib`)

## Einrichtung

1. Datenbank anlegen (Beispiel): `createdb bibvisit`
2. Umgebungsvariablen setzen. Es stehen keine Zugangsdaten im Quellcode.

```bash
export BIBVISIT_DB_URL=jdbc:postgresql://localhost:5432/bibvisit
export BIBVISIT_DB_USER=postgres
export BIBVISIT_DB_PASSWORD=<dein Passwort>
export BIBVISIT_DB_SCHEMA=BiBViSiT
export BIBVISIT_ADMIN_EMAIL=admin@example.com
export BIBVISIT_ADMIN_PASSWORD=<sicheres Passwort>
```

3. Tabellen anlegen: Klasse `Installation.Engine` ausführen. Achtung: Sie löscht vorhandene Tabellen mit denselben Namen (`DROP TABLE IF EXISTS`).
4. Projekt als WAR in Tomcat bereitstellen und `View/Home.jsp` aufrufen.

## Bekannte Einschränkungen

- Passwörter werden im Klartext gespeichert (Spalte `CHAR(32)`). Für den echten Einsatz müssten sie mit Salz gehasht werden (zum Beispiel bcrypt oder Argon2).
- Die Anwendung wurde zuletzt 2021 gebaut und seitdem nicht gewartet. Der Java-Code lässt sich kompilieren, ein Test gegen eine laufende Datenbank steht aus.
- Es gibt keine automatisierten Tests.

## Fremdmaterial

Das Verzeichnis `WebContent/Template/` enthält ein frei verfügbares Bootstrap-Webdesign-Template mit Bibliotheken (Bootstrap, jQuery, Font Awesome und weitere). Diese Teile stammen nicht von mir und unterliegen ihren eigenen Lizenzen.

## Dokumentation

- [`docs/Artikel_Bibliotheks_Platzreservierung.md`](docs/Artikel_Bibliotheks_Platzreservierung.md): Artikel
- [`docs/Bibliotheks_Platzreservierung.pdf`](docs/Bibliotheks_Platzreservierung.pdf): Präsentation

## Autor

Bayrem Trabelsi (Teamprojekt, Mitentwickler:innen auf Wunsch nicht genannt)
