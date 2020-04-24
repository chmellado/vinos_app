class CreateNota < ActiveRecord::Migration[6.0]
  def change
    create_table :nota do |t|
      t.integer :puntaje
      t.references :enologo, null: false, foreign_key: true
      t.references :vino, null: false, foreign_key: true

      t.timestamps
    end
  end
end
