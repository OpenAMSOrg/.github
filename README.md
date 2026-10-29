# OpenAMSOrg/.github

`profile/README.md` is the page shown on <https://github.com/OpenAMSOrg>.

Its pictures live in `profile/assets`. The animated header at the top,
`hero-{light,dark}.webp`, and its still for visitors who ask for reduced
motion, `hero-{light,dark}.png`, are rendered by `./render.sh hero` in the
private [OpenAMSOrg/opening-video](https://github.com/OpenAMSOrg/opening-video)
repository and copied here.

The other pictures are rendered by `tools/render.sh` from `tools/card.html`
(the project cards) and `tools/banner.html` (the earlier static banner, no
longer on the page), with headless Chromium and ImageMagick. The colours
and fonts are the docs site's (<https://openams.si-forge.com>). The mark and the wordmark are copied into
`tools/brand` from the logo kit in
[openams](https://github.com/OpenAMSOrg/openams) (`tools/docs/logo`), along
with the two photos the cards frame. Change any of them, run
`tools/render.sh`, and commit the new pictures.

The README links its pictures by their `raw.githubusercontent.com` address on
`main`, so they show only once they are pushed.
