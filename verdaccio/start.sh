docker run -it --rm --name verdaccio \
-p 4873:4873 \
-v $PWD/conf:/verdaccio/conf \
-v $PWD/storage:/verdaccio/storage \
-v $PWD/plugins:/verdaccio/plugins \
verdaccio/verdaccio
