program sorting;

uses
    Math;

type
    dynarray = array of integer;
const
    nOfNumbers : integer = 50;
var
    randomNumers : dynarray;
    i: integer;

procedure getNumbers(inf : integer; sup : integer; amount : integer);
var
    i: integer;
begin
    for i := 1 to amount do
        randomNumers[i] := randomRange(inf, sup + 1);
end;

procedure sortNumbers();
var
    swapped : boolean;
    temp : integer;
    n, i : integer;
begin
    n := nOfNumbers;
    repeat
        swapped := false;
        for i := 2 to n do
            if randomNumers[i - 1] > randomNumers[i] then
            begin
                temp := randomNumers[i - 1];
                randomNumers[i - 1] := randomNumers[i];
                randomNumers[i] := temp;
                swapped := true;
            end;
        n := n - 1;
    until not swapped;
end;

begin
    setlength(randomNumers, nOfNumbers);
    randomize();
    getNumbers(0, 100, nOfNumbers);
    sortNumbers();
    for i := 1 to nOfNumbers do
        write(randomNumers[i], '  ');
    writeln();
end.
