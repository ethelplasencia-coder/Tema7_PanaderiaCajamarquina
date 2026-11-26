#!/usr/bin/env bash
# Publica el repositorio en GitHub con todo su historial, ramas y tags.
# Requisitos: git y GitHub CLI (gh) con sesión iniciada (gh auth login).
set -e
USUARIO="${1:-ethelplasencia-coder}"
gh repo create "$USUARIO/Tema7_PanaderiaCajamarquina" --public --source=. --remote=origin
git push origin v1.0 "v1.0^{commit}:refs/heads/main"   # main remoto empieza en la línea base
git push origin cambio/CR-001-recetas
# PR de la rama de cambio (para la evidencia de revisión):
gh pr create --base main --head cambio/CR-001-recetas \
  --title "CR-001: registro de recetas (RF13) y ajuste de RF08" \
  --body "Cierra CR-001 y CR-002. Matriz y reporte de cobertura actualizados. Revisor: <integrante>"
echo "Pide al revisor que apruebe el PR en GitHub y luego ejecuta:"
echo "  git push origin main --tags   # sube la fusión ya hecha; GitHub marca el PR como fusionado"
