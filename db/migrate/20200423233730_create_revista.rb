class CreateRevista < ActiveRecord::Migration[6.0]
  def change
    create_table :revista do |t|
      t.string :name
      t.timestamps
    end
  end
end
