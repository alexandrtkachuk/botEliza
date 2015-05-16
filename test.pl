#!/usr/bin/perl -w


use locale;

 use POSIX qw(setlocale LC_ALL LC_CTYPE);
 setlocale(LC_CTYPE, "ru_RU.utf8");
 binmode(STDOUT,':utf8');
#$|=1; 

#use lib '/home/alexandr/perl5/lib/perl5/';
use lib 'Chatbot-Eliza/lib';
use Chatbot::Eliza;
use utf8;
use Data::Dumper;
use Encode;

$chatbot = new Chatbot::Eliza {
				name       => "Eliza", 
                scriptfile => "testme.txt"
               
			};

# seed the random number generator
srand( time ^ ($$ + ($$ << 15)) );    

print "\nWelcome to your therapy session.\n";
print "Your therapist's name is ", $chatbot->name;
print ".\n\n";

$chatbot->command_interface();
 #$chatbot->parse_script_data('testme.txt');

#print 'Enter your name:';
#my $line = <STDIN>; #for user varible









