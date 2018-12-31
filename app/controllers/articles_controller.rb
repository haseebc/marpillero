class ArticlesController < ApplicationController
    
    # once blog complete apply the following
    # skip_before_action :authenticate_user!, only: %i[show index ]
    # before_action :set_article, only: %i[edit update show destroy]
    skip_before_action :authenticate_user!, only: %i[new create index edit update show destroy]
    before_action :set_article, only: [:edit, :update, :show, :destroy]
    # commented out line below on 31/12/18
    # before_action :set_article, only: %i[destroy]

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article was successfully created"
            redirect_to article_path(@article)
        else
            render 'new'
        end
    end

    def show
        @article = Article.find(params[:id])
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
         flash[:notice] = "Article was updated"
         redirect_to article_path(@article)
        else
         flash[:notice] = "Article was not updated"
         render 'edit'
        end
    end

    def index
        @articles = Article.all
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        flash[:notice] = "Article was deleted"
        redirect_to articles_path
    end

    private
    def article_params
        params.require(:article).permit(:title, :description)
    end

    def set_article
        @article = Article.find(params[:id])
       end

end