class CreateJoinTableCepasVinos < ActiveRecord::Migration[6.0]
  def change
    create_join_table :cepas, :vinos do |t|
      t.index [:cepa_id, :vino_id]
      t.index [:vino_id, :cepa_id]
    end
  end
end
