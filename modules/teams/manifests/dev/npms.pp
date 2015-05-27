class teams::dev::npms {
  nodejs::module { 'bower':
    node_version => 'v0.10'
  }
  nodejs::module { 'cordova':
    node_version => 'v0.10'
  }
  nodejs::module { 'ionic':
    node_version => 'v0.10'
  }
  nodejs::module { 'yo':
    node_version => 'v0.10'
  }
}
