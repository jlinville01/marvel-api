class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :alias
      t.string :real_name
      t.string :debut
      t.string :status
      t.string :powers
      t.string :bio

      t.timestamps
    end
  end
end
