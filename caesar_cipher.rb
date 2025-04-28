def caesar_cipher(string_to_encrypt, right_shift_digit)
  smallcase_letters_array=('a'..'z').to_a
  bigcase_letters_array=('A'..'Z').to_a
  shift_modulo=26
  encrypted_array=[]
  string_to_encrypt.split("").each do |char|
    # p char
    small_idx=smallcase_letters_array.index(char)
    big_idx=bigcase_letters_array.index(char)
    if small_idx!=nil
      new_idx=(small_idx+right_shift_digit)%shift_modulo
      encrypted_array.push(smallcase_letters_array[new_idx])
    elsif big_idx!=nil
      new_idx=(big_idx+right_shift_digit)%shift_modulo
      encrypted_array.push(bigcase_letters_array[new_idx])
    else
      encrypted_array.push(char)
    end
  end
  p encrypted_array.join("")
  # debugger
  
  
end

caesar_cipher("TesT AnotheR  string!", 5)