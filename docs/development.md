# Development

Install dependencies from the repository root:

```sh
npm install
```

Run the standard checks:

```sh
npm run check
npm test
npm run format:check
```

Format TypeScript, CommonJS, and JSON files:

```sh
npm run format
```

The root test command runs deterministic local tests only. Live Claude and Codex backend tests remain available from `extensions/subagents/` with `npm run test:live`.
