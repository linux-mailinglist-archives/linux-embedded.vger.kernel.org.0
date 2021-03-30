Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BDED134ED93
	for <lists+linux-embedded@lfdr.de>; Tue, 30 Mar 2021 18:19:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232419AbhC3QSr (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Tue, 30 Mar 2021 12:18:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232370AbhC3QSZ (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Tue, 30 Mar 2021 12:18:25 -0400
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42658C061574
        for <linux-embedded@vger.kernel.org>; Tue, 30 Mar 2021 09:18:24 -0700 (PDT)
Received: by mail-qt1-x82e.google.com with SMTP id y2so12271093qtw.13
        for <linux-embedded@vger.kernel.org>; Tue, 30 Mar 2021 09:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hYnOGHTVAkTiA5SZ7CJ29lyEmltF8SgGXiO9poOdGP0=;
        b=WDUPRulxbryHg26bloBOdkjZYMtGMcFqr/2XMQSNaYCVy+pj5OmhQmGMWmDV4Zj+Kk
         cOpLvkTB+U4/SOwOlgB1PqfomPM6CA18prH3PlV7QuGSiuaSWASnDqqBJu8R71qPGWNX
         +GbMq0EarpWvAXoy6PQJo2sr56/GE9G+qfpB2t3dMy60832DvzvnmrF7P+TkjENVJoaV
         FxBk15gnOI6t4TdGKmEkGolYSmNwSpQyu0B5/9tepYt+oS02EazoSlY0n7zeQXJvy/lI
         buwaXOFRtazJQlL3z8WPcFJvn9JQyHDlvLlVQZqI1EkJlIn8hqdsQ9noBvm0nvdOaZo6
         B13A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hYnOGHTVAkTiA5SZ7CJ29lyEmltF8SgGXiO9poOdGP0=;
        b=nWraCWO9dCbv2JV4MbSbZsrRsrLxREesDtKKcHTj1IeEoX4+6Qu+OP4KuRvCTxjAVi
         17YMl1bKn/kYFciL1MFPrtSXNiHS5Bl1CtHPCxaF6+5+eM6CW6pO7PbTx3QnrHuuOq+8
         HcKQSg3xJEvdopFnjv+6ou2ShYGss316PXVRUReN5jRR57ww4PPo6JgP4O/abDZ9RGEy
         fBiN5jt95mfEo4lUSVsNSCuvlSqSfZPEV3l+3KdODvl65ILwoFY26dQ/L0RaRDL+65Xq
         t0MofDvPIDsXaC/rkF4rJnBM2CF5ZtOXnZg57sQNxIsTXSQq4Bd0jDFbe7AXiK0k4Lbt
         OVEQ==
X-Gm-Message-State: AOAM531aarPxumcyTFJ1Znn52Sj5e0Pd5tejtpFuU5+SD8m/I2BSkrdo
        IubFf1izcjKgbhhnZ7miuLbIupXZCPg=
X-Google-Smtp-Source: ABdhPJyozjLF9MSAfpKPIsK91P/EznPdZ+8HlmVP5EjclR+7/gFVkOc06220r8bElBWrY2jfkvVcKQ==
X-Received: by 2002:ac8:698f:: with SMTP id o15mr29033952qtq.39.1617121103347;
        Tue, 30 Mar 2021 09:18:23 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id y13sm13175666qto.39.2021.03.30.09.18.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 09:18:22 -0700 (PDT)
Date:   Tue, 30 Mar 2021 12:18:20 -0400
From:   Trevor Woerner <twoerner@gmail.com>
To:     yocto@lists.yoctoproject.org,
        openembedded-architecture@lists.openembedded.org,
        openembedded-core@lists.openembedded.org,
        automated-testing@yoctoproject.org,
        yocto-advocacy@yoctoproject.org, linux-embedded@vger.kernel.org
Subject: Yocto Project Virtual Summit 2021
Message-ID: <20210330161820.GA35681@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

The Yocto Project Summit Planning Committee is happy to announce the
upcoming 3rd Yocto Project Summit to take place Tuesday and Wednesday
May 25-26 2021, virtually.

The 2-day event will run in 2 tracks including a virtual developers meeting,
beginner tutorial sessions, hands-on intermediate instruction, lightning
talks, regular talks, and social events.

The cost for all attendees will be $40USD. The event will run both days from
noon until 8pm GMT. Registration is not yet open but will be shortly, please
watch for further announcements.

The call for papers is now open and will close at 11:59 PM PST on Sunday,
April 25, 2021. To submit a proposal please visit:
	https://pretalx.com/yocto-project-summit-2021/cfp

For more information please visit:
	https://www.yoctoproject.org/yocto-project-virtual-summit-2021/

We look forward to seeing you at the conference!
