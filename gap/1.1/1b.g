DigitsInt := function ( n, base )
    local digits;
    digits := [];
    repeat
        Add( digits, RemInt( n, base ), 1 );
        n := QuoInt( n, base );
    until IsZero( n );
    return digits;
end;;


IsAllOddSortedList := function ( digits )
    return ForAll( digits, IsOddInt ) and
           IsSortedList( digits );
end;;


IsAllOddSortedDigitsInt := function ( n )
    return IsAllOddSortedList( DigitsInt( n, 10 ) );
end;;


Set( Filtered( [100 .. 999], IsAllOddSortedDigitsInt ) );
