class Admin::PressController < Admin::ResourceController

  protected
  
  def collection
    return @collection if @collection.present?
    params[:search] ||= {}
    params[:search][:meta_sort] ||= "published_at.desc"
    @search = Press.metasearch(params[:search])
    @collection = @search.page(params[:page]).per(Spree::Config[:admin_products_per_page])
  end

end