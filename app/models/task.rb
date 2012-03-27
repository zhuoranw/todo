class Task
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, :type => String
  field :done, :type => Boolean
  field :list_id, :type => Integer
    
  belongs_to :list, :class_name => "List", :foreign_key => "list_id"

  validates :name, :presence => true
end
