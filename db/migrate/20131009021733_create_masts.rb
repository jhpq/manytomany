class CreateMasts < ActiveRecord::Migration
  def change
    create_table :masts do |t|
      t.string :name
      t.string :

      t.timestamps
    end
  end
end
