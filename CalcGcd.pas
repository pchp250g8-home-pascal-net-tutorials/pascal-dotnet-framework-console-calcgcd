uses
  System;
begin
  var iNum1:Int64;
  var iNum2:Int64;
  Console.Clear();
  Console.WriteLine('Input the First Integer Number:');
  var strNum := Console.ReadLine();
  Int64.TryParse(strNum, iNum1);
  Console.WriteLine('Input The Second Integer Number:');
  strNum := Console.ReadLine();
  Int64.TryParse(strNum, iNum2);
  var iVal1 := Math.Abs(iNum1);
  var iVal2 := Math.Abs(iNum2);
  if (iVal1 > 0) and (iVal2 > 0) then
  begin
    while (iVal1 <> iVal2) do
    begin
      if (iVal1 > iVal2) then
        iVal1 -= iVal2
      else
        iVal2 -= iVal1
    end;
    var nGcd := iVal1;
    Console.WriteLine('The Gcd of the numbers {0} and {1} is {2}', iNum1, iNum2, nGcd);
  end
  else
    Console.WriteLine('The numbers must not be equal 0');
  Console.Read();
end.