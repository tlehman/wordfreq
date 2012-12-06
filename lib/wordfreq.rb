require "wordfreq/version"
require "string_patch"

module Wordfreq
  DELIMITERS = {:words => /\b/, :chars => //}

  def self.calculate(content, delimiter)
    wf = Hash.new
    delim = DELIMITERS.fetch(delimiter)

    lower_content = content.downcase
    
    tokens = if delimiter == :words
               content.split(delim).select {|s| s.wordlike? }
             else
               content.split(delim)
             end

    tokens.group_by{|s| s }.each do |k,v| 
      wf[k] = v.count
    end

    return wf
  end
end
