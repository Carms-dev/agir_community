class AddIconToSpaces < ActiveRecord::Migration[6.0]
  def change
    add_column :spaces, :icon, :string
  end
end
