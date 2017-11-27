IsUnder30 := n -> n < 30;;


# $\{ n \in \mathbb{Z}\ |\ n^2 < 30 \}$
S := [];; n := 0;;
repeat
    Add( S, n^2 );
    n := n + 1;
until not IsUnder30( n^2 );


# $\{ x,y,z \in S\ |\ x^2 + y^2 + z^2 \}$
T := Set( List( Tuples( S, 3), Sum) );;


# $\{ n \in \mathbb{Z}\ |\ n < 30\ \land \ \exists\ x,y,z \in \mathbb{Z}, x^2 + y^2 + z^2 = n \}$
Set( Filtered( T, IsUnder30 ) );
