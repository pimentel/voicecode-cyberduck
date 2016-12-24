pack = Packages.register
  name: 'cyberduck-ftp'
  description: 'An interface for the CyberDuck FTP client.'

Scope.register
  name: 'cyberduck'
  applications: ['ch.sudo.cyberduck']

pack.implement
  scope: 'cyberduck'
,
  'command-line:change-directory': ->
    @key 'g', 'command'
  'ftp:open-directory': ->
    @key 'down', 'command'
  'object:refresh': ->
    @key 'r', 'command'
  'command-line:parent-directory': ->
    @key 'up', 'command'
  'object:backward': ->
    @key 'left', 'command'
  'object:forward': ->
    @key 'right', 'command'
  'common:find': ->
    @key '/', 'command'
