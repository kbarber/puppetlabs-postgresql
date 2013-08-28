# Main configuration class, see README.md for more details.
class postgresql (
  $version              = $::postgres_default_version,
  $manage_package_repo  = false,
  $pg_hba_conf_defaults = true,
  $package_source       = undef,
  $locale               = undef,
  $charset              = 'UTF8',
  $datadir              = undef,
  $confdir              = undef,
  $bindir               = undef,
  $client_package_name  = undef,
  $server_package_name  = undef,
  $contrib_package_name = undef,
  $devel_package_name   = undef,
  $java_package_name    = undef,
  $service_name         = undef,
  $user                 = undef,
  $group                = undef,
  $run_initdb           = undef
) {

  class { 'postgresql::params':
    version                     => $version,
    manage_package_repo         => $manage_package_repo,
    pg_hba_conf_defaults        => $pg_hba_conf_defaults,
    package_source              => $package_source,
    locale                      => $locale,
    charset                     => $charset,
    custom_datadir              => $datadir,
    custom_confdir              => $confdir,
    custom_bindir               => $bindir,
    custom_client_package_name  => $client_package_name,
    custom_server_package_name  => $server_package_name,
    custom_contrib_package_name => $contrib_package_name,
    custom_devel_package_name   => $devel_package_name,
    custom_java_package_name    => $java_package_name,
    custom_service_name         => $service_name,
    custom_user                 => $user,
    custom_group                => $group,
    run_initdb                  => $run_initdb,
  }
}
