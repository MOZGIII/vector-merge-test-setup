#!/bin/bash
exec docker-compose up "$@" log_once
