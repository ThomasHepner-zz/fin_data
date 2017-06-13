class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :data_type
      t.date :date_from
      t.date :date_to

      t.timestamps
    end
  end
end
