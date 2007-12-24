use Test::More;
use Class::DBI::Sweet;
use Cache::MemoryCache;
Class::DBI::Sweet->default_search_attributes({ use_resultset_cache => 1 });
Class::DBI::Sweet->cache(Cache::MemoryCache->new(
    { namespace => "SweetTest", default_expires_in => 60 } ) ); 
use strict;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
eval "use Test::Pod::Coverage 1.00";
all_pod_files_ok();
