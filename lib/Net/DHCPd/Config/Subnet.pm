package Net::DHCPd::Config::Subnet;

=head1 NAME

Net::DHCPd::Config::Subnet - Subnet config parameter

=cut

use Moose;
use Net::DHCPd::Config::Option;
use Net::DHCPd::Config::Range;
use Net::DHCPd::Config::Host;
use Net::DHCPd::Config::Filename;
use Net::DHCPd::Config::Pool;

with 'Net::DHCPd::Config::Role';

=head1 OBJECT ATTRIBUTES

=cut

has '+_children' => (
    default => sub {
        shift->create_children(qw/
            Net::DHCPd::Config::Option
            Net::DHCPd::Config::Range
            Net::DHCPd::Config::Host
            Net::DHCPd::Config::Filename
            Net::DHCPd::Config::Pool
        /);
    },
);

=head2 regex

=cut

has '+regex' => (
    default => sub { qr{^ \s* subnet \s (\S+) \s netmask \s (\S+) }x },
);

=head1 AUTHOR

See L<Net::DHCPd>.

=cut

1;
