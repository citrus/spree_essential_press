class Admin::PressImagesController < Admin::ResourceController
  
  before_filter :load_data

  create.before :set_viewable
  update.before :set_viewable
  destroy.before :destroy_before

  def update_positions
    params[:positions].each do |id, index|
      PressImage.update_all(['position=?', index], ['id=?', id])
    end

    respond_to do |format|
      format.js  { render :text => 'Ok' }
    end
  end
  
  private
  
  def location_after_save
    admin_press_images_url(@press)
  end

  def load_data
    @press = Press.find(params[:press_id])
  end

  def set_viewable
    @press_image.viewable = @press
  end

  def destroy_before
    @viewable = @press_image.viewable
  end

end