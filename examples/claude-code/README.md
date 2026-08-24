# Claude Code

Use `config/mcp-stdio.json` for the local Docker server or
`config/mcp-remote.json` for GitHub's remote HTTP endpoint. Merge the chosen
entry into a project `.mcp.json`, or add it through `claude mcp add`.

Before starting Claude Code, export `GITHUB_PERSONAL_ACCESS_TOKEN`. Never place
the token in `.mcp.json` or commit it.
