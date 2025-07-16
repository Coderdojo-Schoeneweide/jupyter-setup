# Jupyter Notebooks verwenden

## Eure Notebooks
Eure Notebooks könnt ihr hier finden:
[https://github.com/Coderdojo-Schoeneweide/jupyter-setup/tree/main/eure\_notebooks](https://github.com/Coderdojo-Schoeneweide/jupyter-setup/tree/main/eure_notebooks)

Einmal auf die Datei klicken, dann oben rechts auf das Download Symbol "download raw file".

## Notebooks starten
Es gibt unterschiedliche Möglichkeiten Jupyter Notebooks zu verwenden:

1. Google Colab
  - Vorteil: einfach zu benutzen :+1:
  - Nachteil: Google :wink:
2. Selber installieren
  - Vorteil: Man hat's selber geschafft :raised_hands:
  - Nachteil: Man muss es selber schaffen :smile:

### 1. Über Google Colab
Die Seite [Google Colab](https://colab.research.google.com/) aufrufen. Dann links auf "Hochladen" oder "Upload" und euer Notebook hochladen.

Möchte man Musik machen oder die Roboter programmieren, muss man noch folgendes machen:
- Eine Zeile hinzufügen: `%pip install dojosw` und ausführen (Shift+Enter). Das sorgt dafür, dass wir auf die dojosw-Bibliothek zugreifen können.
- Wenn irgendwo `from musik import ton, spiele` steht, das ändern zu `from dojosw.musik import ton, spiele`.
- Wenn irgendwo `from roboter import Roboter` steht, das ändern zu `from dojosw.roboter import Roboter`.

Viel Spaß! :wink: :raised_hands:

### 2. Selber installieren
#### Python installieren
Als erstes müssen wir Python installieren. Das ist die Programmiersprache mit der wir programmieren.
Am einfachsten ist es
- für Windows: den [Microsoft Store](https://apps.microsoft.com)
- für OSX: [Homebrew](https://brew.sh/)
- für Linux: den jeweiligen Package-Manager deiner Distribution
zu nutzen. :white_check_mark:

Wenn das nicht klappt, kann man auch auf der offiziellen [Python Seite](https://www.python.org/downloads/) Python herunterladen und installieren.

#### Virtuelles Environment einrichten
Für Windows:

Die PowerShell öffnen und folgenden Befehl eingeben:

```sh
python -m venv venv
.\venv\Scripts\activate
```

Für OSX / Linux:

Ein Terminal öffnen und folgenden Befehl eingeben:

```sh
python3 -m venv venv
source venv/bin/activate
```

Jetzt haben wir eine Umgebung, in die wir Jupyter Lab installieren können. :white_check_mark:

#### Jupyter Lab installieren
Das brauchen wir, um die Jupyter Notebooks anschauen und bearbeiten zu können.
```sh
pip install dojosw[server,jupyter]
```

Super. :white_check_mark:

#### Jupyter Lab starten
Jetzt ist es so gut wie geschafft. Jetzt können wir unser Jupyter Notebook starten mit:
```sh
jupyter lab
```

Auch hier gilt:
Wenn im Notebook
- `from musik import ton, spiele` steht, das ändern zu `from dojosw.musik import ton, spiele`.
- `from roboter import Roboter` steht, das ändern zu `from dojosw.roboter import Roboter`.

