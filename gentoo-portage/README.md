gentoo-portage
==============

`gentoo` dev team already provide some docker, but portage is only a volume,
it's easier to bundle it. the build on the hub should trigger automatically each
time either `gentoo/stage3-amd64` or `gentoo/portage` gets updated.

it also bundle `emerge-accept.sh` which is a good wrapper around emerge which
automatically unmask needed packages.

it create a `test` env which is essentially a FEATURES=test env.
