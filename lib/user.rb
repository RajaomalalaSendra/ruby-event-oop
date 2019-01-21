class User
  attr_accessor :email, :name
  @@user_count = 0

  def initialize(email_to_save)
    @email = email_to_save
    @@user_count = @@user_count + 1
  end
  def self.all
    return @@user_count += 1
  end
  def name(the_name)
    @name = the_name
  end
  def self.find_by_email(the_email)
    @
  end
end