#!/usr/bin/perl
print "Content-type: text/html\n\n";
print <<EOF;
<html>
<head>
<title>Stallman quotes</title>
<style>
#quotes{font-size:2em;text-align:center;width:80%;margin:auto;margin-top:50px!important} .author{color:#666;font-size:1em}
</style>
</head>
<body>
<div id="quotes">
EOF

sub quote {
    open FILE, "<".$_[0];
    @quotes = <FILE>;
    close FILE;
    return $quotes[rand @quotes];
}

print quote 'rms.txt';

print <<EOF;
<br><span class="author">- Richard Stallman</span>
</div>
</body>
</html>
EOF
