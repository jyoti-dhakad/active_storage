ActiveAdmin.register Video do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :text, :video
   
  form do |f|
    f.inputs do
      f.input :text
      
      f.input :video, as: :file
    end
    f.actions
  end

    
  show do
    attributes_table do
      row :id
      row :text
      
      row "video" do |pic|
        if pic.video.attached? && pic.video.blob.present?
          video_tag(url_for(pic.video), width: "130", height: "100",  controls: true)
        else
          "No Image"
        end
      end
      
    end
  end

  index do
    selectable_column
      id_column
      column :text
      column "video" do |pic|
        if pic.video.attached? && pic.video.blob.present?
          video_tag(url_for(pic.video), width: "130", height: "100",  controls: true)
        else
          "No Image"
        end
      end
    actions
  end
end

  

