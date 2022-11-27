#!/usr/bin/env zx
import * as fs from 'fs'

import { fileURLToPath } from 'url';
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

$.verbose = false
let passwd = fs.readFileSync("/usr/local/sbin/git/.passwd", "utf8")
let res = await $ `expect -f /usr/local/sbin/git/tcl/clone.tcl ${passwd}`
$.verbose = true
console.log(res.stdout)
