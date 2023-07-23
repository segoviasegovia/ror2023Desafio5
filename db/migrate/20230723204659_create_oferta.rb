class CreateOferta < ActiveRecord::Migration[7.0]
  def change
    create_table :oferta do |t|
      t.string :titulo
      t.integer :salario
      t.text :description

      t.timestamps
    end
  end
end
