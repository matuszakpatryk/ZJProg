class Phrase
  def initialize(text)
    @text = text
  end

  def word_count
    array = Array.new(100,0)
    tmp = Array.new(100,0)
    separated_word = Hash.new(0)
    array = @text.split(' ')
    len = array.length
    i=0
    while i<len do
      j=0
      while j<len do
        if(array[i]==array[j]) then
          separated_word[array[i]] += 1
        end
        j += 1
      end
      i += 1
    end
    i = 0
    while i<len do
      if i==0 then
        string = "#{array[i]}=>#{tmp[i]}"
      else
        string = string + ",#{array[i]}=>#{tmp[i]}"
      end
      i += 1
    end
    separated_word
  end
end