use 5.008;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'CPAN::Mini::FromList',
    license             => 'perl',
    dist_author         => 'Thomas Klausner <domm@cpan.org>',
    dist_version_from   => 'lib/CPAN/Mini/FromList.pm',
    requires=>          => {
        'CPAN::Mini'    =>  '0.563',
    },
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'CPAN-Mini-FromList-*' ],
    meta_add=>{
        resources=>{
            repository=>{
                type=>'git',
                url=>'git://github.com/domm/CPAN-Mini-FromList.git',
                web=>'https://github.com/domm/CPAN-Mini-FromList',
            },
        },
    },
);

$builder->create_build_script();
