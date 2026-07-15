# model-info

`model-info` displays active model information in the Pi interface.

## Files

| File                                 | Purpose                                  |
| ------------------------------------ | ---------------------------------------- |
| `extensions/model-info/index.ts`     | Registers model information UI behavior. |
| `extensions/model-info/package.json` | Declares extension scripts.              |

## Behavior

This extension is UI-focused. It helps the user understand which model is active
without opening lower-level session metadata.

## Development

```sh
cd extensions/model-info
bun run check
```
