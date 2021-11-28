class Artist < ActiveRecord::Base
    has_many :paintings
end

def change
    create_table :artists do |t|
    end
  end

def change
    method_name :table_name do |t|
        t.datatype :attribute_name
        t.datatype :attribute_name
        t.datatype :attribute_name
    end
end

ex:

def change
    #remember that the table names need to be plural
    create_table :artists do |t|
        t.string :firstName
        t.string :lastName
    end
end