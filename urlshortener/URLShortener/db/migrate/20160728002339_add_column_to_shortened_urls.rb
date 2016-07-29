class AddColumnToShortenedUrls < ActiveRecord::Migration
  def change
    add_column( :shortened_urls, :user_id, :integer)
    add_index( :shortened_urls, :user_id)
  end
end
