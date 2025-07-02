FROM python:3.12-slim

# Create a non-root user
RUN useradd -ms /bin/bash cdsw
USER cdsw

RUN mkdir -p /home/cdsw/work
RUN mkdir -p /home/cdsw/sys
RUN python3 -m venv /home/cdsw/sys/venv

# Install JupyterLab
RUN /home/cdsw/sys/venv/bin/pip install --no-cache-dir jupyterlab jupyterlab-language-pack-de-DE

# generate config and password
RUN /home/cdsw/sys/venv/bin/python -m jupyter lab --generate-config
ADD create_password.py /home/cdsw/sys/create_password.py
RUN /home/cdsw/sys/venv/bin/python /home/cdsw/sys/create_password.py

RUN mkdir -p /home/cdsw/.jupyter/lab/user-settings/\@jupyterlab/translation-extension/
RUN echo "{\"locale\": \"de_DE\"}" > /home/cdsw/.jupyter/lab/user-settings/\@jupyterlab/translation-extension/plugin.jupyterlab-settings

# Write JupyterLab config
RUN printf "c.ServerApp.ip = '0.0.0.0'\n\
c.ServerApp.port = 8888\n\
c.ServerApp.open_browser = False\n\
c.ServerApp.allow_remote_access = True\n\
c.ServerApp.root_dir = '/home/cdsw/work'\n" \
> /home/cdsw/.jupyter/jupyter_lab_config.py

# Switch to non-root user
WORKDIR /home/cdsw/work

# Expose port
EXPOSE 8888

# Start JupyterLab
CMD ["/home/cdsw/sys/venv/bin/python", "-m", "jupyter", "lab"]
