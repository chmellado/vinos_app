class ChangeVinoCepaToEnsamblaje < ActiveRecord::Migration[6.0]
  def change
    rename_table :vino_cepas, :ensamblajes
  end
end
