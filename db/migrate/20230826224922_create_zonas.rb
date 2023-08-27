class CreateZonas < ActiveRecord::Migration[7.0]
  def change
    create_table :zonas do |t|
      t.string :nombre
      t.integer :asesinatos
      t.integer :crimenes

      t.timestamps
    end
  end
end
