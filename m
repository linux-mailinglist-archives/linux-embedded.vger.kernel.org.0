Return-Path: <linux-embedded+bounces-119-lists+linux-embedded=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2EDA20F7B
	for <lists+linux-embedded@lfdr.de>; Tue, 28 Jan 2025 18:16:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD3467A2B23
	for <lists+linux-embedded@lfdr.de>; Tue, 28 Jan 2025 17:15:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 458BA19D8A3;
	Tue, 28 Jan 2025 17:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K9Di0kDx"
X-Original-To: linux-embedded@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5EC1448E0
	for <linux-embedded@vger.kernel.org>; Tue, 28 Jan 2025 17:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738084559; cv=none; b=CLkYoOiWjaCiTWfUJ4FEo2miSrEbqM9oKf0vyuZzxg8qqdarNQLXJQPbeW/wfPsaI2vD138CwbSguYZhIcCglHQGvmSPCzDkvgvLxKVQml6inxzgd4dszWPDIFAXb04AiiYb6Bm4Xumd9UDkLWbSHhFYvRRC5m2voChDzwSg6CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738084559; c=relaxed/simple;
	bh=UatDVC8qxiymldHZ3Fu/dTSnqEayvzGAhZIiCmcY8Wg=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=j9lvZrA/mp4A2WY03gLdPDbfYMMBo5qACEB/1dlSfcMOntIhwPbcAHLXgpbYpiuNHNFQSuKMGIuN4FoRgjlianvbZB0uOy8hypwP2jZSJp6CswbA003Kk37L4OdNrOmuciHY9ZNAkEt7JRtIbxRcD6ReBSpGV1CFqLlHjpQtIgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K9Di0kDx; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5dbf5fb2c39so765758a12.2
        for <linux-embedded@vger.kernel.org>; Tue, 28 Jan 2025 09:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738084555; x=1738689355; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=SQPhP2hZz5SWOAWquLJf9SIHaF5ztySZiDB2gaN0Wpg=;
        b=K9Di0kDxaNSSj3H0cxCDudqgDNSzuD4hbzqrSTFNIcqU+wVPGjEGHZZIFLrgKHGzjn
         6Pnmd7Y0iyypu68FViS68C3rYbffVzWJqEZpnyHJ/5l1C+W47eahKaz9DBf1JvkrX3/s
         +2mkOUgNF4gUKiDOBboKR7uEcybkv0uDdLbm/sw3ugWZSH6YvKkHyqBW/S4yn96rx8Vx
         SWiRdMXXjFliYJFjvNJ7B7+PgEw/uh4C6r9c6/gZPpNiJZKqtIyRztT7cozPWvSRVdK5
         vX3qnll1n6p4NPzinDa0OkD2Ku67aWUTT9BmyOH5o2QUeK8N4jVXNx7nz0X/dDjdkusm
         kHaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738084555; x=1738689355;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SQPhP2hZz5SWOAWquLJf9SIHaF5ztySZiDB2gaN0Wpg=;
        b=QVzxEWSdbeeu5sIQdXOZmRY46Wl1wBuV/pnBJ7IBuIPn1DU2D2jJGSk9g7ty6Qaw1q
         4mTTpykDi6IgqboQj1hQOqDF+vP/X4sPh62JmC3zEQvzYM/2Iqj10DYYaV55KjGJSyXG
         Op40E0thT5aobE4E5sp7TRByMvQkhBDwPwwt0mmtslH45zyD8MXwe1sl+fLzMQf2zlna
         RO/tGiWF6t1/wC6MYvP0yStCZarN4RkfD0c5XE+e0vwdDo04U9u8rDn28pYsKCIvWs/L
         64dujaFgbLnwbRhI/JTIS39f4DoGJIeaLez2tEdvBbBP6EHN3Y5nO1vo1M1rWvjxTIJg
         JOxQ==
X-Gm-Message-State: AOJu0YxqNJ903BVnKiuW7gwQjlG6lLvgQ1Erlc3DuNilqojPIFifvP+h
	eYTQW+i4ldBSyTJAR3vpN0piUKub5J7KABiXh1Qz1HzIH8ak9Ph+N1sotA==
