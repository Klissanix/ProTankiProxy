import os

# Force production mode for the dedicated prod build.
os.environ.setdefault("PROTANKI_MODE", "prod")

