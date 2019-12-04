<?php

return array (
  'autoload' => false,
  'hooks' => 
  array (
    'action_begin' => 
    array (
      0 => 'geetest',
    ),
    'config_init' => 
    array (
      0 => 'geetest',
    ),
    'get_cfg' => 
    array (
      0 => 'litestore',
    ),
    'testhook' => 
    array (
      0 => 'markdown',
    ),
  ),
  'route' => 
  array (
    '/third$' => 'third/index/index',
    '/third/connect/[:platform]' => 'third/index/connect',
    '/third/callback/[:platform]' => 'third/index/callback',
  ),
);