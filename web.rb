require 'sinatra'
require 'sinatra/assetpack'

assets do
	# By default, Sinatra::AssetPack looks at ./app/css/, ./app/js/ and
	# ./app/images. Let's change this to look at ./css.
	serve '/js',     from: 'assets/js'        # Optional
	serve '/css',    from: 'assets/css'       # Optional
	serve '/img', from: 'assets/img'    # Optional
	serve '/images', from: 'assets/images'    # Optional
	serve '/assets',    from: 'assets/'       # Optional

	css :main, [
		'/css/*.css'
	]

	js :main, '/js/app.js', [
      '/js/vendor/**/*.js',
      '/js/app/**/*.js'
    ]
end

get '/' do
	erb :index # views/index.erb
end

get '/login' do
	erb :login # views/login.erb
end