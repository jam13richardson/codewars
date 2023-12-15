def solution(str)
  number = str.split("").count 
if number % 2 == 0
  str.scan(/.{2}/)
else 
doubles = str.scan(/.{2}/) 
  doubles << "#{str[-1]}_" 
end
end
