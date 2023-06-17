# [Django Core]
ENV={{ENV}}
SECRET_KEY="{{SECRET_KEY}}"
ALLOWED_HOSTS="{{ALLOWED_HOSTS}}"
HOST_UID={{HOST_UID}}
HOST_GID={{HOST_GID}}

# [Django PostgreSQL]
DATABASE_URL={{DATABASE_URL}}
POSTGRES_HOST={{POSTGRES_HOST}}
POSTGRES_PORT={{POSTGRES_PORT}}
POSTGRES_USER={{POSTGRES_USER}}
POSTGRES_PASSWORD={{POSTGRES_PASSWORD}}
POSTGRES_DB={{POSTGRES_DB}}

# [Postgres Image]
POSTGRES_HOST_UID={{POSTGRES_HOST_UID}}
POSTGRES_HOST_GID={{POSTGRES_HOST_GID}}
POSTGRES_DATA_DIR_HOST={{POSTGRES_DATA_DIR_HOST}}

# [Django Email]
DEFAULT_FROM_EMAIL={{DEFAULT_FROM_EMAIL}}
EMAIL_BACKEND={{EMAIL_BACKEND}}
EMAIL_HOST={{EMAIL_HOST}}
EMAIL_PORT={{EMAIL_PORT}}
EMAIL_HOST_USER={{EMAIL_HOST_USER}}
EMAIL_HOST_PASSWORD={{EMAIL_HOST_PASSWORD}}
EMAIL_USE_TLS={{EMAIL_USE_TLS}}
