
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Compile Local::TextDomain language files",
  "AUTHOR" => "David E. Wheeler <david\@justatheory.com>",
  "BUILD_REQUIRES" => {
    "Capture::Tiny" => 0,
    "Module::Build" => "0.35",
    "Test::DZil" => 0,
    "Test::More" => "0.90"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.35"
  },
  "DISTNAME" => "Dist-Zilla-LocaleTextDomain",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Dist::Zilla::LocaleTextDomain",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Dist::Zilla::File::FromCode" => 0,
    "Dist::Zilla::Role::FileGatherer" => 0,
    "File::Path" => "2.07",
    "IPC::Cmd" => 0,
    "Moose" => 0,
    "Moose::Util::TypeConstraints" => 0,
    "MooseX::Types::Path::Class" => 0,
    "Path::Class" => 0,
    "namespace::autoclean" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.10",
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



