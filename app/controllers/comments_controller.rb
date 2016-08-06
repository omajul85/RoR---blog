class CommentsController < ApplicationController

	include CommentsHelper

	def create
		  @comment = Comment.new(comment_params)
		  @comment.article_id = params[:article_id]
		  
		  unless @comment.save
		  	flash.notice = "Please enter your name and comment!"
		  end
		  redirect_to article_path(@comment.article)

	end

end
