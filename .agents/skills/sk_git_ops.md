# Skill: Git & GitHub Workflow (`sk_git_ops`)

## 1. Branching Model
- `dev`: Active R&D branch for drafting and verifying modules.
- `main`: Stable milestone branch updated via fast-forward merge when a full chapter is `VERIFIED`.

## 2. Commit & Sync Protocol
Use `./infra/git_sync.sh "<type>(<scope>): <summary>"` to stage, validate, commit, and push changes:
- `feat(ch01-m01): derive BZ orthogonality and linearized Dirac sea`
- `test(ch06-m03): verify D^2 = I matrix identity in Julia`
- `docs(toc): bump TOC to v1.1.0 with expanded point-splitting lemma`
