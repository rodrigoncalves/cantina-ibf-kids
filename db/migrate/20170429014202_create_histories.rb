class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.references :kid, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
