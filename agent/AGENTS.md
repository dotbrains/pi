# Global Instructions

## Preferences

- Write clean, idiomatic code that matches the existing codebase style
- Prefer explicit error handling over silent failures
- Use descriptive variable and function names
- Keep functions focused and cohesive
- Add comments only for non-obvious logic or business rules

## Git Conventions

- Use conventional commits: `feat:`, `fix:`, `docs:`, `refactor:`, `test:`, `ci:`, `chore:`
- First line ≤ 72 characters, imperative mood, summarizing the **why**
- Never force-push to `main` or `master`
- Never commit secrets, `.env` files, or credential files

## Communication Style

- Be concise and direct
- Think step-by-step for complex tasks
- When uncertain, ask rather than assume
- Present trade-offs when multiple approaches exist

## Issue Tracking

When working on issues, use the `linear` CLI:

```bash
linear search "query"           # Search for issues
linear issue TEAM-123           # Get issue details
linear issues --labels Bug      # List by label
linear comment-add TEAM-123 -b "Update text"
```

## Documentation

When researching or creating docs, use the `notion` CLI:

```bash
notion search "query"           # Search pages
notion pages                    # List pages
notion page <page-id>           # Get page details
notion trending                 # Trending content
```

## Agent Personas

Per-project `.pi/agents/*.md` files define role-specific behaviors. Common roles:

- **planner** — Breaks features into ordered tasks with dependencies
- **reviewer** — Reviews code for correctness, style, and edge cases
- **builder** — Implements features from specs with test coverage
- **documenter** — Writes and updates documentation
- **scout** — Explores codebases to answer structural questions
- **red-team** — Finds security issues and failure modes

Refer to agent persona files in `.pi/agents/` when a project defines them.
