class AddImageToImages < ActiveRecord::Migration[5.0]
  def self.up
    change_table :images do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :images, :image
  end
end
