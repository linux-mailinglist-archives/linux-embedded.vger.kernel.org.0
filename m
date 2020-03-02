Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CE1051765DD
	for <lists+linux-embedded@lfdr.de>; Mon,  2 Mar 2020 22:22:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726536AbgCBVWu (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Mon, 2 Mar 2020 16:22:50 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:35693 "EHLO
        mail-qk1-f177.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725911AbgCBVWu (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Mon, 2 Mar 2020 16:22:50 -0500
Received: by mail-qk1-f177.google.com with SMTP id 145so1296212qkl.2
        for <linux-embedded@vger.kernel.org>; Mon, 02 Mar 2020 13:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rX3WVXltipjdz6lZVWptiw+gNEH94gMssMHchzL4/L0=;
        b=QTI973JubAfKIuHCIFKBBtenQ9Rm9ggz3B89tbD9Zw+qgyjPkFh/IxZYs9qnzdhfWM
         aleAvIYJtmDMPB74J8F2oBEQSJkEMvPVuKJPUqJX4mu+w/3oh029mY272dBToxZX/bDL
         ynj3YUxV6aOkYo2u+1sYcW7vo4ab3xhhOfNUxBF+Pr5Bo4qlT3ctLJ0eOxvVG7MmYVW7
         X98S0Z9HfDtydn46hiti7pe4Q218s08n2aziwP0AsU4c2KQFlV7sBTRNNLM/fVeHr0xD
         kufDrFipjPoBEYol2VZEhLhJVrEwfcQi07EuhswcHUsa8XpvBNU05/7OThQ5TNjBfT8W
         x0+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rX3WVXltipjdz6lZVWptiw+gNEH94gMssMHchzL4/L0=;
        b=JofygOtDFdVebf4BqWxn4KHPAcuWOlMOtoJnG0663ZKwowSirRqYQ1bqObx0rO5xWq
         +vWLcRMwmhdUuiaIbFJRj4s9guTSO3f7WqS9qu0VSMbJHfTUaX4D6qlZbj7uuS7KrDmr
         jOsxdtDOABrdI96DVeXIyJDd6myJv2e8BLAxufu1KyJuLVM7hfcQRvEkk92jx6scLpXi
         xVSlPaN0v6tCYc/9OipKl27szacADrCG7KCO0ZeTVq6Fy21ejJqSPlHPCTj/CMCNek7Y
         Gu/AS0nBBhxUDvKJNfvAdkVdjhjeOFKcfqTtOpTdQQNi6r0SuLWosaE86NaqGahyRfaK
         M0Xg==
X-Gm-Message-State: ANhLgQ2rd3bVBfUnlLBpofJRE545zULGenzOAxZEo6/0tXwZytOFDMEJ
        q25VUGd/Bpcru3QJFMHv46sBh4O2
X-Google-Smtp-Source: ADFU+vsxjieXo2xoaXJiNAetKbU87qXMruI3ph3yi0wtamso7qE/Yr8LMKmiGQwGO1uaSbjtNfZt1w==
X-Received: by 2002:a37:6211:: with SMTP id w17mr1067301qkb.324.1583184168864;
        Mon, 02 Mar 2020 13:22:48 -0800 (PST)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id g62sm10542923qkd.25.2020.03.02.13.22.47
        for <linux-embedded@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2020 13:22:48 -0800 (PST)
Date:   Mon, 2 Mar 2020 16:22:43 -0500
From:   Trevor Woerner <twoerner@gmail.com>
To:     linux-embedded@vger.kernel.org
Subject: Re: ELCE 2015 videos unavailable
Message-ID: <20200302212243.GA36779@linux-uys3>
References: <6bd91f36-e8fb-fc43-e0b3-725906d04326@gmail.com>
 <a4592c17-9868-afc4-c2f1-99877b676b91@ti.com>
 <8c24b246-74ad-9c77-5e28-2765e0827525@gmail.com>
 <MWHPR13MB08959A93DB69D356B2B608B0FD1A0@MWHPR13MB0895.namprd13.prod.outlook.com>
 <6541c562-9160-a5ee-306a-7d1c3a2b67d1@landley.net>
 <MWHPR13MB08950D7002AD742974026E8DFD120@MWHPR13MB0895.namprd13.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <MWHPR13MB08950D7002AD742974026E8DFD120@MWHPR13MB0895.namprd13.prod.outlook.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Sender: linux-embedded-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

I hear that youtube-dl is a great program. It will also help you download
content from other sites such as slideshare and vimeo etc:
https://ytdl-org.github.io/youtube-dl/supportedsites.html

I've also heard that sites like youtube aren't fond of tools like youtube-dl,
so they change the metadata associated with their content on a regular basis
to thwart such tools. As a result, the youtube-dl installed with your distro
packaging is likely out of date, you'd be better off to install it using one
of the python packaging/installing tools directly (and keep it up-to-date
that way). As a result, I hear there are sometimes small gaps between youtube
changing their metadata, and youtube-dl catching up.

Also, youtube does detect downloads via youtube-dl, and will cut you off (or
more specifically, will cut off your IP) if you use it (in their opinion) too
much (search for: "youtube-dl unauthorized 403"). So you'd be wise to throttle
your usage of such a tool.

...or so i've heard...
