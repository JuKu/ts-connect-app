---
created: 2022-02-15T23:32:04+01:00
modified: 2022-02-15T23:38:46+01:00
---

# 16_Risikomanagement

Merkmale --> Ereignis --> Reaktion --> Effekt.

## 1 Entwicklungsrisiken

### 1.1 Aufwand / Komplexität unterschätzt

### 1.2 Es finden sich nicht genug Tester

### 1.3 Apple Developer Gebühr

### 1.4 Projekt ist "nicht gewollt"

## 2 Managementrisiken

### 2.1 Feedbackschleife zu lang

## 3 Soziale Risiken 

### 3.1 Entwickler springen vom Projekt ab

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

### Server wird gehackt

Effekt:
  - Nutzerdaten weg
  - Datenleak

Reaktion:
  - Meldung
  - Nutzer verärgert
  - evtl. Nutzerverlust
  - Betreiber verunsichert
  - 
Eintrittswahrscheinlichkeit: Niedrig
Schadenshöhe: Sehr Hoch
--> Risikopriorität: Hoch
