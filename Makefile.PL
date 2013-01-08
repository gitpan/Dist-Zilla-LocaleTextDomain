
use strict;
use warnings;

use 5.008005;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Tools for managing Locale::TextDomain language catalogs",
  "AUTHOR" => "David E. Wheeler <david\@justatheory.com>",
  "BUILD_REQUIRES" => {
    "App::Cmd::Tester::CaptureExternal" => 0,
    "Dist::Zilla::App::Tester" => 0,
    "Module::Build" => "0.35",
    "Test::DZil" => 0,
    "Test::File" => 0,
    "Test::File::Contents" => 0,
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
    "Dist::Zilla::App" => 0,
    "Dist::Zilla::File::FromCode" => 0,
    "Dist::Zilla::Role::FileGatherer" => 0,
    "Email::Address" => 0,
    "Encode" => 0,
    "File::Basename" => 0,
    "File::Copy" => 0,
    "File::Find::Rule" => 0,
    "File::Path" => "2.07",
    "File::Temp" => 0,
    "IPC::Cmd" => 0,
    "IPC::Run3" => 0,
    "Locale::Country" => 0,
    "Locale::Language" => 0,
    "Moose" => 0,
    "Moose::Role" => 0,
    "Moose::Util::TypeConstraints" => 0,
    "MooseX::Types::Path::Class" => 0,
    "Path::Class" => 0,
    "namespace::autoclean" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.85",
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



