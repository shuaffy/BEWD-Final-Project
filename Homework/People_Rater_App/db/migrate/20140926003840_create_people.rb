class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :picture
      t.string :uniqueID
      t.string :comment

      t.timestamps
    end
  end
end
