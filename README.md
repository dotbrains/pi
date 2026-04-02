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

- `AGENTS.md` — Global instructions (loaded at startup from `~/.pi/agent/`)
- `skills/` — Skill definitions ([Agent Skills standard](https://agentskills.io))
- `themes/` — Color themes for the pi TUI
- `extensions/` — Custom TypeScript extensions (project-level)
- `prompts/` — Prompt templates (Markdown with `{{variables}}`)
- `shared/` — Shared AI config submodule ([dotbrains/shared-ai-config](https://github.com/dotbrains/shared-ai-config))

### Skills

| Skill | Purpose |
|---|---|
| `ship` | Commit, push, and open a PR |
| `linear` | Search issues, manage comments, check status ([dotbrains/linear-cli](https://github.com/dotbrains/linear-cli)) |
| `notion` | Search pages, view activity, list users ([dotbrains/notion-cli](https://github.com/dotbrains/notion-cli)) |

### Themes

Inherited from [pi-vs-claude-code](https://github.com/disler/pi-vs-claude-code). Switch with `/theme` or `Ctrl+T`.

| Theme | Style |
|---|---|
| `catppuccin-mocha` | Soft pastels on dark |
| `tokyo-night` | Balanced cool tones |
| `gruvbox` | Warm retro |
| `dracula` | Purple-accent dark |
| `nord` | Arctic blue tones |
| `rose-pine` | Elegant muted |

### Linear Integration

Requires [dotbrains/linear-cli](https://github.com/dotbrains/linear-cli):

```bash
npm install -g @dotbrains/linear-cli
linear init
```

The `linear` skill teaches pi to search issues, get issue details with comments, add comments, list labels and users, and check platform status — all from the CLI.

### Notion Integration

Requires [dotbrains/notion-cli](https://github.com/dotbrains/notion-cli):

```bash
npm install -g @dotbrains/notion-cli
notion init
```

The `notion` skill teaches pi to search pages, list trending content, view page activity, and list workspace users — all from the CLI.

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

## Inspiration

Themes and agent personas inspired by [pi-vs-claude-code](https://github.com/disler/pi-vs-claude-code).

## License

This project is licensed under the [PolyForm Shield License 1.0.0](https://polyformproject.org/licenses/shield/1.0.0/) -- see [LICENSE](LICENSE) for details.
