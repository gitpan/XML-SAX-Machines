
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "manage collections of SAX processors",
  "AUTHOR" => "Barry Slaymaker, Chris Prather <chris\@prather.org>",
  "BUILD_REQUIRES" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Test" => 0,
    "Test::More" => 0,
    "XML::SAX::PurePerl" => 0,
    "XML::SAX::Writer" => 0,
    "warnings" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "XML-SAX-Machines",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "XML::SAX::Machines",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Data::Dumper" => 0,
    "Exporter" => 0,
    "File::Spec" => 0,
    "File::Spec::Unix" => 0,
    "IO::Handle" => 0,
    "Symbol" => 0,
    "UNIVERSAL" => 0,
    "XML::SAX::Base" => 0,
    "XML::SAX::ParserFactory" => 0,
    "XML::SAX::Writer" => 0,
    "base" => 0,
    "constant" => 0,
    "fields" => 0,
    "strict" => 0,
    "vars" => 0
  },
  "VERSION" => "0.43",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



