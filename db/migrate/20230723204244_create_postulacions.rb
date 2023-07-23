class CreatePostulacions < ActiveRecord::Migration[7.0]
  def change
    create_table :postulacions do |t|
      t.string :estado

      t.timestamps
    end
  end
end
