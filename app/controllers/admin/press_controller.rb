class Admin::PressController < Admin::ResourceController
  
  
  protected
  
  def collection
    return @collection if @collection.present?
    @search = Press.metasearch(params[:search])
    @collection = @search.paginate(:per_page => Spree::Config[:admin_products_per_page], :page => params[:page])
  end  

end