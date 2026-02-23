+++
title = "🔩 my development environment at 2026"
description = ""
date = "2026-02-23T13:32:18+09:00"
updated = "2026-02-23T13:32:18+09:00"
draft = false
template = "blog/page.html"

[taxonomies]
authors = ["snrsw"]

[extra]
lead = ""
+++

# Summary

- terminal: [Ghostty](https://ghostty.org/)
- shell: [fish](https://fishshell.com/)
- prompt: [oh-my-posh](https://ohmyposh.dev/)
- editor:
  - [Helix](https://github.com/helix-editor/helix)
  - [VSCode](https://code.visualstudio.com/)
- theme: GitHub Light
- launcher: [Raycast](https://www.raycast.com/)
- browser: [chrome](https://www.google.com/intl/ja/chrome/)
- package manager: [Nix](https://nixos.org/)
- user environment manager: [home-manager](https://github.com/nix-community/home-manager)
- repository manager: [ghq](https://github.com/x-motemen/ghq)
- adhoc tool use: [comma](https://github.com/nix-community/comma)
- file manager: [yazi](https://github.com/sxyazi/yazi)
- fuzzy finder: [fzf](https://github.com/junegunn/fzf)
- Git worktrees: [git-wt](https://github.com/k1LoW/git-wt)
- GitHub notification: [gh-triage](https://github.com/k1LoW/gh-triage)
- GitHub Issues/PRs view: [gh-own](https://github.com/snrsw/gh-own)
- Docker: [Orbstack](https://orbstack.dev/)
- monitor: nil
- todo manager: a markdown file

# Details

## terminal, shell, prompt, theme, editor, etc

Coding agents have led me to use the terminal more, so I went with:

- Ghostty for being fast as a terminal emulator,
- Helix for being easy to pick up as a terminal editor (even for a Vim beginner),
- yazi for making it easy to review a coding agent's plan and output in the terminal.

Ghostty, Helix, yazi, and fish are easy to use out of the box with minimal configuration, which I like.
The one exception is oh-my-posh, which I added specifically for its bubblesextra theme.
Also, GitHub Light is my newly adopted color theme for these tools.
I find it easier on the eyes than dark themes, and it also feels visually consistent with the browser.


## managers

Nix, home-manager, and comma are great tools for a declarative, portable, and clean environment.
In particular, [dev-templates](https://github.com/the-nix-way/dev-templates) is something I use to quickly set up per-project environments.


## hardware

I use a plain Mac keyboard and trackpad, without an external monitor.
This setup is very portable and helps me focus on the task at hand.
For running concurrent tasks with coding agents, Ghostty tabs and notifications help me manage them.

## todo manager

I use just a markdown file, like this:

```markdown
## 2026-02-23
- [project A] implement a feature X
- [project B] fix a bug: https://XXXXXX
- [private]: book dentist
---
- [project A] review the PR: https://YYYYYY


## 2026-02-24
- [project A] implement a feature X
- [private]: book dentist
```

When a task is done, I move it below the `---` of that day, then delete it when I plan the next day's tasks.
This is inspired by [I Tried Every Todo App and Ended Up With a .txt File
](https://www.al3rez.com/todo-txt-journey)
