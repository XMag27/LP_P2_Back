class CreateReportes < ActiveRecord::Migration[7.0]
  def change
    create_table :reportes do |t|
      t.string :lugar
      t.integer :muertos
      t.string :descripcion

      t.timestamps
    end
  end
end
