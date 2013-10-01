class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :job_id
      t.string :list_name
      t.string :list_type
      t.string :list_code
      t.string :status
      t.string :po
      t.text :segment
      t.text :segment2
      t.datetime :date_received
      t.integer :expected_quantity
      t.integer :declared_quantity
      t.integer :received_quantity
      t.integer :converted_quantity
      t.boolean :approved
      t.integer :approved_by
      t.datetime :approved_at
      t.boolean :canceled
      t.integer :canceled_by
      t.datetime :canceled_at
      t.string :conversion_rejects
      t.text :comments

      t.timestamps
    end
  end
end
