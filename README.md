# Python Notebooks

Python Notebooks und Setup für Workshops des CoderDojo Schöneweide.

## Dateien und Ordner
Unter `docker` gibt es Dateien, um ein Docker-Image zu bauen, was verwendet werden kann, um den Workshop durchzuführen.

Alternativ in den Ordner `work` wechseln und `jupyter lab` ausführen (nach [Jupyter-Installation](https://jupyter.org/install)).

Die Datei `run.sh` kann unter Linux/OSX verwendet werden, um das Docker Image mit den richtigen Port-Forwardings und Mounts auszuführen.

Anschließend sollte sich der Link [localhost:8888](localhost:8888) erreichbar sein und eine Jupyter Notebook Oberfläche zeigen.

Das Passwort ist `cdsw`.

## Notebooks
Im Ordner `work` liegen die folgenden Notebooks:
- `Einleitung.ipynb`:
  - Einführung in die Umgebung und Python.
  - Rechnen mit Zahlen.
  - Vergleichsoperatoren
  - Variablen
- `Musik.ipynb`:
  - Funktionen aufrufen
  - Schleifen
  - Listen
