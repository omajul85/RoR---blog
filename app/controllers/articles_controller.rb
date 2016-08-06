class ArticlesController < ApplicationController

	include ArticlesHelper

	before_action :authenticate_author!, except: [:index, :show, :popular]
	before_action :find_article, only: [:show, :edit, :update, :destroy]

	def index
	  @articles = Article.all
	end

	def show
		@article.increment(:view_counter, 1)
		@article.save
		@comment = Comment.new
		@comment.article_id = @article.id
	end

	def new
		# @article = Article.new
		@article = current_author.articles.build
	end

	def create
		@article = current_author.articles.build(article_params)
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

	def popular
		@articles = Article.order('articles.view_counter DESC').limit(3)
		render :popular
	end

end
