# pi

[![License: PolyForm Shield 1.0.0](https://img.shields.io/badge/License-PolyForm%20Shield%201.0.0-blue.svg)](https://polyformproject.org/licenses/shield/1.0.0/)

This repository contains my sensible defaults for [pi coding agent](https://shittycodingagent.ai).

## Upstream Project

- https://github.com/badlogic/pi-mono/tree/main/packages/coding-agent

## Install pi

```bash
npm install -g @mariozechner/pi-coding-agent
```

## Install This Config

The contents of this repository should be placed in `~/.pi/`.

```bash
git clone --recursive https://github.com/dotbrains/pi.git $HOME/.pi
```

## Directory Structure

```
pi/                              # -> ~/.pi/
├── agent/                       # -> ~/.pi/agent/
│   ├── AGENTS.md                # Global instructions
│   ├── extensions/              # TypeScript extension modules
│   ├── skills/                  # Skill definitions
│   │   ├── bowser/              # Browser automation skill
│   │   ├── linear/              # Linear issue tracking skill
│   │   ├── notion/              # Notion documentation skill
│   │   └── ship/                # Commit, push, PR skill
│   ├── themes/                  # TUI color themes
│   └── sessions/                # Saved sessions (gitignored)
├── agents/                      # Agent persona definitions
├── settings.json                # Pi workspace settings
├── damage-control-rules.yaml    # Safety audit rules
├── shared/                      # Shared AI config submodule
├── LICENSE
└── README.md
```

## Features

### Skills

| Skill | Purpose |
|---|---|
| `ship` | Commit, push, and open a PR |
| `linear` | Search issues, manage comments ([dotbrains/linear-cli](https://github.com/dotbrains/linear-cli)) |
| `notion` | Search pages, view activity ([dotbrains/notion-cli](https://github.com/dotbrains/notion-cli)) |
| `bowser` | Browser automation ([pi-vs-claude-code](https://github.com/disler/pi-vs-claude-code)) |

### Extensions

16 TypeScript extensions for pi. Load with `pi -e <path>`:

```bash
pi -e extensions/minimal.ts
pi -e extensions/agent-team.ts -e extensions/damage-control.ts
```

### Themes

11 TUI themes from [pi-vs-claude-code](https://github.com/disler/pi-vs-claude-code). Switch with `/theme` or `Ctrl+T`.

catppuccin-mocha, cyberpunk, dracula, everforest, gruvbox, midnight-ocean, nord, ocean-breeze, rose-pine, synthwave, tokyo-night

### Agent Personas

Role-specific agent definitions for per-project use (copy to `.pi/agents/` in your project):

planner, reviewer, builder, documenter, scout, red-team, plan-reviewer, bowser, pi-pi (meta-agent experts)

## Shared Agent Definitions

Skill body content is shared with [Claude Code](https://github.com/dotbrains/claude), [OpenCode](https://github.com/dotbrains/opencode), and [Codex CLI](https://github.com/dotbrains/codex) via the [shared-ai-config](https://github.com/dotbrains/shared-ai-config) submodule. To update:

```bash
git submodule update --remote shared
./shared/assemble.sh pi
```

## Inspiration

Extensions, agent personas, themes, and features adapted from [pi-vs-claude-code](https://github.com/disler/pi-vs-claude-code).

## License

This project is licensed under the [PolyForm Shield License 1.0.0](https://polyformproject.org/licenses/shield/1.0.0/) -- see [LICENSE](LICENSE) for details.
