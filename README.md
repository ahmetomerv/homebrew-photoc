# photoc Homebrew tap

This tap provides a source-building Homebrew formula for
[`photoc`](https://github.com/ahmetomerv/photoc).

```sh
brew install ahmetomerv/photoc/photoc
```

After installation, run `brew update` and `brew upgrade photoc` to install a
newer formula version. To use `brew install photoc` by its short name, first
trust this formula with `brew trust --formula ahmetomerv/photoc/photoc`.

## Updates

The photoc release workflow requests a formula update after publishing a stable
GitHub release. The [Propose photoc release](.github/workflows/photoc-release.yml)
workflow verifies that release, calculates its tagged source archive checksum,
and opens a pull request. It does not merge automatically. Review the formula
diff and wait for the tap's `brew test-bot` checks before merging.

The [manual Homebrew release checklist](https://github.com/ahmetomerv/photoc/blob/main/docs/homebrew-releases.md)
describes how to update or repair the formula yourself. The `brew bump` workflow
can also be started manually as a fallback.
