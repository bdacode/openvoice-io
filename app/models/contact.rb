class Contact 
  include DataMapper::Resource
  
  property :id,             Serial
  property :contactname,    String
  property :number,         String
  property :sip,            String
  property :inum,           String
  property :im,             String
  property :twitter,        String
  property :gtalk,          String
  property :recording,      Blob  
  property :user_id,        Integer
  property :created_at,     DateTime
  property :updated_at,     DateTime
  property :call_screening, Boolean

  belongs_to :user
  validates_present :contactname
end