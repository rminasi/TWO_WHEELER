class AddNewColumnsToBike < ActiveRecord::Migration[5.2]
  def change
    add_column :bikes, :name, :string
    add_column :bikes, :description, :text
  end
end
