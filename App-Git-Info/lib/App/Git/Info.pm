package App::Git::Info;

use strict;
use warnings;
use 5.016;

package main;

use App::Rad;

App::Rad->run;

sub info
{
    return (  `git status` =~ s#\A(On branch \S+).*#⇒ $1#mrs . "\n"
            . `git status -s`
            . "⇒ Remotes:\n"
            . `git remote -v` );
}

1;

__END__

=head1 NAME

git-info - displays a summary of information about the git repository.

=head1 SYNOPSIS

    shlomif@telaviv1:~/conf/trunk$ git info info
    ⇒ On branch master
     M shlomif-settings/home-bin-executables/bin/git-i
    ⇒ Remotes:
    origin  git@github.com:shlomif/shlomif-computer-settings.git (fetch)
    origin  git@github.com:shlomif/shlomif-computer-settings.git (push)
    shlomif@telaviv1:~/conf/trunk$

=head1 METHODS

=head2 info

Implement the info subcommand.

=cut
