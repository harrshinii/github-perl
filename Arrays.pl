#arrays
=begin
arrays are always preceded. 
There are multiple ways to create an array.
by @ and this is a multiline comment
=cut
#CREATION PART1
@numbers = (1,2,3,4);
@members = ("a","b","c","d","e");
print "All numberS: @numbers \n";
print "All members: @members \n";

#CREATION PART2:USING QW// OPERATOR:
@string = qw/ iam a string/;
print "Please print : @string \n";
@DAYS = qw/ Monday Tuesday Wed Thu fri sat Sunday/;
print "The names of the days in a week are : @DAYS \n";

#CREATION PART3: YOu can even populate them individually:
$numbers[4]= 2016;
$numbers[5]=2017;
$numbers[6]=2018;
print "All numbers: @numbers\n";

#to access individual array elements we use the scalr variables to access them
print "$members[4]\n";
print "$DAYS[3]\n";
print "$DAYS[-7]\n"; #gives output monday

#sequential Number Arrays:
@var_10 = (1..10);
@alphabets = (a..z);
print " the list of numbers: @var_10\n";
print " the list of alphabets: @alphabets\n";

=beginAdding OF element to AN array: We use push(adds element at the end)
unshift(in the begining) keyword
=cut
#using push keyword
push (@numbers,"5");
print "The elements in the number are : @numbers\n";

#ADDING THE ELEMENTS IN THE BEGINING: We use unshift keyword
unshift (@members,"abd","def");
print "The elements in the members are : @members\n";

=bEGIN
REMOVING ELEMENT from an array: POP(FROM THE END)&
SHIFT(FROM THE BEGINING)
=cut

#Using Pop
pop(@numbers);
print "The elements of the numbers are: @numbers\n";

#Using shift
shift(@members);
print " The elements of the members are: @members\n";

#size of an array
$size = scalar(@numbers); # To know the size of the array
print "The size of the numbers array is : $size\n";

#highest index of an array
$index= $#members ; #to know the highest index of the array
print " the highest index of the members array is : $index\n";

#SLICING OF AN ARRAY:
@NUMBERS = (1..1000);
print "My numbers are : @NUMBERS\n";
@FEWNUMBERS = @NUMBERS[40..500];
print "My Fewnumbers are : @FEWNUMBERS\n";
@Othernumbers= @NUMBERS[1,600,657];
print "My othernumbers are : @Othernumbers\n";

#REPLACING AN ARRAY:
 @ACTORS =( "TOMHANKS","BRADPITT","GOERGECLOONEY","TOM","RYANGOSLING");
 print "Myactors : @ACTORS\n";
 @NEWLIST =("ryanreynolds","chrisevans","liam");
 print "Mynewlist : @NEWLIST\n";
 splice (@ACTORS,3,2,@NEWLIST);
 print "My newlist of actors : @ACTORS\n";
 
 #Transforming arrays to string:
 @string = ('Iam','a','very','good','girl');
 print "Someone said : @string\n";
 $string = join( "_",@string);
 print "Someine said: $string\n";
 
 #Converting string to an array:
 $String = "Iam a very good girl but inside iam a bitch";
 print "Someone said : $String\n";
 @String = split(' ',$String); # ' ' -> is called a delimiter
print "Someone said : @String\n";
print "$String[5]\n";

#Sorting an array
@numbers = qw / one two three four five six seven eight/;
print " print my numbers : @numbers\n";
@numbers = sort(@numbers);
print " print my numbers : @numbers\n";

#Merging of arrays:
@arrays = (1,2,3,4);
@arrays1= (5,6,7,8);
@finalarray=(@arrays,@arrays1);
print " Merged arrays : @finalarray\n";

#SPECIAL VARIABLES:
@numbers = qw / one two three four five six seven eight/;
print " print my numbers : @numbers\n";
$[ = 1; # WE ARE RESETING THE FIRST INDEX OF ALL THE AARAYS
print " number at : $numbers[1]\n";

#SELECTING ELEMENTS FROM LISTS:
$var  = (5,4,3,2,1,0)[4];
print "value of var:$var\n";
@var =(6,5,4,3,2,1,0)[2..5];
print "value of var:@var\n";
