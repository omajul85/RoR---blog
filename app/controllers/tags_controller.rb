class TagsController < ApplicationController

	include TagsHelper

	before_action :find_tag, only: [:show, :edit, :update, :destroy]

	def index
		@tags = Tag.all
	end

	def show
	end

	def destroy
		@tag.destroy
		flash.notice = "Tag deleted!"
		redirect_to tags_path
	end

end