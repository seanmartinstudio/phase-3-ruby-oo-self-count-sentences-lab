require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    str = self.split(/[[:punct:]]{1,}/)
    str.filter do |arr|
      if arr.empty?
        arr.delete
      end
    end
    str.count
  end
end

