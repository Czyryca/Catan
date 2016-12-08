function transition = transition(distro)
probability = [0,1,2,3,4,5,6,5,4,3,2,1]/36;
  transition = zeros(12,12);
  for i =2:12
    for j = i:12
        transition(i,j) = sum(probability.*(distro == j-i));
    end
    if i >= 8
        transition(i,ceil(i/2)) = probability(7);
        transition(i,i) = 1-sum(transition(i,1:12))-transition(i,i);
    end
  end      
end

