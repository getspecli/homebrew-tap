# homebrew-tap

Homebrew tap for [specli](https://github.com/getspecli/specli).

```
brew install getspecli/tap/specli
```

## How it works

`formula.rb.tmpl` is the formula template. On each specli release, the `tap` job in specli's
`release.yml` fills in the version and the sha256 values from `checksums.txt`, writes
`Formula/specli.rb` and pushes it here. Do not edit `Formula/specli.rb` by hand.

Requires a `TAP_TOKEN` secret in the specli repo: a fine-grained PAT with Contents read/write on this repo.
