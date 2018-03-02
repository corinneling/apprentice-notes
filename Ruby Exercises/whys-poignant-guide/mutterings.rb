def wipe_mutterings_from( sentence )
  unless sentence.respond_to? :gsub # :include?
  raise ArgumentError,
    "cannot wipe mutterings from a #{ sentence.class }"
  end
  sentence.gsub( /\([-\w]+\)/, '' )

#  while sentence.include? '('
#    open = sentence.index( '(' )
#    close = sentence.index( ')', open )
#    sentence[open..close] = '' if close
#  end
end

# sentence = sentence.dup
what_he_said = "But, strangely (em-pithy-dah), I learned upon, played upon (pon-shoo) the organs on my home (oth-rea) planet.
"

print wipe_mutterings_from( what_he_said )
# p what_he_said
