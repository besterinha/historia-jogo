#!/bin/bash
# Script de inicialização do sistema

cd /workspaces/historia-jogo

echo "=== Carregando sistema ==="

# Ler arquivos de regras
echo "--- Lendo ai-context/ ---"
cat ai-context/REGRAS_ESTRUTURA.yaml
cat ai-context/REGRAS_COMPORTAMENTO.yaml
cat ai-context/CONTEXTO.md
cat ai-context/MEMORIA.md

# Ler arquivos do cérebro
echo "--- Lendo cerebro/ ---"
ls -la cerebro/
cat cerebro/bootstrap.json 2>/dev/null || echo "bootstrap.json vazio"
cat cerebro/estado.json 2>/dev/null || echo "estado.json vazio"
cat cerebro/manifest.json 2>/dev/null || echo "manifest.json vazio"
cat cerebro/relacoes.json 2>/dev/null || echo "relacoes.json vazio"
cat cerebro/dependencias.json 2>/dev/null || echo "dependencias.json vazio"
cat cerebro/busca.json 2>/dev/null || echo "busca.json vazio"
cat cerebro/versoes.json 2>/dev/null || echo "versoes.json vazio"

# Ler conteúdo
echo "--- Lendo biblia/ ---"
ls -la biblia/
cat biblia/LORE.md 2>/dev/null || echo "LORE.md vazio"
cat biblia/PERSONAGENS.md 2>/dev/null || echo "PERSONAGENS.md vazio"
cat biblia/TERMOS.md 2>/dev/null || echo "TERMOS.md vazio"

echo "--- Lendo roteiro/ ---"
ls -la roteiro/
cat roteiro/ARCO_PRINCIPAL.md 2>/dev/null || echo "ARCO_PRINCIPAL.md vazio"
cat roteiro/RAMIFICACOES.md 2>/dev/null || echo "RAMIFICACOES.md vazio"
cat roteiro/FLUXOGRAMAS.md 2>/dev/null || echo "FLUXOGRAMAS.md vazio"
cat roteiro/MATRIZ_CONSEQUENCIAS.md 2>/dev/null || echo "MATRIZ_CONSEQUENCIAS.md vazio"
cat roteiro/FINAIS.md 2>/dev/null || echo "FINAIS.md vazio"

echo "--- Lendo narrativa/ ---"
ls -la narrativa/

echo ""
echo "Pronto. Aguardando instruções."

# Script de atualização atômica disponível em: ai-context/atualizar.sh
# Execute após modificar arquivos em biblia/, roteiro/ ou narrativa/
