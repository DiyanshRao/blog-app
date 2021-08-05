class ChangeTitleToTitleInPosts < ActiveRecord::Migration
  def change
    rename_column :Posts, :title, :title
  end
end
