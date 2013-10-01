class AddAttachmentFileToJobs < ActiveRecord::Migration
  def self.up
    change_table :jobs do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :jobs, :file
  end
end
