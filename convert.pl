#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: convert.pl
#
#        USAGE: ./convert.pl  
#
#  DESCRIPTION: Convert tex files back to the reddit posting format
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Adam Fairbrother (Hegz), afairbrother@sd73.bc.ca
# ORGANIZATION: School District No. 73
#      VERSION: 1.0
#      CREATED: 13-10-31 06:25:56 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

while(<>){
	if (m/stripcolour}{([^}]*)}/) {
		print "**CARD COLOUR:** $1\n\n";
	}
	elsif (m/striptext}{([^}]*)}/) {
		print "**CARD NAME:** $1\n\n";
	}
	elsif (m/topcontent}{([^}]*)}/) {
		print "**YOUR OBJECTIVE:** $1\n\n";
	}
	elsif (m/bottomcontent}{([^}]*)}/) {
		print "**DESCRIPTION:** $1\n\n";
	}
	elsif (m/creator}{([^}]*)}/) {
		print "**AUTHOR:** $1\n\n";
	}
	else {
		print "**NOTES**:\n";
	}
}

