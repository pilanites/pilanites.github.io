# PILANITES archive

Static preservation copy of [www.pilanites.com](https://www.pilanites.com).

The site uses directory-based permalinks, so a page at `example/index.html` is
served as `https://www.pilanites.com/example/` by GitHub Pages.

The WordPress database and original server files are intentionally excluded from
this public repository.

## Add a post

This is a Hugo project. Create and edit a Markdown draft, then publish it:

```sh
hugo new posts/my-new-post.md
# edit content/posts/my-new-post.md and change draft: true to draft: false
hugo --minify
```

Hugo copies the preserved archive from `static/` and writes the complete
deployable site to `public/`. GitHub Pages currently serves the repository's
`main` branch directly, so sync that generated output to the repository root
before committing:

```sh
scripts/publish-static-output.sh
git add . && git commit -m "Publish my new post" && git push
```

New Markdown posts are published at clean URLs, such as `/my-new-post/`, and
appear at `/posts/`.

For a local preview:

```sh
hugo server --disableFastRender
```
