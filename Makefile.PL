#!/usr/bin/perl

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => "cronsend",
    VERSION_FROM => "bin/cronsend",
    PREREQ_PM    => {
        'Email::Abstract'       => 0,
        'Email::Sender::Simple' => 0,
        'File::Temp'            => 0,
        'File::Copy'            => 0,
        'Encode'                => 0,
        'open'                  => 0,
        'Cwd'                   => 0,
    },
    EXE_FILES => ['bin/cronsend'],
);
