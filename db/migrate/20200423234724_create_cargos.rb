class CreateCargos < ActiveRecord::Migration[6.0]
  def change
    create_table :cargos do |t|
      t.string :name
      t.references :enologo, null: false, foreign_key: true
      t.references :revista, null: false, foreign_key: true

      t.timestamps
    end
  end
end
