class AddCommentToHrservices < ActiveRecord::Migration[5.0]
  def change
    add_column :hrservices, :comments, :text
  end
end
