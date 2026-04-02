# Notion Integration

Search pages, list trending content, view user activity, and manage your [Notion](https://notion.so) workspace.

## When to Use This Skill

Use this skill when the user asks about:
- Searching for pages or documents in Notion
- Viewing page details, trending content, or activity
- Listing workspace users
- Finding who viewed a specific page
- Notion content workflows

## Prerequisites

```bash
npm install -g @dotbrains/notion-cli
notion init   # Set up your Notion credentials
```

Credentials are stored at `~/.config/notion/config.json`.

## Available Commands

| Command | Description | Example |
|---|---|---|
| `notion search <query>` | Search for pages | `notion search "onboarding"` |
| `notion pages` | List available pages | `notion pages` |
| `notion page <id>` | Get page details | `notion page <page-id>` |
| `notion trending` | List trending pages by views | `notion trending` |
| `notion users` | List workspace users | `notion users` |
| `notion page-activity <id>` | Show visitor activity for a page | `notion page-activity <id>` |
| `notion user-activity` | Show where users are most active | `notion user-activity` |
| `notion init` | Configure credentials | `notion init` |

All commands support:
- `--json` for raw JSON output
- `--limit <n>` for result limits
- `--all` for automatic pagination

## Workflows

### Find and review documents

```bash
# Search for pages about a topic
notion search "quarterly review"

# Get details on a specific page
notion page <page-id>

# Check who's been viewing it
notion page-activity <page-id>
```

### Content audit

```bash
# List trending pages
notion trending --limit 20

# Check which pages are getting the most engagement
notion trending | jq '.[] | {title, views}'
```

### Team activity

```bash
# List all workspace users
notion users | jq '.[].name'

# See where users are most active
notion user-activity
```

### Cross-tool: Linear + Notion

Combine with the linear skill for issue-to-doc workflows:

```bash
# Find Linear issue about a feature
linear search "onboarding flow"

# Then find related Notion docs
notion search "onboarding"
```

## Output Format

All commands output structured JSON. Use `jq` to extract specific fields:

```bash
# Get page titles from search
notion search "guide" | jq '.[].title'

# Get page edit times
notion pages --sort edited | jq '.[:5][] | {title, lastEditedTime}'
```

## Rules

- Always use `notion init` to set up credentials first — do not hardcode tokens
- The CLI outputs JSON by default — pipe through `jq` for readability
- Page IDs are long UUID strings (e.g., `a1b2c3d4-e5f6-7890-abcd-ef1234567890`)
- Use `--all` when you need every result (default is paginated)
