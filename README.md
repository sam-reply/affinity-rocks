# Affinity Rocks

A simple, live CI/CD demo repository showing GitHub Actions in action.

## What This Is

This repository demonstrates:
- **CI (Continuous Integration)** — Automated tests on every pull request
- **CD (Continuous Deployment)** — Automatic deployment to GitHub Pages on merge to main
- **Quality gates** — Code must pass tests before merging

## The Demo

See **DEMO_INSTRUCTIONS.md** for a complete walkthrough (this file is in `.gitignore` and won't be deployed).

### Quick Start

1. Visit the GitHub Pages URL (see below)
2. View the live, deployed message
3. Check out the demo branches to see CI/CD in action

## Deployment

This repository is deployed to GitHub Pages at:
```
https://YOUR_USERNAME.github.io/affinity-rocks/
```

GitHub Pages rebuilds automatically whenever code is pushed to the `main` branch.

## Repository Structure

```
affinity-rocks/
├── index.html                    # Production webpage
├── message.txt                   # Message displayed on page (tested by CI)
├── README.md                     # This file
├── .gitignore                    # Ignores DEMO_INSTRUCTIONS.md
├── DEMO_INSTRUCTIONS.md          # Demo walkthrough (not deployed)
├── .github/
│   └── workflows/
│       ├── ci.yml               # CI workflow (tests on PR)
│       └── cd.yml               # CD workflow (deploys on merge)
└── tests/
    └── test_enthusiasm.sh        # Test: message ends with !
```

## How It Works

### CI Workflow (`ci.yml`)

Triggers on every pull request to `main`:
1. Checks out the code
2. Runs `tests/test_enthusiasm.sh`
3. Shows pass/fail status in GitHub UI

The test checks: **Does `message.txt` end with an exclamation mark?**

- ✅ Ends with `!` → CI passes → PR can merge
- ❌ Doesn't end with `!` → CI fails → PR blocked

### CD Workflow (`cd.yml`)

Triggers on every push to `main`:
1. Checks out the code
2. Uploads files as GitHub Pages artifact
3. Deploys to GitHub Pages automatically

Production is live within seconds.

## Try It Out

1. **Create a branch** with a message that fails the test (no `!`)
2. **Open a PR** and watch CI fail
3. **Fix the message** and push again
4. **Watch CI pass** and merge
5. **Merge to main** and watch CD deploy
6. **Refresh the live page** to see the update

## License

MIT
