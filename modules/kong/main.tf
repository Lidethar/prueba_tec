resource "helm_release" "kong" {
  name       = "my-kong-release"  # Nombre que deseas dar al release de Kong
  repository = "https://charts.konghq.com"  # URL del repositorio de Helm Chart de Kong
  chart      = "kong"  # Nombre del chart de Kong

  #version = "4.0.0"  # Versión específica del chart de Kong

  set {
    name  = "env.database"  # Configuración del plugin de base de datos para Kong (ejemplo: postgresql)
    value = "postgres"
  }

  set {
    name  = "env.pg_host"  # Configuración de la dirección del host de la base de datos (ejemplo: my-database-host)
    value = "my-database-host"
  }

  set {
    name  = "env.pg_user"  # Configuración del usuario de la base de datos para Kong (ejemplo: my-database-user)
    value = "my-database-user"
  }

  set {
    name  = "env.pg_password"  # Configuración de la contraseña de la base de datos para Kong (ejemplo: my-database-password)
    value = "my-database-password"
  }

  set {
    name  = "env.pg_database"  # Configuración del nombre de la base de datos para Kong (ejemplo: my-kong-database)
    value = "my-kong-database"
  }
}
