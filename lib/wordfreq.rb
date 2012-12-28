require "wordfreq/version"

module Wordfreq
  DELIMITERS = {:words => /\b/, :chars => //}

  def self.calculate(content, delimiter)
    wf = Hash.new
    delim = DELIMITERS.fetch(delimiter)

    lower_content = content.downcase
    
    tokens = if delimiter == :words
               content.split(delim).select do |s|
                 s.length > 0 && s =~ /^[a-z]+$/  # wordlike?
               end
             else
               content.split(delim).reject { |c| c =~ /\s/ }
             end

    tokens.group_by{|s| s }.each do |k,v| 
      wf[k] = v.count
    end

    return wf
  end
end
