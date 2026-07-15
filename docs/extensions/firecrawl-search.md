# firecrawl-search

`firecrawl-search` adds Firecrawl-backed search, scrape, and crawl tools for web
research from Pi.

## Files

| File                                        | Purpose                                     |
| ------------------------------------------- | ------------------------------------------- |
| `extensions/firecrawl-search/index.ts`      | Registers Firecrawl tools.                  |
| `extensions/firecrawl-search/prompt.ts`     | Provides model-facing web-tool guidance.    |
| `extensions/firecrawl-search/index.test.ts` | Covers output handling and failures.        |
| `extensions/firecrawl-search/package.json`  | Declares Firecrawl and Effect dependencies. |

## Configuration

Set `FIRECRAWL_API_KEY` in `~/.pi/agent/.env`:

```sh
cp ~/.pi/agent/.env.example ~/.pi/agent/.env
```

## Behavior

```mermaid
flowchart LR
  agent["Agent"] --> tool["Firecrawl tool"]
  tool --> api["Firecrawl API"]
  api --> result["search/scrape/crawl result"]
  result --> agent
```

Use this extension when the answer depends on current web content or when a
specific page needs to be searched, scraped, or crawled.

## Development

```sh
cd extensions/firecrawl-search
bun run check
bun run test
```
