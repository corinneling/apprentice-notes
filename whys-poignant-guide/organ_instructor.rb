class String
  @@syllables = [
    { 'Paij' => 'Personal',
      'Gonk' => 'Business',
      'Blon' => 'Slave',
      'Stro' => 'Master',
      'Wert' => 'Father',
      'Onnn' => 'Mother' },
    { 'ree'  => 'AM',
      'plo'  => 'PM' }
  ]
#  def name_significance
#    parts = self.split( '-' )
#    syllables = @@syllables.dup
#    signif = parts.collect do |p|
#      syllables.shift[p]
#    end
#    signif.join( ' ' )
#  end

def dash_split
  self.split( '-' )
end
end

print "Paij-ree".dash_split
