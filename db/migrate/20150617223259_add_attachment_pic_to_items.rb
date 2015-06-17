class AddAttachmentPicToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :items, :pic
  end
end
