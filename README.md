## Jupyter Lab

JupyterLab is installed on the system-wide Python installation.  Use the following commands to start/stop your own server:
```
source jupyter.sh start
source jupyter.sh stop
```

NOTE: You can overwrite the password and notebook directory using the JUPYTER_PASSWORD and JUPYTER_NOTEBOOK_DIR environment variables respectively.

Once your server is up, you can add virtual environments to it using the following:
```
pip install ipykernel
python -m ipykernel install --name <env-name> --user
```

This will create a kernel configuration in `~/.local/share/jupyter/kernels/`.
