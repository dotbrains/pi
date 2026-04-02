# Linear Integration

Search issues, manage comments, list labels and users, and check platform status for [Linear](https://linear.app).

## When to Use This Skill

Use this skill when the user asks about:
- Linear issues, tasks, or bugs
- Searching for issues in their Linear workspace
- Viewing or adding comments to issues
- Listing labels or team members
- Checking Linear platform status
- Issue tracking workflows

## Prerequisites

```bash
npm install -g @dotbrains/linear-cli
linear init   # Set up your API key
```

## Available Commands

| Command | Description | Example |
|---|---|---|
| `linear search <query>` | Search for issues | `linear search "auth bug"` |
| `linear issue <ID>` | Get issue details with comments | `linear issue ENG-123` |
| `linear issues` | List issues (filter by label) | `linear issues --labels Bug` |
| `linear comment-add <ID> -b <text>` | Add a comment to an issue | `linear comment-add ENG-123 -b "Fixed"` |
| `linear labels` | List all labels | `linear labels` |
| `linear users` | List workspace users | `linear users` |
| `linear status` | Check platform status | `linear status` |
| `linear init` | Configure API key | `linear init` |

All commands output JSON. Use `jq` for parsing.

## Workflows

### Find and triage bugs

```bash
# Search for recent bugs
linear issues --labels Bug

# Get details on a specific issue
linear issue ENG-456

# Add a comment with triage notes
linear comment-add ENG-456 -b "Triaged: affects v2.1, priority high"
```

### Search across the workspace

```bash
# Full-text search
linear search "authentication flow"

# Filter by label
linear issues --labels "In Progress"
```

### Team overview

```bash
# List all users
linear users | jq '.[] | {name, email}'

# List all labels
linear labels | jq '.[].name'
```

## Output Format

All commands output structured JSON. Use `jq` to extract specific fields:

```bash
# Get issue titles from search
linear search "bug" | jq '.[].title'

# Get assignee names
linear issue ENG-123 | jq '.assignee.name'
```

## Rules

- Always use `linear init` to set up the API key first — do not hardcode tokens
- The CLI outputs JSON by default — pipe through `jq` for readability
- Issue IDs follow the format `TEAM-NUMBER` (e.g., `ENG-123`)
- Use `--json` flag when available for machine-readable output
