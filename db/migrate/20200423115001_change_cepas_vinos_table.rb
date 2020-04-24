class ChangeCepasVinosTable < ActiveRecord::Migration[6.0]
    def change
        rename_table 'cepas_vinos', 'vino_cepas'
        add_column :vino_cepas, :id, :primary_key
        add_column :vino_cepas, :available, :boolean, default: true
    end
end
