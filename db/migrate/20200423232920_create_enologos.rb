class CreateEnologos < ActiveRecord::Migration[6.0]
  def change
    create_table :enologos do |t|
      t.string :name
      t.integer :age
      t.string :nationality
      

      t.timestamps
    end
  end
end
