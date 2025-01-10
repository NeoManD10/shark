# Herramienta de Phishing Básica - Uso Educativo

## ⚠️ Aviso Importante

**Esta herramienta ha sido creada únicamente con fines educativos.** Mi propósito principal fue proponerme este reto para aprender mas sobre bashscript. **El uso de esta herramienta para fines malintencionados es ilegal y puede tener consecuencias legales graves.**

Si decides utilizar esta herramienta, por favor hazlo de manera ética y responsable.

---

## 📖 Descripción

Esta es una herramienta básica de phishing que simula un ataque de ingeniería social. El objetivo principal es ayudar a comprender los métodos que los atacantes suelen usar para obtener información sensible (como contraseñas o datos personales), de modo que los usuarios puedan identificar y protegerse mejor contra estos ataques.

La herramienta crea una página web que simula ser una página legítima (por ejemplo, un formulario de inicio de sesión falso) y registra las credenciales ingresadas en un archivo para su análisis.

---

## 🚀 Características

- Interfaz básica que simula una página de inicio de sesión.
- Registro de datos ingresados por el usuario en un archivo local.

---

## ⚙️ Requisitos

- **BashScript** (versión 3.x) para ejecutar el servidor.
- **HTML y CSS** básicos para la página web simulada. (Se puede usar alguna pagina falsa ya hecha anteriormente para)
- Conexión local o red controlada para pruebas seguras.
- Los demas requisitos se instalan automaticamente en el script

---

# Shark Program

Este programa está diseñado para ejecutarse fácilmente en sistemas basados en Unix/Linux. Sigue las instrucciones a continuación para configurarlo y ejecutarlo.

## Instrucciones de instalación

### Linux/Mac OS

Clona este repositorio en tu máquina local. Una vez dentro de la carpeta que prefieras, abre la terminal y escribe los siguientes comandos:

```bash
$ git clone https://github.com/NeoManD10/shark.git
$ chmod +x shark
$ ./shark
$ ssh -R 80:localhost:8080 nokey@localhost.run
```

**Cabe destacar el archivo login.html es codigo html es de AliMilani por el momento. Estoy en proceso de hacer mi version.**
