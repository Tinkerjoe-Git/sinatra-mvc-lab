class PigLatinizer

    def initialize
        
    end

    def piglatinize(string)
        s=string.split(" ")
        p=s.map {|line| piglatinize_line(line)}
        p.join(" ")
    end

    def piglatinize_line(line)
        first_letter = line[0].downcase
        vowels = ["a","e","i","o","u"]
        if vowels.include?(first_letter)
            "#{line}way"
        else
            consonants = []
            consonants << line[0]

            if vowels.include?(line[1]) == false
                consonants << line[1]
                if vowels.include?(line[2])== false
                    consonants << line[2]
                end
            end
            "#{line[consonants.length..-1] + consonants.join + "ay"}"
        end
    end
end