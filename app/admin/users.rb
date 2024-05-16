ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :image
  #
  form do |f|
    f.inputs do
      f.input :name
      
      f.input :image, as: :file
    end
    f.actions
  end

    
  show do
    attributes_table do
      row :id
      row :name
      
      row "image" do |pic|
        if pic.image.attached? && pic.image.blob.present?
          image_tag(url_for(pic.image), width: "130", height: "100")
        else
          "No Image"
        end
      end
      
    end
  end
end
