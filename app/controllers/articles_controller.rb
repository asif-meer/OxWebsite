class ArticlesController < InheritedResources::Base
  def new
    @categories=Category.all
    @article=Article.new
  end

  def edit
    @categories=Category.all
    @article=Article.find(params[:id])
  end

  def create
    @article = Article.new(params[:article])
    if params[:subcategory].present?
      @subcategory=Subcategory.find(params[:subcategory])
      @article.container=@subcategory
    else
      @category=Category.find(params[:category])
      @article.container=@category
    end
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render json: @article, status: :created, location: @article }
      else
        format.html { render action: "new" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def get_subcategories
    @category= Category.find(params[:category_id])
    @subcategories=@category.subcategories
    respond_to do |format|
      format.js
    end
  end
end
