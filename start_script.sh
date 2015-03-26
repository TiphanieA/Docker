#!/bin/bash

/etc/init.d/apache2 restart
/etc/init.d/mysql restart

/bin/sh -c "while true; do echo hello world; sleep 1; done"
