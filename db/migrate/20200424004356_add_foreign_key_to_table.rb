class AddForeignKeyToTable < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :ensamblajes, :vinos
    add_foreign_key :ensamblajes, :cepas
  end
end
