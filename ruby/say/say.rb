class Say
  VALUES = { 
    0 => 'zero', 1 =>'one',2 =>'two',3 =>'three',
    4 =>'four',5 =>'five',6 =>'six',7 =>'seven',
    8 =>'eight',9 =>'nine',10 =>'ten',11 =>'eleven',
    12 =>'twelve',13 =>'thirteen',14 =>'teen',20 =>'twenty',
    30 =>'thirty',40 =>'fourty',50 =>'fifty',60 =>'ty',
    100 =>'hundred',1000 =>'thousand',
    1_000_000 =>'million',1_000_000_000 =>'billion'
  }
  def initialize(question)
    @number = question
  end
  def in_english
    
    return VALUES[@number] if @number < 14
    return VALUES[@number % 10] + VALUES[14] if @number < 20
    return VALUES[@number] if @number == 20
    return VALUES[20] + '-' + VALUES[@number % 10] if @number < 30 
    return VALUES[@number] if @number == 30
    return VALUES[30] + '-' + VALUES[@number % 10] if @number < 40 
    return VALUES[@number] if @number == 40
    return VALUES[40] + '-' + VALUES[@number % 10] if @number < 50
    return VALUES[@number] if @number == 50
    return VALUES[50] + '-' + VALUES[@number % 10] if @number < 60
    return VALUES[@number / 10] + VALUES[60] if (@number % 10) == 0 && @number < 100
    return VALUES[@number / 10] + VALUES[60] + '-' + VALUES[@number] if @number < 100
    return VALUES[@number / 100] + ' ' + VALUES[100] if (@number % 100) == 0
    
  end
end
module BookKeeping
  VERSION = 1
end