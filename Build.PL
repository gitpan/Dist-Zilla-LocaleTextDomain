
use strict;
use warnings;

use Module::Build 0.35;


my %module_build_args = (
  "build_requires" => {
    "Capture::Tiny" => 0,
    "Module::Build" => "0.35",
    "Test::DZil" => 0,
    "Test::More" => "0.90"
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.35"
  },
  "dist_abstract" => "Compile Local::TextDomain language files",
  "dist_author" => [
    "David E. Wheeler <david\@justatheory.com>"
  ],
  "dist_name" => "Dist-Zilla-LocaleTextDomain",
  "dist_version" => "0.10",
  "license" => "perl",
  "module_name" => "Dist::Zilla::LocaleTextDomain",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
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
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
