Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 120B9166D5C
	for <lists+linux-embedded@lfdr.de>; Fri, 21 Feb 2020 04:19:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729229AbgBUDTz (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Thu, 20 Feb 2020 22:19:55 -0500
Received: from mail-oi1-f172.google.com ([209.85.167.172]:33397 "EHLO
        mail-oi1-f172.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727488AbgBUDTz (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Thu, 20 Feb 2020 22:19:55 -0500
Received: by mail-oi1-f172.google.com with SMTP id q81so274339oig.0
        for <linux-embedded@vger.kernel.org>; Thu, 20 Feb 2020 19:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=landley-net.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xuYEaRHB/0pkNj1SqixIDNUqyYlP4wToyfv9uRwbzvE=;
        b=w5nn3gkR7jmZuOHKRaBBCPcKd3LmFDmhhyIVqgVqORdOSAGdeBni4XQblGG1Cvu88L
         0VHRrSsMKmTIpJdKNY6a9Coht7yoz3KO/XxQ6CgJcCWzUFuOHQzSSaah/ztnsbEcjNm8
         MNsnPwp1IAjNf7eyZAiszn4qnSLxOi349F/qYMVpDjmcaKqs1VYD/IUuaLHQ6G9sj2t5
         T4yPGM+/KTDNzrXAuVFF0qZM/FJOZ3BGEq6X0WqtjFJfe+JhEEMZ0q+PF6PibumfPCLz
         V5/G7ixew7W0ALDGQMoBPK4MeVb3/cFBnzyMD+zJG2ne7G5nRoLvjbzNucF29XdMgELe
         VcVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xuYEaRHB/0pkNj1SqixIDNUqyYlP4wToyfv9uRwbzvE=;
        b=HXYVGyPZcECZ6MRHTJcvq7OgOg4zZ5PplwyP7rQIOt6w3lOw1cYIIDGaUwT3NuxABp
         H4wWRjA++1y28CoG+W0s040LbXSYL5E2uXaqbqn0W4u4sAw3hQ1zO0IOtiEX/Zo4IeTT
         194OZivqFmsNqhccT1MRQXXztiPwrp0StmmOkKE03BCb3MZSGAb6irq6+he4tSzFD53T
         tjcMTjgnxnWqNm2dykK7rkk6vKFIUY9ychoVz0658xg0ruy3wuom4zLX00fyFQanm2MS
         k3idDNAxfuDd8VR9lelNkYMuUYSn5txAIG9oMBKNOv7vGc2ugzz6HKZIb5yc2zbITfPP
         fYCw==
X-Gm-Message-State: APjAAAV/25O2RXPlf9QeIoL7d90+8cPtdAIwjWqdIB6tDm3P66Hu2dcO
        G3Gu672lgHnZT2jkncaPLrF/3w==
X-Google-Smtp-Source: APXvYqy0WdNjVOHrLgs4viZxslvAA7BEL5tbYkcxf/8d/igJmg9qjQEru9Qyl2ClT5ztqLazEOVTAQ==
X-Received: by 2002:a54:448b:: with SMTP id v11mr297510oiv.74.1582255194406;
        Thu, 20 Feb 2020 19:19:54 -0800 (PST)
Received: from ?IPv6:2605:6000:e947:6500:6680:99ff:fe6f:cb54? ([2605:6000:e947:6500:6680:99ff:fe6f:cb54])
        by smtp.googlemail.com with ESMTPSA id t23sm474014oic.28.2020.02.20.19.19.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 19:19:53 -0800 (PST)
Subject: Re: ELCE 2015 videos unavailable
To:     "Bird, Tim" <Tim.Bird@sony.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Cc:     "linux-embedded@vger.kernel.org" <linux-embedded@vger.kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <6bd91f36-e8fb-fc43-e0b3-725906d04326@gmail.com>
 <a4592c17-9868-afc4-c2f1-99877b676b91@ti.com>
 <8c24b246-74ad-9c77-5e28-2765e0827525@gmail.com>
 <MWHPR13MB08959A93DB69D356B2B608B0FD1A0@MWHPR13MB0895.namprd13.prod.outlook.com>
From:   Rob Landley <rob@landley.net>
Message-ID: <6541c562-9160-a5ee-306a-7d1c3a2b67d1@landley.net>
Date:   Thu, 20 Feb 2020 21:24:56 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <MWHPR13MB08959A93DB69D356B2B608B0FD1A0@MWHPR13MB0895.namprd13.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-embedded-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

On 2/13/20 7:03 AM, Bird, Tim wrote:
>> I'm especially interested in yours about PCIe, but others have valuable
>> information for sure :)
> 
> Unfortunately, unless someone scraped the video from YouTube, the video
> is likely lost forever.  :-(

Back in September I put out a call and a nice person (dandan) sent me
https://landley.net/talks/jcore-2015.mp4 from their own backup.

Copies of at least some of them are out there..

Rob
