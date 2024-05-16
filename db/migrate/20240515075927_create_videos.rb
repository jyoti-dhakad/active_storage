class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :text
      t.string :video

      t.timestamps
    end
  end
end
