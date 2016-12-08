function endSize = endSize(starting,transition)
  hand = zeros(1,12);
  hand(starting)=1;
  
  endSize = hand * transition * transition * transition * transition;
  endSize = sum(endSize(starting:12));
end

