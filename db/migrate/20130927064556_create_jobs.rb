class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.text :name
      t.integer :number

      t.timestamps
    end
  end
end
