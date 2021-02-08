program bubble_sort;
uses crt;
const max=256;
type arrint=array[1..max] of integer;
var N,i,j,t:integer;
    A:arrint;
begin
  clrscr;
  write(‘Enter number of elements of sequence of numbers, N = ‘);
  readln(N)
  for i:=1 to N do
     begin
         write(‘Element # ‘,i,’ = ‘);
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
  writeln(‘Sorted sequence of number: ‘)
  for i:=1 to N do write(A[i]:4);
  readln
end.
