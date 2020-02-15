import os
from notebook.auth import passwd

if os.environ.get('JUPYTER_PORT'):
    c.NotebookApp.portInt = os.environ['JUPYTER_PORT']

c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.password = passwd(os.environ.get('JUPYTER_PASSWORD', 'keepitsecretkeepitsafe'))
c.NotebookApp.open_browser = False
c.NotebookApp.notebook_dir = os.environ.get('JUPYTER_NOTEBOOK_DIR', os.path.expanduser('~/jupyter'))
c.MappingKernelManager.cull_idle_timeout = 3600
