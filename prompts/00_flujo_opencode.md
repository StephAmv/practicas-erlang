# Flujo de trabajo con OpenCode (modo Agente) — paso a paso

## 0. Preparar el entorno (una sola vez, en WSL)
```bash
sudo apt update
sudo apt install -y erlang git curl
# rebar3 (si apt no lo trae o está viejo):
curl -fsSL -o rebar3 https://s3.amazonaws.com/rebar3/rebar3
chmod +x rebar3 && sudo mv rebar3 /usr/local/bin/rebar3
erl -noshell -eval 'io:format("OTP ~s~n",[erlang:system_info(otp_release)]),halt().'
rebar3 version
```

## 1. Crear la carpeta y abrir OpenCode
```bash
mkdir -p ~/practicas-erlang && cd ~/practicas-erlang
git init
opencode
```
- Dentro de OpenCode, el modo **Build** es el modo agente (puede crear/editar archivos y correr comandos). Con **Tab** cambias entre Build y Plan: déjalo en **Build**.
- Si no tienes modelo configurado: `/connect` y luego `/models`.
- Toma captura de la pantalla de OpenCode trabajando: es tu evidencia de que usaste el agente.

## 2. Orden de prompts
1. `01_prompt_maestro.md` → crea el proyecto, AGENTS.md y la estructura.
2. `02_prompts_por_programa.md` → un prompt por práctica (3 a 13). Pégalos uno por uno.
3. `03_prompt_cierre.md` → READMEs, pruebas finales y commit.

## 3. Después de cada prompt, verifica TÚ
```bash
rebar3 compile && rebar3 eunit
rebar3 escriptize && ./_build/default/bin/ejercicios todos
```
Si algo falla, pega el error completo en OpenCode con: "Corrige este error y vuelve a correr rebar3 compile y rebar3 eunit".

## 4. Subir a GitHub
```bash
git remote add origin https://github.com/TU_USUARIO/TU_REPO.git
git branch -M main
git push -u origin main
```
