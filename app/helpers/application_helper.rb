module ApplicationHelper

  def to_array (object)
    if !object.is_a? Array then [object] end
  end

  def set_(class_name)
    instance = class_name.find(params[:id])
  end

  def update_params (model, *parameters)
    params.require(model).permit(parameters)
  end

end
