luci-node-admin
===============
This is our stripped down admin for people's wifi mesh nodes.

Right now I'm working on getting things to compile, so its got a bunch of placeholder pieces from the luci-bmx6 package.

The authentication scheme still needs serious work - right now all we have is http basic auth and the username and password are stored in the code repo. We'll need to integrate username/password generation in the firmware-generation side.
