#!/bin/bash

patch -d kafka-docker < no-check-cert.diff