X-Gm-Gg: ASbGncsU261Okw3wSswlZTaq2IULMXF/B3bFwvsO8oAVgtYPGXOuo5B/c+LfIxXXTDu
	H6G3gZ8N3p6pQwEb7gsl1HnmXKpg5nt7xo697j+hCmWrTtCI/1nROXY2YajBveQCL5TthqWc/2N
	k4V2UisZR8mkhbzoiRZlfhlgH2NhuqBCXfEwW9vA4HIIIwwMQg9VdXeC2/OEMmVYRgH6HjJgjWY
	PAb8kt7wEnlmMhlNvwQsmwaQZM8icg3KmXeJo3Q8Fz+cFfAGngN9bKj5+gs7QYuh0UJumQeFfEZ
	9Mn4J6zJlPxy4j1w/hP8YKfmsa6jjmbzkoCaWNlOyufaQkxFdzdvmYH05bPYYXrt1x9wN1M=
X-Google-Smtp-Source: AGHT+IFVOMxIRYKAHJdwkI2yglYn/3oPt4OmzA860JwFfJAOaHTJMLd8cISiATAQMHNQoDhhFZm3Ng==
X-Received: by 2002:a05:6402:1ec7:b0:5d0:8e70:cf86 with SMTP id 4fb4d7f45d1cf-5db7db19c6amr15993644a12.7.1738084554725;
        Tue, 28 Jan 2025 09:15:54 -0800 (PST)
Received: from fedora.fritz.box (host-87-11-41-26.retail.telecomitalia.it. [87.11.41.26])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc186b37fesm7220317a12.61.2025.01.28.09.15.54
        for <linux-embedded@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 09:15:54 -0800 (PST)
From: Francesco Valla <valla.francesco@gmail.com>
To: Linux Embedded <linux-embedded@vger.kernel.org>
Subject: [boot-time] [SCRIPT v4] analyze-initcall-debug.py
Date: Tue, 28 Jan 2025 18:15:53 +0100
Message-ID: <4927911.OV4Wx5bFTl@fedora.fritz.box>
Precedence: bulk
X-Mailing-List: linux-embedded@vger.kernel.org
List-Id: <linux-embedded.vger.kernel.org>
List-Subscribe: <mailto:linux-embedded+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-embedded+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Hello,

this is the fourth version of the analyze-initcall-debug.py script, which can
be used to analyze the kernel output when booting with initcall_debug
to extract some human-readable data from it.

This version brings a complete bootchart of the kernel-side portion of the
boot sequence, showing both the initcalls and the probes.

Regards,

Francesco

---

v3: https://lore.kernel.org/linux-embedded/5640944.lGaqSPkdTl@fedora.fritz.box/
v2: https://lore.kernel.org/linux-embedded/1955396.7Z3S40VBb9@fedora/
v1: https://lore.kernel.org/linux-embedded/1964175.7Z3S40VBb9@fedora.fritz.box/

Differences v3 -> v4:

- added a SVG bootchart that includes probes and initcalls
- cosmetic fixes

Differences v2 -> v3:

- initcalls and probes have been split in different tables
- added identification section (kernel version, machine, cmdline)
- added SVG pie charts for initcalls and probes times to the HTML output
- CSS styling added to HTML output
- added the --before-init option to restrict analysis to the events that
  happen before the init is started
- Markdown output has been dropped

Differences v1 -> v2:

- added a list of failed driver probes in the plain text output
- added a preliminary comparison on read lines to avoid false negatives in
  regex-based matches
- added the --body-only option to output only the raw HTML body
- use of dictionaries instead of filter() constructs

------ the analyze-initcall-debug.py script follows ------

