class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :activity_type
      t.integer :participants
      t.float :price
      t.string :activity_link
      t.float :accessibility
      t.timestamps
    end
  end
end
