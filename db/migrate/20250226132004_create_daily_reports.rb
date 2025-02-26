class CreateDailyReports < ActiveRecord::Migration[8.0]
  def change
    create_table :daily_reports do |t|
      t.string :status
      t.text :content
      t.text :todo
      t.text :stepup
      t.text :ktp

      t.timestamps
    end
  end
end
