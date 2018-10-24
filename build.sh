set -e

rm -rf dist
mkdir dist

( cd config && yarn install --pure-lockfile && yarn build )
( cd overlay && yarn install --pure-lockfile && yarn build )
( cd mobile && yarn install --pure-lockfile && yarn build )
( cd client && yarn install --pure-lockfile && yarn build )

cp client/build/deckmaster-* dist
