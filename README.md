# LambdaHRO Webseite (Quellen)

Die Webseite wird mit [Hugo](https://gohugo.io/) gebaut.

## Struktur/Einrichtung

Zuerst das Repository auschecken und die eingebundenen Submodule 
initialisieren. Diese enthalten das Theme für Hugo und das Verzeichnis, in
dem die fertige Webseite zur Veröffentlichung liegt (`public`).

```
% git clone <repo-url>
% cd repo
% git submodule update --init --recursive
```

Mittels des Parameters `--recursive` kann das in einem Schritt erledigt werden:

```
% git clone --recursive <repo-url>
```

Hugo muß installiert sein und dann kann direkt aus dem Repository-Verzeichnis
der lokale Server mit `hugo server` gestartet werden. Die Webseite ist 
anschließend unter `http://localhost:1313` erreichbar.

### Beiträge

Beiträge im Markdownformat bitte im Unterordner `content/de/posts` anlegen.
Die Benamung sollte nach dem Schema `YYYY-MM-DD-Titel.md` erfolgen.

Der Kopf einer jeden Datei enthält das sogenannte "Frontmatter", das in 
etwa wie folgt aussehen sollte:

```
---
title: "Titel des Beitrags"
date: Datum der Veröffentlichung (YYYY-MM-DD)
draft: false
tags: [ "hier", "können", "tags", "eingetragen", "werden" ]
categories: [ "Hier", "Kategorien", "eintragen" ]
---
```

Insofern keine Tags verwendet werden, kann die Angabe leer bleiben (`[ ]`).
Kategorien gibt es bisher `Termine` und `Vorträge` gegebenenfalls sind 
beide zu setzen, sonst nur eine.

## Veröffentlichung der Webseite

Nachdem die gewünschten Änderungen gemacht wurden, einfach einmal Hugo 
ausführen:

```
% hugo
```

Danach in den Ordner `public` wechseln und die dortigen Änderungen 
übernehmen:

```
% cd public
% git add .
% git commit -m "Publish website"
```

Zu guter Letzt müssen die Änderungen noch hochgeladen werden:

```
% git push origin HEAD:master
```

Alle Schritte bis hier können auch einfach durch Ausführen des Skripts 
`deploy.sh` automatisiert werden.

Jetzt müssen die Änderungen im lokalen Repository noch aufgenommen werden:

```
% cd ..
% git add .
% git commit
...
% git push
```

