def caesar_cipher(str,shift)
  arr=str.split("")
  arr=arr.map do  |letter|
    if letter==" "
      next " "
    end
    code=letter.ord
    unless code.between?(65,90) || code.between?(97,122)
      next letter
    end
    if(code%97==code)
      ((code+shift-65)%26+65).chr
    else
      ((code+shift-97)%97+97).chr
    end
  end
  arr.join("")
end

puts caesar_cipher("What a string!", 5)