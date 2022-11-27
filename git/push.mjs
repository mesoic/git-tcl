#!/usr/bin/env zx
import * as fs from 'fs'

import { fileURLToPath } from 'url';
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

$.verbose = false
let branch = await $ `git rev-parse --abbrev-ref HEAD`
let passwd = fs.readFileSync("/usr/local/sbin/git/.passwd", "utf8")
let res = await $ `expect -f /usr/local/sbin/git/tcl/push.tcl ${passwd} ${branch}` 
$.verbose = true
console.log(res.stdout)
