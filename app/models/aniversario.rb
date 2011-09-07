class Aniversario < ActiveRecord::Base
  def dia_br
    "#{dia.to_s[8..9]}/#{dia.to_s[5..6]}/#{dia.to_s[0..3]}"
  end

  def dia_br=(dia_en)
    self.dia = "#{dia_en[6..9]}-#{dia_en[3..4]}-#{dia_en[0..1]}"
  end
end
