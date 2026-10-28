# OpenAMSOrg/.github

`profile/README.md` is the page shown on <https://github.com/OpenAMSOrg>.

Its pictures live in `profile/assets` and are rendered by `tools/render.sh`
from `tools/banner.html` and `tools/card.html`, with headless Chromium and
ImageMagick. The colours and fonts are the docs site's
(<https://openams.si-forge.com>). The mark and the wordmark are copied into
`tools/brand` from the logo kit in
[openams](https://github.com/OpenAMSOrg/openams) (`tools/docs/logo`), along
with the two photos the cards frame. Change any of them, run
`tools/render.sh`, and commit the new pictures.

The README links its pictures by their `raw.githubusercontent.com` address on
`main`, so they show only once they are pushed.
