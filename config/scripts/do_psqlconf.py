import os
from pathlib import Path
from dotenv import load_dotenv

from jinja2 import Environment, FileSystemLoader

load_dotenv()

print("------ postgres.conf ------")

project_dir = Path(__file__).parent.parent.parent
templates = Environment(loader=FileSystemLoader(project_dir / "contrib" / "templates"))

# Environment variables:
pgdata = "/var/lib/postgresql/data"  # INSIDE CONTAINER
allowed_hosts = os.environ.get("ALLOWED_HOSTS")
psql_port = os.environ.get("POSTGRES_PORT")
psql_data = os.environ.get("POSTGRES_DATA_DIR_HOST")

psql_template = templates.get_template("postgresql.conf")
variables = {
    "PGDATA": pgdata,
    "ALLOWED_HOSTS": allowed_hosts,
    "PORT": psql_port,
}

output = psql_template.render(variables)

psql_dir = Path(str(psql_data))
data_dir = psql_dir / "pgdata"

data_dir.mkdir(exist_ok=True, parents=True)

file = psql_dir / "postgresql.conf"

if file.exists():
    answer = input(f"postgresql.conf found at {data_dir}, replace it? [y/n] ")
    if answer.lower() == "y":
        file.unlink()

if not file.exists():
    file.touch()
    with open(file, "w") as f:
        f.write(output)
