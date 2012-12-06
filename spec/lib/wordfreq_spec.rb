require_relative '../../lib/wordfreq'

describe Wordfreq do
  let (:content) { "it is in a while that it is not around it so it is and it is not" }

  it "calculates the frequency of words" do
    Wordfreq::calculate(content, :words).should == {"it"=>5, "is"=>4, "in"=>1,
                                                    "a"=>1, "while"=>1, "that"=>1,
                                                    "not"=>2, "around"=>1, "so"=>1,
                                                    "and"=>1}
  end

  it "calculates the frequency of characters" do
    Wordfreq::calculate(content, :chars).should == {"i"=>11, "t"=>9, " "=>17,
                                                    "s"=>5, "n"=>5, "a"=>4,
                                                    "w"=>1, "h"=>2, "l"=>1,
                                                    "e"=>1, "o"=>4, "r"=>1,
                                                    "u"=>1, "d"=>2}
  end

  it "raises a key error when delimiter is not supported" do
    lambda { Wordfreq::calculate(content, :bogus) }.should raise_error KeyError
  end
end
