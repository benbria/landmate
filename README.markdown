# Landmate - The Necessary Node.js + Express Stack

## Hit the Ground Running

* Jade, Stylus, CoffeeScript and Markdown baked in
* Ready for Heroku deployment (make sure to grab the Heroku Toolbelt)
* Normalize.css and nib included for styling

## Local Development

* `$ npm install` to install all required node modules
* `$ make work` or `$ make go` to start the server in dev or prod mode
* View it at localhost:5000

## Heroku Deployment

* `$ heroku create` to create your app
* `$ git push heroku master` now and whenever you want to update the app
* `$ heroku config:add NODE_ENV=production` to set the environment to prod
