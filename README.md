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
├── agents/                      # Individual agent persona definitions
├── multi-team/                  # -> submodule: dotbrains/pi-multi-team
├── settings.json                # Pi workspace settings
├── damage-control-rules.yaml    # Safety audit rules
├── LICENSE
└── README.md
```

## Features

### Install Dependencies

```bash
brew install just   # Command runner for model routing
```

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

**Individual:** planner, reviewer, builder, documenter, scout, red-team, plan-reviewer, bowser

**Meta:** pi-pi (extension/theme/skill/config experts)

### Multi-Team Orchestration

Three-tier agent orchestration lives in the [pi-multi-team](https://github.com/dotbrains/pi-multi-team) submodule. Inspired by [IndyDevDan's "One Agent Is NOT ENOUGH"](https://www.youtube.com/watch?v=M30gp1315Y4).

```
Orchestrator (no codebase tools — only delegates)
├── Engineering Lead → Frontend Dev, Backend Dev
├── Planning Lead → Planner, Plan Reviewer
└── Validation Lead → Reviewer, Security Reviewer, QA Engineer
```

The submodule includes a `justfile` for model-routed commands. See the [pi-multi-team README](https://github.com/dotbrains/pi-multi-team) for full documentation.

## Inspiration

Extensions, agent personas, themes, and features adapted from [pi-vs-claude-code](https://github.com/disler/pi-vs-claude-code).

## License

This project is licensed under the [PolyForm Shield License 1.0.0](https://polyformproject.org/licenses/shield/1.0.0/) -- see [LICENSE](LICENSE) for details.
