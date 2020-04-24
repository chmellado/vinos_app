class AddPorcentajeToVinoCepas < ActiveRecord::Migration[6.0]
  def change
    add_column :vino_cepas, :porcentaje, :integer
  end
end
