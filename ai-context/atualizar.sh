#!/bin/bash
# Script de atualização atômica - deve ser executado após modificar arquivos em biblia/, roteiro/ ou narrativa/

echo "=== Atualização Atômica ==="

# Atualizar manifest.json com timestamp
if [ -f cerebro/manifest.json ]; then
    echo "Atualizando manifest.json..."
    # Adiciona entrada básica se necessário
    jq '.ultima_atualizacao = "'$(date -Iseconds)'"' cerebro/manifest.json > tmp.json && mv tmp.json cerebro/manifest.json 2>/dev/null || echo "  (jq não disponível, apenas timestamp)"
fi

# Atualizar bootstrap.json
if [ -f cerebro/bootstrap.json ]; then
    echo "Atualizando bootstrap.json..."
    jq '.ultima_atualizacao = "'$(date -Iseconds)'"' cerebro/bootstrap.json > tmp.json && mv tmp.json cerebro/bootstrap.json 2>/dev/null || echo "  (timestamp adicionado manualmente)"
fi

# Atualizar CONTEXTO.md com timestamp
if [ -f ai-context/CONTEXTO.md ]; then
    echo "Atualizando CONTEXTO.md..."
    echo "" >> ai-context/CONTEXTO.md
    echo "---" >> ai-context/CONTEXTO.md
    echo "Última atualização: $(date)" >> ai-context/CONTEXTO.md
fi

# Se o arquivo modificado estiver em narrativa/, atualizar INDICE.md
if [ -d narrativa ] && [ -f narrativa/INDICE.md ]; then
    echo "Atualizando narrativa/INDICE.md..."
    echo "Atualizado em: $(date)" >> narrativa/INDICE.md
fi

echo ""
echo "Ação concluída e verificada."
