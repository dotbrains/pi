# Skills

Skills live under `skills/` and provide agent-facing operating instructions.
They are loaded separately from extensions: extensions add tools and UI
behavior, while skills teach the agent when and how to use those capabilities.

```mermaid
flowchart LR
  user["User request"] --> skill["Skill guidance"]
  skill --> tool["Extension tool"]
  tool --> result["Agent result"]
```

## Inventory

| Skill                  | Purpose                                             |
| ---------------------- | --------------------------------------------------- |
| `background-terminals` | Guidance for managing background terminal sessions. |
| `subagents`            | Guidance for delegating work to Pi subagents.       |

## `background-terminals`

Use this skill when a command should keep running while work continues, such as
a dev server, watcher, long build, or streaming process. It tells the agent to:

- start long-running commands with `bg_start`
- avoid interactive prompts in background terminals
- inspect running commands with `bg_status` or `bg_list`
- stop stale processes with `bg_kill`
- direct users to `/ps` for interactive inspection

## `subagents`

Use this skill when work should be delegated to a child agent. It documents the
available harnesses, model preferences, concurrency limit, and lifecycle tools:

| Tool              | Purpose                                                |
| ----------------- | ------------------------------------------------------ |
| `subagent_spawn`  | Start a child run with a self-contained prompt.        |
| `subagent_check`  | Peek at a run without blocking.                        |
| `subagent_list`   | List active and completed child runs.                  |
| `subagent_wait`   | Block until selected child results are needed.         |
| `subagent_cancel` | Stop selected child runs while preserving transcripts. |

Subagents have their own context windows and cannot see the parent conversation,
so prompts should include paths, constraints, and the expected report format.
