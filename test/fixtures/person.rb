class Person < Hashie::Dash
  property :name, required: true, default: "Name"
  property :email
  property :occupation, default: 'Rubyist'
end
