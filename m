Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 68E84176647
	for <lists+linux-embedded@lfdr.de>; Mon,  2 Mar 2020 22:44:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726877AbgCBVoH (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Mon, 2 Mar 2020 16:44:07 -0500
Received: from mail-qt1-f182.google.com ([209.85.160.182]:38554 "EHLO
        mail-qt1-f182.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726728AbgCBVoE (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Mon, 2 Mar 2020 16:44:04 -0500
Received: by mail-qt1-f182.google.com with SMTP id e20so1253583qto.5
        for <linux-embedded@vger.kernel.org>; Mon, 02 Mar 2020 13:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MITAib3SqPVDeFFmQQ2SYZ4ObZ3Y4ah1CtBnulHlld4=;
        b=OvGvVXziS1Jb5n095m1nofZTeYC0cJmEMxwk2FcKWDa8rqH1RbJmwKMVF6TluxBd84
         KX3UhX9cediRhfFYhLGM6EDLFUIpXZHxgpeB8HxE0PD7ga5AOnFH8Rq1xW3ST6ZL9KYF
         zB5C7BML3Cq+eiYfdcKpFBZB7pKj5cwaI2JqYFwfz0wyI2XTWBQe9QrSndt8RtOs+DXJ
         gAl9IQge7nObG6+y60b4uDb/8rdwNRN3SkJr51d9kQanuz0YDJzr7mIwJBUHx1nP7XkL
         ikmp9jTxSXS+f6IQs8AUicUewmF0alDT5crjGfE7A8z8ILMX/erh6mCxB9NMyI6mBo2X
         efwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MITAib3SqPVDeFFmQQ2SYZ4ObZ3Y4ah1CtBnulHlld4=;
        b=gRDw6E/9+vq9kYZqD0VpJiUY22QyLxfhwZswoFGnDHU8KEmTzS4Pch21YgDk3Jl/AX
         QlMbXohO41j6f5cT1XcPMshoX+NX2gBKoQR9QyMD4bijNI1I0v7S4WNm0m4+CjExigjX
         /f5qK/QMtmKaptFmcvSHpYLGyvoHxkzc2tSMhj0BIgqPZMhNG4Il5mXsVZbX5M46j/l3
         C9bib45jm8aFrQnISLeXBOCk4TTdnRS6pJV70sBbYDGx2LfVsBVBKMIhiCKaTu1LfCNe
         VwFjK09Jn5MUPVJ2YbsMv2by+EhEAUcziVXxZgl1Cmk11OTJSHYT+ZcxDLw+c0o08YGy
         vnFw==
X-Gm-Message-State: ANhLgQ1dtb5SF4pINFciO7ajREiXjbwNjgxOwOoPpVVkALc+ptkptfi2
        FDeMitGI7HT0Pt3pNXL2KXADO4aR
X-Google-Smtp-Source: ADFU+vvXtB5qluN38/OwYqjH+LYkLynMJwJ1h7MDRtbRwr09YqmDJEJjYzydkMqbhSn/b0yyCt7AdA==
X-Received: by 2002:aed:3022:: with SMTP id 31mr1662752qte.282.1583185443448;
        Mon, 02 Mar 2020 13:44:03 -0800 (PST)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id 62sm8152324qkk.84.2020.03.02.13.44.01
        for <linux-embedded@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2020 13:44:02 -0800 (PST)
Date:   Mon, 2 Mar 2020 16:43:58 -0500
From:   Trevor Woerner <twoerner@gmail.com>
To:     linux-embedded@vger.kernel.org
Subject: Re: ELCE 2015 videos unavailable
Message-ID: <20200302214358.GC36779@linux-uys3>
References: <6bd91f36-e8fb-fc43-e0b3-725906d04326@gmail.com>
 <a4592c17-9868-afc4-c2f1-99877b676b91@ti.com>
 <8c24b246-74ad-9c77-5e28-2765e0827525@gmail.com>
 <MWHPR13MB08959A93DB69D356B2B608B0FD1A0@MWHPR13MB0895.namprd13.prod.outlook.com>
 <e223aa34-57c4-c946-acce-c74ab66fe09a@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <e223aa34-57c4-c946-acce-c74ab66fe09a@ti.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Sender: linux-embedded-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

On Mon 2020-02-17 @ 05:21:14 PM, Kishon Vijay Abraham I wrote:
> Do we have permission from Youtube to download the videos? A quick look
> at their terms [1] indicate we are not allowed to download the content

Yes, this is, unfortunately, true.

Which is why huge kudos are in order for those conferences (linux.conf.au,
fosdem, ccc, (and others?)) which, in addition to posting the videos on
youtube, also host them on their own servers for these and other such reasons.

https://video.fosdem.org/
https://mirror.linux.org.au/pub/linux.conf.au/
https://media.ccc.de/
