---
created: 2022-02-15T23:32:04+01:00
modified: 2022-02-15T23:58:31+01:00
---

# 16_Risikomanagement

**Merkmale** --> **Ereignis** --> **Reaktion** --> **Effekt**.


## 1 Entwicklungsrisiken

### 1.1 Aufwand / Komplexität unterschätzt

Evtl. Reaktionen:
  - Abspecken der App
  - Weniger Tests
  - Releasedatum anpassen

Effekt:
  - App hat geringeren Funktionsumfang --> geringere Kundenzufriedenheit
  - evtl. weniger Nutzer der App
  - nicht so gute Bewertungen

Eintrittswahrscheinlichkeit: Hoch\
Schadenshöhe: Gering\
--> Risikopriorität: Mittel

### 1.2 Es finden sich nicht genug Tester

Reaktion:
  - aktiv Leute als Tester akquirieren

Effekt:
  - Qualität sinkt, falls nicht genug Tester vorhanden
  - Projekt verzögert sich
  - Personelle Ressourcen sind erforderlich, um potentielle Tester zu motivieren
  - Verzögerung kann dazu führen, dass Entwickler weniger motiviert sind

Eintrittswahrscheinlichkeit: Hoch\
Schadenshöhe: Mittel\
--> Risikopriorität: Mittel

### 1.3 Apple Developer Gebühr (120€)

Reaktion:
  - Sponsor suchen
  - temporär: App nur für Android und als WebApp deployen (Nutzer müssten App im Browser aufrufen)
  - temporär: App auf anderem Wege zum Download anbieten

Effekt:
  - Projekt verzögert sich
  - falls Android & Web: Motivation der iOS Nutzer, App zu nutzen, sinkt drastisch
  - falls Download: Installation von "Nicht-Vertrauenswürdigen Apps" ist komplizierter --> Nutzer benötigen höhere Motivation / Anleitung, um sich da durch zu fitten
  - falls Download: Updates schwierig --> Hinzufügen neuer Funktionen schwierig umsetzbar, Abwärtskompatibilität muss sehr lange eingehalten werden --> Entwicklung verzögert sich deutlich (deutlich mehr Aufwand und Regressionstests nötig)

### 1.4 Projekt ist "nicht gewollt" / Es finden sich nicht genug Unterstützer

## 2 Managementrisiken

### 2.1 Feedbackschleife zu lang

## 3 Soziale Risiken 

### 3.1 Entwickler springen vom Projekt ab

### 3.2 Motivation der Entwickler hält nicht an

### 3.3 Nutzer sind von App nicht begeistert / erfüllt nicht deren Anforderungen

## 4 Laufzeitrisiken

### 4.1 Server fällt aus

Potentielle Effekte:
  - Nutzer sind verwirrt
  - Usability nicht gegeben

Reaktion:
  - entsprechende Meldung in App einbauen, dass Server gerade down ist

Eintrittswahrscheinlichkeit: Hoch
Schadenshöhe: Gering
--> Risikopriorität: Gering

### 4.2 Server verliert (alle) Daten

Effekt:
  - Komplette Nutzerbasis weg
  - Nutzer frustriert --> kommen evtl. auch nicht wieder

Reaktion:
  - Datenbank neu aufsetzen
  - vorher: regelmäßige Backups

Eintrittswahrscheinlichkeit: Mittel
Schadenshöhe: Hoch
--> Risikopriorität: Hoch

### 4.3 Server wird gehackt

Effekt:
  - Nutzerdaten weg
  - Datenleak
  - Nutzer verärgert
  - evtl. Nutzerverlust
  - Betreiber verunsichert

Reaktion:
  - Meldung
  - vorher: Server gut absichern (OWASP Top 10)

Eintrittswahrscheinlichkeit: Niedrig
Schadenshöhe: Sehr Hoch
--> Risikopriorität: Hoch

### 4.4 Backend skaliert nicht (Server ständig ausgelastet)

Mögliche Reaktionen:
  - Auslagern in Cloud
  - Mehr Server mieten
  - Klare Kommunikation in anderen sozialen Medien, dass bereits an Problem gearbeitet wird

Effekt:
  - Betriebskosten steigen
  - Nutzer sind von Nicht-Funktionalität der App frustriert und deinstallieren sie irgendwann
  - Verzögerung (bis weiterer Server eingerichtet und Cluster hergestellt ist)
