# Team Manifests

Per-team manifests live in `modules/teams/manifests/$team.pp`, where
`$team` is a  descriptor login. A simple Team manifest example:

```puppet
class teams::project_managers {
  include emacs   # requires emacs module in Puppetfile
  include sparrow # requires sparrow module in Puppetfile

  Package { install_options => ['--appdir=/Applications'] } # creates link to application folder
  package { 'sequel-pro': provider => 'brewcask' } # requires brewcask to have the formula

}
```
