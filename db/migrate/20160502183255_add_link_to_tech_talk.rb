class AddLinkToTechTalk < ActiveRecord::Migration
  def change
    add_column :tech_talks, :link, :string
  end
end
