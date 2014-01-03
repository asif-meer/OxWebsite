class ArticlesController < InheritedResources::Base
  def new
    @categories=Category.all
    @article=Article.new
  end

  def edit
    @categories=Category.all
    @article=Article.find(params[:id])
  end

  def get_subcategories
    @sub_categories= Subcategory.find(params[:category_id])
    respond_to do |format|
      format.js
    end
  end
end
