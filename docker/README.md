# jupyter-setup
Anleitung und Code, um einen Jupyter Server zu starten

## Vorbereitung

* Python 3.9+ installieren
* `pip install jupyterlab`

## Konfiguration generieren

```bash
jupyter lab --generate-config
```

## Passwort setzen

```bash
jupyter server password
```

Hier wird standardmäßig `cdsw` verwendet.

## `jupyter_lab_config.py` bearbeiten (normalerweise in `~/.jupyter/`)

Zum Beispiel mit `vim ~/.jupyter/jupyter_lab_config.py`.
Dort folgendes eintragen:

```python
c.ServerApp.ip = '0.0.0.0'
c.ServerApp.port = 8888
c.ServerApp.open_browser = False
c.ServerApp.allow_remote_access = True
```

## Firewall Port freigeben

* TCP 8888 on the host machine

## Launch Jupyter Lab

```bash
jupyter lab
```

## Von anderen Computern verbinden

* Im Browser `http://<host_IP>:8888` öffnen
* Passwort `cdsw` eingeben

