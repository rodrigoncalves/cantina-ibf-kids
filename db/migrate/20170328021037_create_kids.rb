class CreateKids < ActiveRecord::Migration[5.0]
  def change
    create_table :kids do |t|
      t.string :name
      t.decimal :amount
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
