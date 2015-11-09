class AddAttachmentImageToImages < ActiveRecord::Migration
  def up
  	add_attachment :images, :image
  end

  def self.down
    remove_attachment :images, :image
  end
end
