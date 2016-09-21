

node web2.minsk.epam.com {
    include '::mysql::server'
}

# create db with user and grants for user
mysql::db { 'test_mdb':
  user     => 'test_user',
  password => 'test_password',
  host     => 'localhost',
  grant    => ['SELECT', 'UPDATE'],
}

# create only db
mysql_database { 'Krupen_db':
  ensure  => 'present',
  charset => 'utf8',
}

# create only user
mysql_user { 'krupen@localhost':
  ensure                   => 'present',
  max_connections_per_hour => '0',
  max_queries_per_hour     => '0',
  max_updates_per_hour     => '0',
  max_user_connections     => '0',
}

# create grants for user
mysql_grant { 'krupen@localhost/Krupen_db.*':
  ensure     => 'present',
  options    => ['GRANT'],
  privileges => ['ALL'],
  table      => 'Krupen_db.*',
  user       => 'krupen@localhost',
}

