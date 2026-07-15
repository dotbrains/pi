# background-terminals

The `background-terminals` skill teaches the agent when and how to use managed
background terminal tools.

## Source

| Path                                   | Purpose                                       |
| -------------------------------------- | --------------------------------------------- |
| `skills/background-terminals/SKILL.md` | Agent-facing skill instructions.              |
| `extensions/background-terminals/`     | Tool and UI implementation used by the skill. |

## When It Applies

Use this skill when a command should keep running while work continues:

- dev servers
- file watchers
- streaming builds
- long-running test loops
- commands whose output should be inspected later

Use a normal shell command for short, finite commands.

```mermaid
flowchart LR
  request["long-running command"] --> skill["background-terminals skill"]
  skill --> start["bg_start"]
  start --> inspect["bg_status / bg_list"]
  inspect --> stop["bg_kill when needed"]
```

## Operating Rules

- Start long-running commands with `bg_start`.
- Provide a short recognizable `title`.
- Set `working_dir` when the process should run outside the current directory.
- Do not use background terminals for interactive prompts.
- Continue useful work after starting a process instead of polling.
- Use `bg_status` only when output or process status is needed.
- Use `bg_kill` for stale, stuck, or no-longer-needed processes.
- Tell users they can open `/ps` to inspect live output and kill processes.

## Tool Mapping

| Tool        | Purpose                                          |
| ----------- | ------------------------------------------------ |
| `bg_start`  | Start a managed background command.              |
| `bg_status` | Inspect one terminal's status and recent output. |
| `bg_list`   | List tracked background terminals.               |
| `bg_kill`   | Stop one or more tracked terminals.              |
| `/ps`       | Interactive terminal inspection UI.              |

## Notes

Background terminals receive no stdin. Full output is captured to spill files
when needed, while tool responses show concise tails so the agent context stays
manageable.
