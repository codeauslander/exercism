class PhoneNumber

  

  def self.clean(digits)
    digits = digits.gsub(/\D/,"")
    length = digits.length

    return nil if length < 10
    return nil if length > 10 && digits[0] != "1"

    digits[0] = "" if length > 10

    n_area_code = digits[0].to_i
    n_local_number = digits[3].to_i
    return nil if n_area_code < 2  || n_local_number < 2
                  
    digits
  end

end

module BookKeeping
  VERSION = 2
end