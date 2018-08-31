class InstagramController < ApplicationController

	CALLBACK_URL = "http://localhost:3000/oauth/callback"


	def index

	end

	def oauth_connect
		redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL, :scope =>'public_content')
	end

	def oauth_callback
		response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
		session[:access_token] = response.access_token

		redirect_to '/instagram/cats'
	end

	def content_cats
		client = Instagram.client(:access_token => session[:access_token])
		
		tags = client.tag_search('labor')
		@main_tag = tags[0].name
		@media_items = client.tag_recent_media(@main_tag)
		puts @media_items.first
	end

end