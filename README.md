## Postgrey Docker image

This Docker image runs [Postgrey](http://postgrey.schweikert.ch/) f

## Running

    docker run -d -p 10023:10023 xtremxpert/docker-postgrey

Now Postgrey is listening on port 10023 for Postfix access policy connections. It should be added to Postfix's _main.cf_ like this:

    smtp_recipient_restrictions =
      ...
      check_policy_service inet:postgreyip:10023

_Note:_ Postgrey probably shouldn't be exposed externally on your host. So instead of exposing the port, use the container network IP or create a Docker network for connecting to the daemon.
