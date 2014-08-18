require 'formvalidator/lite/constraint'

rule 'DATE' do |values|
  if values.is_a?(Array)
    return 0 unless values.length == 3
    _v(*values)
  else
    _v(*values.split(/-/))
  end
end

def _v(y, m, d)
  return false unless y.present? && m.present? && d.present?

  if d>31 or d<1 or m>12 or m<1 or y==0
    return false
  end

  if d > 30 and (m==4 or m==6 or m==9 or m==11)
    return false
  end

  if d > 29 and m == 2
    return false
  end

  if m==2 and d>28 and !(y%4==0 and (y%100!=0 or y%400==0))
    return false
  end

  true
end
