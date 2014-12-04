RAD Prototype
=============

Throw-away prototype for the retirement adviser directory.

Development is done on the `master` branch with the bower_components directory checked out of git (in the gitignore file).

## To deploy to Heroku

The prototype is hosted on Heroku at `http://rad-prototype.herokuapp.com`. To deploy first:

1. remove bower_components from the gitignore file;
2. commit the change locally;
3. run bowndler install to bring down the correct version of the bower_components;
4. run `git push heroku master`;
