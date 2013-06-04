class PersonTrash < Hashie::Trash
  property :id, :transform_with => lambda { |v| v.to_i }
  property :created_at, :from => :creation_date, :with => lambda { |v| Time.parse(v) }
  property :first_name, :from => :firstName
end