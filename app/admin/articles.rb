ActiveAdmin.register Article do

form :partial => "form"

  member_action :get_subcategories, :method => :post do
    @category= Category.find(params[:category_id])
    @subcategories=@category.subcategories
    respond_to do |format|
      format.js
    end
  end

  member_action :create, :method => :post do
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
        format.html { redirect_to admin_articles_path, notice: 'Article was successfully created.' }
        format.json { render json: @article, status: :created, location: @article }
      else
        format.html { render action: "new" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
