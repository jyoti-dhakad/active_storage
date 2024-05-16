class VideoSerializer < ActiveModel::Serializer
  attributes :id, :text, :video_url

  def video_url
    if object.video.attached?
      Rails.application.routes.url_helpers.rails_blob_url(object.video, only_path: true)
    else
      nil
    end
  end
end
