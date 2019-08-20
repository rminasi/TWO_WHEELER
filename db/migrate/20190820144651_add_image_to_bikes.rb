class AddImageToBikes < ActiveRecord::Migration[5.2]
  def change
    add_column :bikes, :image, :string
  end
end
