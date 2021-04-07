Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6902735758E
	for <lists+linux-embedded@lfdr.de>; Wed,  7 Apr 2021 22:09:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233999AbhDGUJ3 (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Wed, 7 Apr 2021 16:09:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239002AbhDGUJ3 (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Wed, 7 Apr 2021 16:09:29 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AD60C06175F
        for <linux-embedded@vger.kernel.org>; Wed,  7 Apr 2021 13:09:19 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id j26so15578028iog.13
        for <linux-embedded@vger.kernel.org>; Wed, 07 Apr 2021 13:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=XGaENESI2XfSMzRuu5h2NLMo1s/wV090jzAHbm9+pCA=;
        b=DzjyRKRU4qMRM2ZqNFLAFeIqTH79fqqfcyVAV/KnNRjj6Vt5YuQxPX0jCPxY9F9+Xe
         t6DOjcGnUVZssNVraKwGscgGO4M0Bb52f03+W0n+po2SGevKrHEm37XbVYuuAGiRM1Mt
         sMjYp3T8DJvt2LmRuzZ/NXinGSVqJaAZFCJ+f2ypsH9aebP9GJTRRQZbPXDyZKGJKoOP
         GQgYTT3TxBemMPShnmU6g5pDs9lFa3KhwHWZb4+Gy/jkN4ylZaAxRzs6VsiCky2Cmu8Y
         qzoEOPX614DIfCuTEL4MzGBxS62F3tC/F8MXg8txxArBV9pc59QlzCD7gyWPguRrWyt4
         eQDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=XGaENESI2XfSMzRuu5h2NLMo1s/wV090jzAHbm9+pCA=;
        b=WF95qimCQKnWXvyhgZCRr9NKBxwNW7PtNNN3KHm32u2FXJbEnw7vrR7cIjOz0UDiHv
         1edEmGbTHP7E5vtsNeO59UOfNMBS1vvzRENbZy7Jq7yowA3ZddWzwvUm//QbGkoI8Tex
         tnvDCGRsBr6+k/SGmT56kzMH49JWjRwk+p2nOQvH8ohHO95AuAlP7WIhTUI2MEN3ND3P
         1VBrprtuHiynUM45mnVRn/vNDN7b/xtCvZAXnCbiyE2lRQP+rgLFwpeZJ7nsXgl8R9b9
         ecl62Ti7ffzEaJaBdrp+ZnZQ5HXmrc4pImS1uvmsUo/xX+TEAZ6K7z2XPZmiTKAgEweW
         1k4A==
X-Gm-Message-State: AOAM5302tfhST/kjt20G10CAR/36qbsEs+J+mNO/cgWSSD43K/TrM49X
        sCmrK10cxTia2WpEqyxbDFsnC65/B6O0CV8U3VLhOXSPN8Y=
X-Google-Smtp-Source: ABdhPJxYVww8Zbrm9xJp49GEIonItA5uo4V5seiQ2LLCNsqTP3LB7zWhck9HoEJIpjiiPnHL+QsYT7uaLFyXD8Rgt/I=
X-Received: by 2002:a6b:ea04:: with SMTP id m4mr3838566ioc.160.1617826158284;
 Wed, 07 Apr 2021 13:09:18 -0700 (PDT)
MIME-Version: 1.0
From:   Trevor Woerner <twoerner@gmail.com>
Date:   Wed, 7 Apr 2021 16:09:07 -0400
Message-ID: <CAHUNapQ75myQ7hN61yvxNsqih3be_7qOyQd0y1r2eJk2ZTta=g@mail.gmail.com>
Subject: Yocto Project Summit - registration open
To:     linux-embedded@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

Registration is now open for the upcoming Yocto Project Summit!!

details: https://www.yoctoproject.org/yocto-project-virtual-summit-2021/
CfP: https://pretalx.com/yocto-project-summit-2021/cfp
registration: https://www.cvent.com/d/yjq4dr/4W?ct=868bfddd-ca91-46bb-aaa5-62d2b61b2501

PS: Don't forget to get in your talk proposals! The CfP closes April 25th
