class SetImageTitleDefault < ActiveRecord::Migration[5.0]
  def change
    change_column :images, :title, :string, default:""
  end
end
