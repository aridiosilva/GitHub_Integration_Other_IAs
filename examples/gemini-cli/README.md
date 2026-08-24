# Gemini CLI

Gemini CLI supports project-level `.gemini/settings.json` and global
`~/.gemini/settings.json`. Merge one example configuration with the desired
scope. The remote form uses Gemini's `httpUrl` property.

Set `GITHUB_PERSONAL_ACCESS_TOKEN` before using Docker/stdio. For remote HTTP,
provide the Authorization header through a local, uncommitted configuration or
the credential mechanism supported by your Gemini CLI installation.
