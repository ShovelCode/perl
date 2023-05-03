use DBI;

# Set up the database connection
my $dbname = "mydatabase";
my $host = "localhost";
my $port = "5432";
my $user = "myuser";
my $password = "mypassword";

my $dbh = DBI->connect("dbi:Pg:dbname=$dbname;host=$host;port=$port",
                       $user,
                       $password,
                       {AutoCommit => 0}) or die "Cannot connect to database: $DBI::errstr";

# Perform a query
my $sth = $dbh->prepare("SELECT * FROM mytable WHERE id = ?");
$sth->execute(1);

# Process the results
while (my @row = $sth->fetchrow_array) {
    # Do something with each row
    print "@row\n";
}

# Close the database connection
$sth->finish;
$dbh->disconnect;
