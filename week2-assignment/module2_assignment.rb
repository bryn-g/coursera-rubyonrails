class LineAnalyzer
  attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number

  def initialize(content, line_number)
    @content = content
    @line_number = line_number
    @highest_wf_words = Array.new(0)
    calculate_word_frequency()
  end

  def calculate_word_frequency()
    word_frequency = Hash.new(0)

    @content.downcase.split.each do |word|
      word_frequency[word] += 1
    end

    word_frequency.each_pair do |key, value|
      case
      when @highest_wf_count.nil?
        @highest_wf_words = [key]
        @highest_wf_count = value
      when value > @highest_wf_count
        @highest_wf_words = [key]
        @highest_wf_count = value
      when value == @highest_wf_count
        @highest_wf_words += [key]
      end
    end
  end
end

class Solution
  attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines

  def initialize()
    @analyzers = Array.new(0)
  end

  def analyze_file()
    File.foreach('test.txt').with_index do |line, line_num|
      @analyzers << LineAnalyzer.new(line, line_num)
    end
  end

  def calculate_line_with_highest_frequency()
    @highest_count_words_across_lines = Array.new(0)

    @analyzers.each do |line_analyzer|
      @highest_count_across_lines = line_analyzer.highest_wf_count if @highest_count_across_lines.nil? or line_analyzer.highest_wf_count > @highest_count_across_lines
    end

    @highest_count_words_across_lines = @analyzers.select {|line_analyzer| line_analyzer.highest_wf_count == @highest_count_across_lines}
  end

  def print_highest_word_frequency_across_lines()
    puts "The following words have the highest word frequency per line:"
    @highest_count_words_across_lines.each do |line_analyzer|
      puts "#{line_analyzer.highest_wf_words} (appears in line #{line_analyzer.line_number})"
    end
  end
end
