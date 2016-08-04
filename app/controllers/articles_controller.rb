class ArticlesController < ApplicationController

	include ArticlesHelper

	before_action :find_article, only: [:show, :edit, :update, :destroy]

	def index
	  @articles = Article.all
	end

	def show
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			flash.notice = "Article '#{@article.title}' Created!"
			redirect_to article_path(@article)
		else
			render :new
		end
	end

	def destroy
		@article.destroy
		flash.notice = "Article deleted!"
		redirect_to articles_path
	end

	def edit
	end

	def update
		# update automatically saves the changes
		if @article.update(article_params)
			flash.notice = "Article '#{@article.title}' Updated!"
			redirect_to article_path(@article)
		else
			render :edit
		end
	end

end
