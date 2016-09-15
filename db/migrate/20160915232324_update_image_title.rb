class UpdateImageTitle < ActiveRecord::Migration[5.0]
  def change
    change_column :images, :title, :string, default:"Image Title"
  end
end
