class AddColumnsToBikes < ActiveRecord::Migration[5.2]
  def change
    add_column :bikes, :location, :string
    add_column :bikes, :rent_date, :date
    add_column :bikes, :return_date, :date
    add_column :bikes, :price_per_day, :float
  end
end
