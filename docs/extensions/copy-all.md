# copy-all

`copy-all` copies useful project context for sharing, handoff, or external
review.

## Files

| File                               | Purpose                                      |
| ---------------------------------- | -------------------------------------------- |
| `extensions/copy-all/index.ts`     | Registers the copy-all behavior.             |
| `extensions/copy-all/package.json` | Declares extension dependencies and scripts. |

## Behavior

The extension is intentionally small: it gives the user or agent a quick way to
collect relevant context without manually opening each file.

## Development

```sh
cd extensions/copy-all
bun run check
```
