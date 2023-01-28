# override for headline - xhtml version
#
# creates the navigation menu on the top of the files

sub headlineXhtml {
  #htmlHead($title, 2); # output the XHTML header, HTML title and CSS link
  navigationMenu();
}

sub navigationMenu {    
     my @horasnames = split(',', strictparam('horasnames'));
     my @horasfilenames = split(',', strictparam('horasfilenames'));
     my $horasindexlast = strictparam('horasindexlast');

     print '<p class="cen">';

     for my $i ( 0 .. $horasindexlast ) {
        $horasfilename = $horasfilenames[$i];
        $horasname = $horasnames[$i];

        print "<a href=\"$date1-$horasfilename.html\">$horasname</a>&nbsp;&nbsp;";
        
        #break line after every four items
        if($i % 4 == 3) {
            print "<br />";
        }
     }
     print '</p>';
}

1;