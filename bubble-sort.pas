program bubble_sort;
uses crt;
const max=256;
type arrreal=array[1..max] of real;
var N,i,j:integer;
    t:real;
    A:arrreal;
begin
  clrscr;
  write('Enter number of elements of sequence of numbers, N = ');
  readln(N)
  for i:=1 to N do
     begin
         write('Element # ',i,' = ');
         readln(A[i]);
     end;
  for j:=N downto 2 do
     for i:=1 to j-1 do
         if A[i]>A[i+1] then
           begin
             t:=A[i];
             A[i]:=A[i+1];
             A[i+1]:=t;
           end;
  writeln('Sorted sequence of number: ')
  for i:=1 to N do writeln(A[i]:4:10);
  readln
end.
