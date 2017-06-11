class CreateUfValues < ActiveRecord::Migration[5.1]
  def change
    create_table :uf_values do |t|
      t.decimal :clp_value, precision: 8, scale: 2
      t.date :date

      t.timestamps
    end
  end
end
