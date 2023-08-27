class CreateComentarios < ActiveRecord::Migration[7.0]
  def change
    create_table :comentarios do |t|
      t.string :nombre
      t.string :contenido

      t.timestamps
    end
  end
end
