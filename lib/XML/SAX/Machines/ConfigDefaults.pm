##
##                  DO NOT EDIT THIS FILE!!!
##
##        CHANGES WILL BE LOST ON YOUR NEXT UPGRADE.
##
##     EDIT XML::SAX::Machines::SiteConfig.pm INSTEAD!!!
##
##                         PLEASE.
##

##
## This file contains the "factory" settings for XML::SAX::Machines.
##
## Site specific settings should go in XML::SAX::Machines::SiteConfig

package XML::SAX::Machines::ConfigDefaults;
{
  $XML::SAX::Machines::ConfigDefaults::VERSION = '0.46';
}

$LegalProcessorClassOptions = {
    ConstructWithHashedOptions =>
        q{Use Foo->new( { Handler => $h } ) instead of Foo->new( Handler => $h )},
},

$ProcessorClassOptions = {
    "XML::Filter::SAXT" => {
        ConstructWithHashedOptions => 1,
    },

    "XML::Filter::Distributor" => {
        ConstructWithHashedOptions => 1,
    },

    "XML::Filter::Tee" => {
        ConstructWithHashedOptions => 1,
    },

    "XML::SAX::Machine" => {
        ConstructWithHashedOptions => 1,
    },
}

##
##                  DO NOT EDIT THIS FILE!!!
##
##        CHANGES WILL BE LOST ON YOUR NEXT UPGRADE.
##
##     EDIT XML::SAX::Machines::SiteConfig.pm INSTEAD!!!
##
##                         PLEASE.
##

__END__

=pod

=head1 NAME

XML::SAX::Machines::ConfigDefaults

=head1 VERSION

version 0.46

=head1 AUTHORS

=over 4

=item *

Barry Slaymaker

=item *

Chris Prather <chris@prather.org>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Barry Slaymaker.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
