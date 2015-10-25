use Mojo::Util qw/slurp  dumper  trim  url_escape  xml_escape/;

my $data = slurp 'file.txt';
dumper $data;
say trim $string;
say url_encode 'foo&bar&baz';
say xml_escape '<foo>';


# URLs:
use URI::Encode qw/uri_encode/;
say uri_encode 'foo&bar&baz';

# Or
use URL::Encode qw/url_encode/;
say url_encode 'foo&bar&baz';

# HTML:
use HTML::Entities;
say encode_entities '<foo>';

# Or
use HTML::Escape qw/escape_html/;
say escape_html '<foo>';

__END__

#!/usr/bin/env perl

use strict;
use warnings;
use Acme::Dump::And::Dumper;


use 5.020;
use Mojo::UserAgent;

my $ua = Mojo::UserAgent->new;

$ua->get('http://2zoffix/test.html')->res->dom->find('td.name')
    ->map('all_text')->grep(qr/^B/)->uniq->join(', ')->say


# $ua->get(
# $travis_url
# => { Accept => 'application/vnd.travis-ci.2+json' }
# )->res->json->{builds}