# pi

[![License: PolyForm Shield 1.0.0](https://img.shields.io/badge/License-PolyForm%20Shield%201.0.0-blue.svg)](https://polyformproject.org/licenses/shield/1.0.0/)

This repository contains my sensible defaults for [pi coding agent](https://shittycodingagent.ai).

## Upstream Project

- https://github.com/badlogic/pi-mono/tree/main/packages/coding-agent

## Install pi

```bash
npm install -g @mariozechner/pi-coding-agent
```

## Contents

- `AGENTS.md` — Global instructions (loaded at startup)
- `skills/` — Skill definitions (SKILL.md format, assembled from shared)
- `shared/` — Shared AI config submodule ([dotbrains/shared-ai-config](https://github.com/dotbrains/shared-ai-config))
- `extensions/` — Custom TypeScript extensions
- `prompts/` — Prompt templates (Markdown with `{{variables}}`)
- `themes/` — Custom themes

### Skills

| Skill | Purpose |
|---|---|
| `ship` | Commit, push, and open a PR |

## Install This Config

The contents of this repository should be placed in `~/.pi/agent/`.

```bash
git clone --recursive https://github.com/dotbrains/pi.git $HOME/.pi/agent
```

## Shared Agent Definitions

Skill body content is shared with [Claude Code](https://github.com/dotbrains/claude), [OpenCode](https://github.com/dotbrains/opencode), and [Codex CLI](https://github.com/dotbrains/codex) via the [shared-ai-config](https://github.com/dotbrains/shared-ai-config) submodule. To update after shared content changes:

```bash
git submodule update --remote shared
./shared/assemble.sh pi
```

## License

This project is licensed under the [PolyForm Shield License 1.0.0](https://polyformproject.org/licenses/shield/1.0.0/) -- see [LICENSE](LICENSE) for details.
