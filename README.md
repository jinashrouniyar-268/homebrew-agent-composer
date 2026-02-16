# Homebrew Agent Composer Tap

Homebrew tap for the [Agent Composer CLI](https://github.com/jinashrouniyar-268/agent-composer).

## Installation

```bash
brew install jinashrouniyar-268/agent-composer/agent
```

Or tap first:

```bash
brew tap jinashrouniyar-268/agent-composer
brew install agent
```

## Updating the Formula

After a new release is published on [agent-composer](https://github.com/jinashrouniyar-268/agent-composer/releases), update the formula:

```bash
./scripts/update-formula.sh <version>
git add Formula/agent.rb
git commit -m "Update agent to v<version>"
git push
```

The script automatically:

- Fetches the release archives from GitHub
- Calculates SHA256 checksums for all platforms (macOS x86_64/arm64, Linux x86_64/arm64)
- Updates the formula file

If the product repo has `HOMEBREW_TOKEN` configured, pushing a tag (e.g. `v0.1.0`) will trigger the release workflow to update this formula automatically.

## Documentation

For agent usage, see the [agent-composer repository](https://github.com/jinashrouniyar-268/agent-composer).

For Homebrew help, run `brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
