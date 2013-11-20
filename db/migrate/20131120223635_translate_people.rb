class TranslatePeople < ActiveRecord::Migration
  def self.up
    Person.create_translation_table!({
      :first_name => :string,
      :last_name => :string,
      :text => :text
      }, {
        :migrate_data => true
      })
  end

  def self.down
    Person.drop_translation_table! :migrate_data => true
  end
end
