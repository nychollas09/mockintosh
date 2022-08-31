#!/bin/bash

mockintosh mockintosh.config.yml

chown $USER:$USER ./setup-management.sh && chmod 755 ./setup-management.sh
./setup-management.sh