class User
  attr_accessor :first_name, :middle_name, :last_name

  def full_name
    [first_name, middle_name, last_name].reject(&:nil?).reject(&:empty?).join(' ')
  end
end
