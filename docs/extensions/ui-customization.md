# ui-customization

`ui-customization` applies local Pi UI customizations.

## Files

| File                                       | Purpose                              |
| ------------------------------------------ | ------------------------------------ |
| `extensions/ui-customization/index.ts`     | Registers UI customization behavior. |
| `extensions/ui-customization/package.json` | Declares extension scripts.          |

## Behavior

This extension is for local interface adjustments that belong with the agent
setup rather than upstream Pi defaults.

## Development

```sh
cd extensions/ui-customization
bun run check
```
