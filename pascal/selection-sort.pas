program selection_sort;
uses crt;
var N,i,j,minindex:integer;
  t:real;
  a:array[0..255] of real;
begin
  clrscr;
  write('Enter number of elements of sequence of numbers, N = ');
  readln(N);
  for i:=0 to N-1 do
     begin
         write('Element # ',i+1,' = ');
         readln(A[i]);
     end;
  for i:= 0 to N-2 do
     begin
        minindex:= i;
        for j:=i+1 to N-1 do
            if a[j]<a[minindex] then minindex:=j;
        {Swap a[i] and a[minindex]}
        t:=A[i];
        A[i]:=A[minindex];
        A[minindex]:=t;
     end;
  writeln('Sorted sequence of number: ');
  for i:=0 to N-1 do writeln(A[i]:4:10);
  readln
end.
