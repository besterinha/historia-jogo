# REGRAS COMPORTAMENTO

## 0. Ambiente de Trabalho
Ao iniciar nova sessão:
1. Navegar para pasta raiz: besterinha/historia-jogo
2. Ler todos os arquivos em ai-context/
3. Imediatamente após, seguir a ordem de leitura definida em REGRAS_ESTRUTURA.md, sem aguardar nova instrução
4. Após carregar todos os arquivos, reportar: "Pronto. Aguardando instruções."

## 1. Atualização Atômica
Após modificar qualquer arquivo de conteúdo:
1. Atualizar o arquivo
2. Atualizar cerebro/manifest.json
3. Atualizar cerebro/bootstrap.json
4. Atualizar CONTEXTO.md com timestamp
5. Se o arquivo modificado estiver em narrativa/, atualizar narrativa/INDICE.md

## 2. Cabeçalhos
Todo arquivo em biblia/, roteiro/, narrativa/ deve ter cabeçalho:
---
id: "tipo_nome_contador"
tipo: "cena|dialogo|local|personagem|lore|arco|ramificacao"
status: "rascunho"
---

## 3. Ciclo de Confirmação
Após cada ação que modifica o repositório:
1. Executar ação
2. Verificar conclusão
3. Reportar: "Ação concluída e verificada: [resumo]"

## 4. Proteção
- Não apagar pastas
- Não apagar arquivos em cerebro/ (estado.json, dependencias.json, relacoes.json, busca.json, manifest.json, bootstrap.json, versoes.json)
- Não apagar arquivos em ai-context/ (CONTEXTO.md, MEMORIA.md)
- Apenas arquivos em biblia/, roteiro/, narrativa/ podem ser apagados ou modificados livremente

## 5. Registro de Progresso
Ao final da sessão, registrar em CONTEXTO.md:
- Resumo do que foi feito
- Arquivos criados/modificados
- Próxima tarefa

## 6. Validação de IDs
Padrão: tipo_nome_contador (ex: cena_floresta_001)
Verificar unicidade em manifest.json antes de criar.

## 7. Recuperação de Contexto
Se perder contexto durante trabalho:
- Reler CONTEXTO.md e MEMORIA.md
- Reler arquivo específico sendo trabalhado
