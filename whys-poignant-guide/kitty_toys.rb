kitty_toys =
  [:shape => 'sock', :fabric => 'cashmere'] +
  [:shape => 'mouse', :fabric => 'chenille'] +
  [:shape => 'eggroll', :fabric => 'calico']

  kitty_toys2 =
    {shape: 'sock', fabric: 'cashmere'},
    {shape: 'mouse', fabric: 'chenille'},
    {shape: 'eggroll', fabric: 'calico'}

 kitty_toys.sort_by { |a_toy| a_toy[:fabric] }.each do |toy|
    puts "Bruce has a #{toy[:shape]} made of #{toy[:fabric]}"
  end

# non_eggroll = 0
# kitty_toys.each do |toys|
#  next if toys[:shape] == 'eggroll'
#    non_eggroll = non_eggroll + 1
#  end

# kitty_toys.each do |toy1|
#  break if toy1[:fabric] == 'chenille'
#    p " #{toy1[:shape]}, #{toy1[:fabric]} "
#  end
