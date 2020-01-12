class RenameImageColumnToContents < ActiveRecord::Migration[5.2]
  def change
    rename_column :contents, :image, :route_image
  end
end