#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
This script can be used to analyze a Linux kernel dmesg output when the
initcall_debug command line output is used. It extracts various information,
such as initcall durations, impact of probe deferrals and so on.
"""

import argparse
import random
import re
import sys

ERRCODE_PROBE_DEFER = 517

parser = argparse.ArgumentParser(description='Analyze a Linux kernel dmesg with the initcall_debug option enabled')

parser.add_argument('--dmesg', nargs='?', type=argparse.FileType('r'),
                    default=sys.stdin, help='The dmesg file to analyze (default: stdin)')
format_group = parser.add_mutually_exclusive_group()
format_group.add_argument('--html', action='store_true',
                          help='Output analysis result as HTML table')
parser.add_argument('--body-only', action='store_true',
                    help='Do not add header and footer to HTML output')
parser.add_argument('--before-init', action='store_true',
                    help='Add to analysis only initcalls/probes happening before init')
args = parser.parse_args()

class Run:
    def __init__(self, start_time:int, end_time:int = -1, duration:int = 0, retval:int = 0):
        self._start_time = start_time
        self._end_time = end_time
        self._duration = duration
        self._retval = retval
        self._ended = (end_time >= 0)

    @property
    def start_time(self) -> int:
        return self._start_time

    @property
    def end_time(self) -> int:
        return self._end_time

    @end_time.setter
    def end_time(self, time:int):
        self._end_time = time
        self._ended = True

    @property
    def duration(self) -> int:
        return self._duration

    @duration.setter
    def duration(self, time:int):
        self._duration = time

    @property
    def retval(self) -> int:
        return self._retval

    @retval.setter
    def retval(self, val:int):
        self._retval = val

    @property
    def running(self) -> bool:
        return (not self._ended or abs(self.retval) == ERRCODE_PROBE_DEFER)

    @property
    def failed(self) -> bool:
        return ((self.retval != 0) and not self.running)


class Entity:
    def __init__(self, name:str, start_time:int = 0, end_time:int = 0, duration:int = 0, retval:int = 0):
        self._name = name
        self._color = (random.randint(0, 255), random.randint(0, 255), random.randint(0, 255))
        self._runs = [ Run(start_time, end_time, duration, retval) ]

    @property
    def name(self) -> str:
        return self._name

    @property
    def color(self) -> tuple[int, int, int]:
        return self._color

    @property
    def first_start_time(self) -> int:
        return self._runs[0].start_time

    @property
    def last_start_time(self) -> int:
        return self._runs[-1].start_time

    @property
    def first_end_time(self) -> int:
        return self._runs[0].end_time

    @property
    def last_end_time(self) -> int:
        return self._runs[-1].end_time

    @property
    def duration(self) -> int:
        return sum([ r.duration for r in self._runs ])

    @property
    def wasted_time(self) -> int:
        return sum([ r.duration for r in filter(lambda x: x.failed or abs(x.retval) == ERRCODE_PROBE_DEFER, self._runs) ])

    @property
    def retval(self) -> int:
        return self._runs[-1].retval

    @property
    def failed(self) -> bool:
        return self._runs[-1].failed

    @property
    def running(self) -> bool:
        return self._runs[-1].running

    def running_at(self, time: int):
        for r in self.runs:
            if r.start_time < time and r.end_time > time:
                return True
        return False

    @property
    def runs(self):
        return self._runs

    def addStart(self, start_time: int):
        self._runs.append( Run(start_time) )

    def addEnd(self, end_time:int = 0, duration:int = 0, retval:int = 0):
        if self._runs[-1].end_time >= 0:
            self._runs.append( Run(-1, end_time, duration, retval) )
        else:
            self._runs[-1].end_time = end_time
            self._runs[-1].duration = duration
            self._runs[-1].retval = retval

    def addRun(self, start_time: int, end_time:int = 0, duration:int = 0, retval:int = 0):
        self._runs.append( Run(start_time, end_time, duration, retval) )


class Initcall (Entity):
    def __init__(self, name: str, start_time: int, module: str = None):
        super().__init__(name, start_time)
        self._module = module

    @property
    def module(self) -> str:
        return self._module


class Probe (Entity):
    def __init__(self, name: str, start_time: int, duration: int = 0, retval: int = 0):
        super().__init__(name, start_time, start_time + duration, duration, retval)

    @property
    def deferred_probe_pending(self) -> bool:
        return (abs(self._runs[-1].retval) == ERRCODE_PROBE_DEFER)

    @property
    def num_deferred_probes(self) -> int:
        return len(list(filter(lambda r: abs(r.retval) == ERRCODE_PROBE_DEFER, self._runs)))


class Init (Entity):
    def __init__(self, name: str, start_time: int):
        super().__init__(name, start_time)

# Regex for Linux version
# "[    0.000000] Linux version 6.12.0 (oe-user@oe-host) (aarch64-poky-linux-gcc (GCC) 13.3.0, GNU ld (GNU Binutils) 2.42.0.20240723) #1 SMP PREEMPT Sun Nov 17 22:15:08 UTC 2024"
version_sentinel = 'Linux version '
version_prog = re.compile(r'\[([0-9\s]+\.[0-9]+)\] Linux version (.+)')

# Regex for machine model
# "[    0.000000] Machine model: BeagleBoard.org BeaglePlay"
machine_sentinel = 'Machine model: '
machine_prog = re.compile(r'\[([0-9\s]+\.[0-9]+)\](?: OF: fdt:)? Machine model: (.+)')

# Regex for cmdline
# "[    0.000000] Kernel command line: LABEL=Boot root=PARTUUID=076c4a2a-02 rootfstype=ext4 rootwait log_buf_len=10M initcall_debug quiet"
cmdline_sentinel = 'Kernel command line: '
cmdline_prog = re.compile(r'\[([0-9\s]+\.[0-9]+)\] Kernel command line: (.+)')

# Regex for 'calling' messages
# "[    0.466115] calling  pci_sysfs_init+0x0/0xa8 @ 1"
calling_sentinel = 'calling  '
calling_prog = re.compile(r'\[([0-9\s]+\.[0-9]+)\] calling  ([0-9a-zA-Z_]+)\+(0x[0-9a-fA-F]+\/0x[0-9a-fA-F]+)( \[[a-zA-Z0-9\-_]+\])? @ ([0-9]+)')

# Regex for 'initcall ... returned' messages
# "[    0.466115] initcall pci_sysfs_init+0x0/0xa8 returned 0 after 5 usecs"
returned_sentinel = 'initcall '
returned_prog = re.compile(r'\[([0-9\s]+\.[0-9]+)\] initcall ([0-9a-zA-Z_]+)\+(0x[0-9a-fA-F]+\/0x[0-9a-fA-F]+)( \[[a-zA-Z0-9\-_]+\])? returned ([\-0-9]+) after ([0-9]+) usecs')

# Regex for 'probe ... returned' messages
# "[    0.466115] probe of cpufreq-dt returned 517 after 140 usec"
probe_sentinel = 'probe of '
probe_prog = re.compile(r'\[([0-9\s]+\.[0-9]+)\] probe of ([0-9a-zA-Z_\-\.\:@]+) returned ([\-0-9]+) after ([0-9]+) usecs')

# Regex for
# "[    1.060329] Run /sbin/init as init process"
init_sentinel = 'as init process'
init_prog = re.compile(r'\[([0-9\s]+\.[0-9]+)\] Run ([/0-9a-zA-Z_]+) as init process')

initcalls = {}
probes = {}
init = None
version = 'Unknown'
machine = 'Unknown'
cmdline = 'Unknown'

# Extract data from dmesg
lineno = 0
for line in args.dmesg:
    lineno += 1

    if version_sentinel in line:
        match = version_prog.match(line)
        if match:
            version = str(match.group(2))
        else:
            print(f'Failed matching line {lineno}:"{line.rstrip()}" as version', file=sys.stderr)

    if machine_sentinel in line:
        match = machine_prog.match(line)
        if match:
            machine = str(match.group(2))
        else:
            print(f'Failed matching line {lineno}:"{line.rstrip()}" as machine', file=sys.stderr)

    if cmdline_sentinel in line:
        match = cmdline_prog.match(line)
        if match:
            cmdline = str(match.group(2))
        else:
            print(f'Failed matching line {lineno}:"{line.rstrip()}" as cmdline', file=sys.stderr)

    if calling_sentinel in line:
        match = calling_prog.match(line)
        if match:
            try:
                time = int(float(match.group(1)) * 1000000.0)
                name = str(match.group(2))
                module = str(match.group(4) or '').replace('[', '').replace(']', '')
            except Exception as e:
                print(f'Failed parsing line {lineno}:"{line.rstrip()}" as call', file=sys.stderr)
                raise e
            else:
                if name not in initcalls.keys():
                    initcalls[name] = Initcall(name, time, module)
                else:
                    initcalls[name].addStart(time)
            finally:
                continue
        else:
            print(f'Failed matching line {lineno}:"{line.rstrip()}" as call', file=sys.stderr)

    if returned_sentinel in line:
        match = returned_prog.match(line)
        if match:
            try:
                time = int(float(match.group(1)) * 1000000.0)
                name = str(match.group(2))
                retval = int(match.group(5))
                duration = int(match.group(6))
            except:
                print(f'Failed parsing line {lineno}:"{line.rstrip()}" as call return', file=sys.stderr)
            else:
                if name not in initcalls.keys():
                    print(f'Detected return for initcall {name}, for which a call was never recorded', file=sys.stderr)
                else:
                    initcalls[name].addEnd(time, duration, retval)
            finally:
                continue
        else:
            print(f'Failed matching line {lineno}:"{line.rstrip()}" as call return', file=sys.stderr)

    if probe_sentinel in line:
        match = probe_prog.match(line)
        if match:
            try:
                time = int(float(match.group(1)) * 1000000.0)
                name = str(match.group(2))
                retval = int(match.group(3))
                duration = int(match.group(4))
            except:
                print(f'Failed parsing line {lineno}:"{line.rstrip()}" as probe return', file=sys.stderr)
            else:
                if name not in probes.keys():
                    probes[name] = Probe(name, time - duration, duration, retval)
                else:
                    probes[name].addRun(time - duration, time, duration, retval)
            finally:
                continue
        else:
            print(f'Failed matching line {lineno}:"{line.rstrip()}" as probe return', file=sys.stderr)

    if not init and init_sentinel in line:
        match = init_prog.match(line)
        if match:
            try:
                time = int(float(match.group(1)) * 1000000.0)
                name = str(match.group(2))
            except:
                print(f'Failed parsing line {lineno}:"{line.rstrip()}" as init', file=sys.stderr)
            else:
                init = Init(name, time)
            finally:
                if args.before_init:
                    break
                else:
                    continue
        else:
            print(f'Failed matching line {lineno}:"{line.rstrip()}" as init', file=sys.stderr)

if len(initcalls) == 0:
    print(f'No initcalls parsed - check your kernel configuration and command line', file=sys.stderr)
    sys.exit(1)

# Print HTML format
if args.html:
    if not args.body_only:
        print(
'''
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8" />
    <title>Boot time analysis</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        .aid-title {
            font-weight: bold;
            font-size: 2em;
            text-align: center;
            padding: 0.5em;
        }

        .aid-bootchart-container {
            width: 80%;
            margin: 0 auto;
            overflow: auto;
        }

        .aid-bootchart-element:hover {
            stroke: red;
        }

        .aid-piechart-container {
            width: 30%;
            height: 30%;
            margin: 0 auto;
            padding: 1em;
        }

        table, th, td {
            border: 1px solid;
            border-collapse: collapse;
        }

        table {
            text-align: left;
            overflow: hidden;
            width: 80%;
            margin: 0 auto;
            display: table;
        }

        table th {
            font-weight: bold;
            font-size: 1em;
            text-align: center;
        }

        table td, table th {
            padding: 0.4%;
        }

        .aid-status-ok {
            background-color: #77FF77;
        }

        .aid-status-failed {
            background-color: #FF7777;
        }

        .aid-status-deferred {
            background-color: #FFCC77;
        }

        .aid-status-deferred {
            background-color: #CCCCCC;
        }
    </style>
</head>
<body>''')

    # Identification
    print(
f'''
    <div class="aid-title">Identification &amp; Summary </div>
    <table>
        <tr>
            <td>Linux version</td>
            <td>{version}</td>
        </tr>
        <tr>
            <td>Machine</td>
            <td>{machine}</td>
        </tr>
        <tr>
            <td>Command line</td>
            <td>{cmdline}</td>
        </tr>
        <tr>
            <td>Total boot time</td>
            <td>{max([k.last_end_time for k in initcalls.values()] + [k.last_end_time for k in probes.values()]) // 1000}ms</td>
        </tr>
        <tr>
            <td>Init start time</td>
            <td>{init.last_start_time // 1000}ms</td>
        </tr>
    </table>
''')

    # Boot chart
    SCALE_SIZE = 25
    MARGIN_SIZE = 5
    INITCALL_SIZE = 100
    PROBE_SIZE = 50

    SCALING_US_DIV = 100

    ## Determine the peak number of probes running in parallel
    max_par_probes = 0
    for p in probes.values():
        max_par_probes = max(max_par_probes, max([len(list(filter(lambda k: k.running_at(r.start_time), probes.values()))) for r in p.runs]))

    bootchart_height = SCALE_SIZE + MARGIN_SIZE + INITCALL_SIZE + MARGIN_SIZE + (PROBE_SIZE + MARGIN_SIZE) * max_par_probes
    bootchart_length = max([k.last_end_time for k in initcalls.values()] + [k.last_end_time for k in probes.values()])

    print(
f'''
    <div class="aid-title">Bootchart</div>
    <div class="aid-bootchart-container" style="height: {min(480, bootchart_height + SCALE_SIZE)}px">
        <svg width="{bootchart_length // SCALING_US_DIV}" height="{bootchart_height}">
            <style>
                .small {{
                  font: bold {SCALE_SIZE / 2}px sans-serif;
                }}
            </style>
''')

    ## Plot scale
    for n in range(int(bootchart_length / (1000 * 50)) + 1):
        x = n * (1000 * 50) // SCALING_US_DIV
        print(
f'''
            <text x="{x}" y="{SCALE_SIZE / 2}" fill="#999999" class="small">{n * 50}ms</text>
            <line x1="{x}" x2="{x}" y1="{SCALE_SIZE}" y2="{bootchart_height}" stroke="#999999"/>
''')
        for m in range(1,5):
            x += (1000 * 10) // SCALING_US_DIV
            print(
f'''
            <line x1="{x}" x2="{x}" y1="{SCALE_SIZE}" y2="{bootchart_height}" stroke="#CCCCCC" stroke-dasharray="10,15" />
''')

    y_offset = SCALE_SIZE + MARGIN_SIZE

    ## Plot initcalls (ignore those with duration equal to 0)
    for d in sorted(list(filter(lambda i: i.duration > 0, initcalls.values())), key=lambda k: k.first_start_time):
        print(
f'''
            <a href="#aid-initcall-{d.name}">
                <rect class="aid-bootchart-element" width="{max(d.duration // SCALING_US_DIV, 1)}" height="{INITCALL_SIZE}" \
                 x="{d.first_start_time // SCALING_US_DIV}" y="{y_offset}" fill="#{d.color[0]:02X}{d.color[1]:02X}{d.color[2]:02X}">
                    <title>Initcall: {d.name}</title>
                </rect>
            </a>
''')

    ## Plot initcalls container and label
    print(
f'''
            <text x="{MARGIN_SIZE}" y="{y_offset + SCALE_SIZE / 2}" fill="#999999" class="small">INITCALLS</text>
            <line x1="0" y1="{y_offset}" x2="{bootchart_length // SCALING_US_DIV}" y2="{y_offset}" stroke="#555555" />
            <line x1="0" y1="{y_offset + INITCALL_SIZE}" x2="{bootchart_length // SCALING_US_DIV}" y2="{y_offset + INITCALL_SIZE}" stroke="#555555" />
''')

    ## Plot probes
    if len(probes) > 0:
        y_offset = SCALE_SIZE + MARGIN_SIZE + INITCALL_SIZE + MARGIN_SIZE

        slots = {}
        for d in sorted(list(probes.values()), key=lambda k: k.first_start_time):
            for i,r in enumerate(d.runs):
                ypos = 0
                while len(list(filter(lambda j: j.running_at(r.start_time) and slots.get(j.name, -1) == ypos, probes.values()))) != 0:
                    ypos = ypos + 1
                slots[d.name] = ypos

                print(
f'''
            <a href="#aid-probe-{d.name}">
                <rect class="aid-bootchart-element" width="{max(r.duration // SCALING_US_DIV, 1)}" height="{PROBE_SIZE}" \
                 x="{r.start_time // SCALING_US_DIV}" y="{y_offset + (PROBE_SIZE + MARGIN_SIZE) * ypos}" fill="#{d.color[0]:02X}{d.color[1]:02X}{d.color[2]:02X}">
                    <title>Probe: {d.name}</title>
                </rect>
            </a>
''')

        ## Plot probes label
        print(
f'''
            <text x="{MARGIN_SIZE}" y="{y_offset + SCALE_SIZE / 2}" fill="#999999" class="small">PROBES</text>
''')

    ## Plot init startup marker and label
    if not args.before_init:
        x = init.last_start_time // SCALING_US_DIV
        print(
f'''
            <text x="{x}" y="{SCALE_SIZE / 2}" fill="#FF0000" class="small">Init start</text>
            <line x1="{x}" x2="{x}" y1="{SCALE_SIZE}" y2="{bootchart_height}" stroke="#FF0000" />
''')

    print(
f'''
        </svg>
    </div>
''')

    # Initcalls
    initcalls_total_time = sum( [ k.duration for k in initcalls.values() ] )

    print(
'''
    <div class="aid-title">Initcalls</div>
''')


    ## Print initcalls pie chart
    print(
'''
    <div class="aid-piechart-container"><svg viewBox="0 0 100 100">
''')

    start_point = 0
    visible_limit = max([k.duration for k in list(initcalls.values())]) / 100
    for d in sorted(initcalls.values(), key=lambda k: k.duration, reverse=True):
        if d.duration < visible_limit:
            title = "ALL OTHER INITCALLS"
            length = initcalls_total_time - start_point
        else:
            title = d.name
            length = d.duration

        start_point = start_point + length
        print(
f'''
        <a href="#aid-initcall-{d.name}">
            <circle r="25" cx="50" cy="50" fill="none" stroke="#{d.color[0]:02X}{d.color[1]:02X}{d.color[2]:02X}"
                    stroke-width="50" stroke-dasharray="{length} {initcalls_total_time - length}"
                    stroke-dashoffset="{start_point}" pathLength="{initcalls_total_time}">
                <title>{title}</title>
            </circle>
        </a>
''')
        if d.duration < visible_limit:
            break

    print(
'''
    </svg></div>
''')

    print(
'''
    <table>
        <tr>
            <th>&nbsp;</th>
            <th>Name</th>
            <th>Status</th>
            <th>Duration (us)</th>
            <th>Time in failed calls (us)</th>
            <th>Fraction of total time (%)</th>
            <th>Module</th>
        </tr>''')

    for d in sorted(initcalls.values(), key=lambda k: k.duration, reverse=True):
        run_status = 'RUNNING' if d.running else 'FAILED' if d.failed else 'OK'
        print(
f'''
        <tr id="aid-initcall-{d.name}">
            <td style="background-color: #{d.color[0]:02X}{d.color[1]:02X}{d.color[2]:02X};"></td>
            <td>{d.name}</td>
            <td class="aid-status-{run_status.lower()}">{run_status}{f' ({abs(d.retval)})' if d.failed else ''}</td>
            <td>{d.duration}</td>
            <td>{d.wasted_time}</td>
            <td>{(d.duration * 100 / initcalls_total_time):0.3f}</td>
            <td>{d.module}</td>
        </tr>''')

    print(
'''
    </table>
''')

    if len(probes) > 0:
        # Probes
        probes_total_time = sum([k.duration for k in probes.values()])

        print(
'''
    <div class="aid-title">Probes</div>
''')

        ## Print probes pie chart
        print(
'''
    <div class="aid-piechart-container"><svg viewBox="0 0 100 100">
''')

        start_point = 0
        visible_limit = max([k.duration for k in list(initcalls.values())]) / 100
        for d in sorted(probes.values(), key=lambda k: k.duration, reverse=True):
            if d.duration < visible_limit:
                title = "ALL OTHER PROBES"
                length = probes_total_time - start_point
            else:
                title = d.name
                length = d.duration

            start_point = start_point + length
            print(
f'''
        <a href="#aid-initcall-{d.name}">
            <circle r="25" cx="50" cy="50" fill="none" stroke="#{d.color[0]:02X}{d.color[1]:02X}{d.color[2]:02X}"
                    stroke-width="50" stroke-dasharray="{length} {probes_total_time - length}"
                    stroke-dashoffset="{start_point}" pathLength="{initcalls_total_time}">
                <title>{title}</title>
            </circle>
        </a>
''')
            if d.duration < visible_limit:
                break

        print(
'''
    </svg></div>
''')

        ## Print probes table
        print(
'''
    <table>
        <tr>
            <th>&nbsp;</th>
            <th>Name</th>
            <th>Status</th>
            <th>Duration (us)</th>
            <th>Num deferred probes</th>
            <th>Time in failed probes (us)</th>
            <th>Fraction of total time (%)</th>
            <th>After init</th>
        </tr>
''')

        for d in sorted(probes.values(), key=lambda k: k.duration, reverse=True):
            run_status = 'DEFERRED' if d.deferred_probe_pending else 'RUNNING' if d.running else 'FAILED' if d.failed else 'OK'
            after_init = 'YES' if d.last_start_time > init.last_start_time else 'NO'
            print(
f'''
        <tr id="aid-probe-{d.name}">
            <td style="background-color: #{d.color[0]:02X}{d.color[1]:02X}{d.color[2]:02X};"></td>
            <td>{d.name}</td>
            <td class="aid-status-{run_status.lower()}">{run_status}{f' ({abs(d.retval)})' if d.failed else ''}</td>
            <td>{d.duration}</td>
            <td>{d.num_deferred_probes}</td>
            <td>{d.wasted_time}</td>
            <td>{(d.duration * 100 / probes_total_time):0.3f}</td>
            <td>{after_init}</td>
        </tr>''')

        print(
'''
    </table>
''')

    if not args.body_only:
        print(
'''
</body>
</html>
''')

# Print plain text
else:
    num_before_userspace = len(list(filter(lambda d: d.last_start_time <= init.last_start_time, initcalls.values())))
    num_after_userspace = len(list(filter(lambda d: d.last_start_time > init.last_start_time, initcalls.values())))
    num_deferred_probe_pending = len(list(filter(lambda d: d.deferred_probe_pending, list(probes.values()))))
    num_failed = len(list(filter(lambda d: d.failed, list(initcalls.values()) + list(probes.values()))))

    print(f'Linux version: {version}')
    print(f'Machine: {machine}')
    print(f'Command line: {cmdline}')
    print('Summary:')
    print(f'  {len(initcalls)} initcalls have been executed, of which {num_before_userspace} before userspace and {num_after_userspace} after')
    print(f'  {num_deferred_probe_pending} deferred probes are pending')
    print(f'  {num_failed} initcalls/probes failed')
    print(f'  Total boot time: {max([k.last_end_time for k in initcalls.values()] + [k.last_end_time for k in probes.values()]) // 1000}ms')
    print(f'  Init start time: {init.last_start_time // 1000}ms')

    print('\n---\n')

    print('Top 10 initcall durations:')
    for d in sorted(initcalls.values(), key=lambda k: k.duration, reverse=True)[0:10]:
        print(f' * {d.name} -> {d.duration}us')

    print('\n---\n')

    print('Top 10 probe durations:')
    for d in sorted(probes.values(), key=lambda k: k.duration, reverse=True)[0:10]:
        print(f' * {d.name} -> {d.duration}us')

    print('\n---\n')

    print('Failed initcalls/probes:')
    for d in filter(lambda k: k.failed, list(initcalls.values()) + list(probes.values())):
        print(f' * {d.name} -> ret = -{abs(d.retval)}')




