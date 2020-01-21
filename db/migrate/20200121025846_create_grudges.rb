class CreateGrudges < ActiveRecord::Migration[6.0]
  def change
    create_table :grudges do |t|
      t.string :offender
      t.string :offense
      t.text :description

      t.timestamps
    end
  end
end
