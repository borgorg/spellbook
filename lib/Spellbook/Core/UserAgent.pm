package Spellbook::Core::UserAgent {
    use strict;
    use warnings;
    use LWP::UserAgent;

    sub new {
        my $userAgent = LWP::UserAgent -> new (
            timeout  => 5,
            ssl_opts => { 
                verify_hostname => 0,
                SSL_verify_mode => 0
            },
            agent => "Spellbook / v0.3.3"
        );

        $userAgent -> default_headers -> push_header("Cache-Control" => "no-cache");

        return $userAgent;
    }
}

1;