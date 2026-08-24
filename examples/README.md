# Exemplos de integração por cliente

Cada subdiretório segue a mesma estrutura:

```text
<cliente>/
├── config/   # Configurações de conexão com o GitHub MCP Server.
├── scripts/  # Scripts seguros para verificar pré-requisitos e abrir PRs.
└── src/      # Instruções que podem ser fornecidas ao agente de IA.
```

Os exemplos `stdio` executam o servidor MCP local oficial com Docker:

```text
ghcr.io/github/github-mcp-server
```

Defina `GITHUB_PERSONAL_ACCESS_TOKEN` no ambiente **antes** de iniciar o
cliente. Os arquivos de configuração não contêm tokens. Use um token com o
menor conjunto de permissões necessário e limite-o aos repositórios desejados.

Os exemplos HTTP remoto são modelos: substitua
`REPLACE_WITH_LOCAL_GITHUB_PAT` apenas em uma configuração local não
versionada, ou use o mecanismo de credenciais do respectivo cliente.

| Cliente | MCP nativo | Configurações incluídas |
| --- | --- | --- |
| Claude Code | Sim | Docker/stdio e HTTP remoto |
| Codex | Sim | Docker/stdio e HTTP remoto |
| Gemini CLI | Sim | Docker/stdio e HTTP remoto |
| Cursor | Sim | Docker/stdio e HTTP remoto |
| Aider | Não | Modelo AiderDesk (MCP) e alternativa `gh` CLI |

O Aider CLI não possui suporte MCP nativo. Não use pacotes MCP GitHub
descontinuados; use AiderDesk para MCP ou o fluxo de branch/PR por `gh` CLI
documentado no exemplo.
