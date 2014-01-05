#!/bin/sh

if [ ${NODE_LANG} = "ja" ]; then
  docs_url="http://nodejs.jp/nodejs.org_ja/docs"
else
  docs_url="http://nodejs.org/docs"
fi

if [ ! -e public/docs/assets ]; then
  mkdir -p public/docs/assets
fi

for asset in style.css sh.css
do
  echo "Download ${docs_url}/${NODE_VERSION}/api/assets/${asset}"
  curl ${docs_url}/${NODE_VERSION}/api/assets/${asset} > public/docs/assets/${asset}
done

for asset in sh_main.js sh_javascript.min.js
do
  echo "Download ${docs_url}/${NODE_VERSION}/${asset}"
  curl ${docs_url}/${NODE_VERSION}/${asset} > public/docs/assets/${asset}
done
