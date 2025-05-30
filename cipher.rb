def caesar_cipher(str, shift)
  arr = str.split("")
  arr = arr.map do |letter|
    next " " if letter == " "

    code = letter.ord
    next letter unless code.between?(65, 90) || code.between?(97, 122)

    if code % 97 == code
      (((code + shift - 65) % 26) + 65).chr
    else
      (((code + shift - 97) % 26) + 97).chr
    end
  end
  arr.join("")
end
puts caesar_cipher("h", 50)
