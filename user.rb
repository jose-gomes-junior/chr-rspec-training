class User
  attr_accessor :first_name, :middle_name, :last_name, :admin, :email

  ##
  # Returns the capitalized combination of first_name, middle_name and last_name
  def full_name
    [first_name, middle_name, last_name].
      reject(&:nil?).
      reject(&:empty?).
      map(&:capitalize).
      join(' ')
  end

  def admin?
    email.to_s.end_with? '@telus.com'
  end
end
