module CHR
  refine Object do
    def blank?
      nil? || empty?
    end
  end
end

using CHR

class User
  attr_accessor :first_name, :middle_name, :last_name, :admin, :email

  def full_name
    [first_name, middle_name, last_name].reject(&:blank?).map(&:capitalize).join(' ')
  end

  def admin?
    email.to_s.end_with? '@telus.com'
  end
end
