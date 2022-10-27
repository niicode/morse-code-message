@code_hash = {
  '.-' => 'A',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '-...' => 'B',
  '/' => ' ',
  '   ' => ' '
}

# changing morse code to a letter
def morse_letter(letter)
  @code_hash[letter]
end

# changing morse code to a word
def morse_word(word)
  word.split.map { |letter| morse_letter(letter) }.join
end

# changing the morse code into a sentence
def morse_sentence(sentence)
  sentence.split('   ').map { |word| morse_word(word) }.join(' ')
end

puts morse_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
