Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C5B25144A3
	for <lists+linux-embedded@lfdr.de>; Fri, 29 Apr 2022 10:44:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355881AbiD2Ip4 (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Fri, 29 Apr 2022 04:45:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355836AbiD2Ipz (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Fri, 29 Apr 2022 04:45:55 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D541412AB7
        for <linux-embedded@vger.kernel.org>; Fri, 29 Apr 2022 01:42:36 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-e5ca5c580fso7531311fac.3
        for <linux-embedded@vger.kernel.org>; Fri, 29 Apr 2022 01:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=landley-net.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:to:content-language:from
         :subject:content-transfer-encoding;
        bh=DOFzDrO+vhXO8Gcyu+xQK+JEWZx81jZ+0NBSGX+rPig=;
        b=BK90K/kYF+Ksp3HKhxkZW+4K1PD4Zl/0CoYwfwQPOpfYlp2/qtEELnLeop9YztORWJ
         EF959FHg0ZnaGI9xZRJ7iUNcoDLbZkVvTm2KZcIzi9LmD84UELuvm06pLtFrHd9oXZ/p
         gw4UUte5+1/gPvlFw10NXQRKXwper5T0COHG8Wfq2QUH5QvMW1U1bvuQgpk90AF6NdL4
         0Zu+xfCxTLpM4P07MsarlKdRLhWjZ25AxrxBeA/gDk12KaiBygVL5qSCTIzfOZQmhyoQ
         lcBT6AijBEZ/PKJ4mPRCUXllCIkDPsx8L/UcIvmWiFZi2DL7SX4awn+kXIVTif04ksN9
         EeXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:to
         :content-language:from:subject:content-transfer-encoding;
        bh=DOFzDrO+vhXO8Gcyu+xQK+JEWZx81jZ+0NBSGX+rPig=;
        b=BQwcnArd6x8DcSusflDXXWcVT5+0NHjfZmj2bd6bKjUvsx6uibK8jC0I0C9olieZjN
         COImER4cLjE1LOImf/5SGigzPGA05XENR9DUiJebPu/pgy2i7YdTjbp906sNYOg9f1YO
         jXm0W93bUL8wbUGRGooaAUC+fZHjfmneKWJT1y80S+8E28aGSswb9ohGx3Mcbv8JHxZZ
         ogS9GUfExVD5GZz9WVejBmbiLgVCkgeGzRWHHObTG694bte2cXnbRqzgEhvvT+7kfX3B
         6d8YUsHVyHDGf5NstKP9U6Kc+wLJ9wlVIUXM2BM7TlYGd6uMO+67ZXXxPN3mfKgA5hlj
         1MJQ==
X-Gm-Message-State: AOAM5333HlaECCoJ6jQOYmYXx/8YmJj7Co46ueqM8Eql7KHoF3UvfuWC
        RzLu1k/mEx4zUhWzKH29nbCBLu/0C3gBWOIT
X-Google-Smtp-Source: ABdhPJxB4tqlxsdwhaNOlWvCOme8Q5BwGZm1PKGUSUsTBEqNeZlMOOjOSs+ROGLkx6rCx9f8iWGpNA==
X-Received: by 2002:a05:6870:a106:b0:e9:2b2:2aeb with SMTP id m6-20020a056870a10600b000e902b22aebmr923970oae.30.1651221755897;
        Fri, 29 Apr 2022 01:42:35 -0700 (PDT)
Received: from ?IPV6:2607:fb90:c225:a740:38f8:4eff:fee1:a33c? ([2607:fb90:c225:a740:38f8:4eff:fee1:a33c])
        by smtp.gmail.com with ESMTPSA id 64-20020aca0643000000b002f9b8a6ca98sm909888oig.4.2022.04.29.01.42.35
        for <linux-embedded@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 01:42:35 -0700 (PDT)
Message-ID: <776519c4-6c83-6f43-ff92-05c29020a5c0@landley.net>
Date:   Fri, 29 Apr 2022 03:47:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
To:     linux-embedded@vger.kernel.org
Content-Language: en-US
From:   Rob Landley <rob@landley.net>
Subject: Prebuilt binary and native toolchains.
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

FYI, I uploaded the cross and native compilers I use with toybox and mkroot to:

https://landley.net/toybox/downloads/binaries/toolchains/latest/

They're all gcc with musl.

Rob
