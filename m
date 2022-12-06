Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 049096444B6
	for <lists+linux-embedded@lfdr.de>; Tue,  6 Dec 2022 14:37:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234443AbiLFNgB (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Tue, 6 Dec 2022 08:36:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234260AbiLFNfx (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Tue, 6 Dec 2022 08:35:53 -0500
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1DC22B245
        for <linux-embedded@vger.kernel.org>; Tue,  6 Dec 2022 05:35:51 -0800 (PST)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-3f15a6f72d0so46011737b3.1
        for <linux-embedded@vger.kernel.org>; Tue, 06 Dec 2022 05:35:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
        b=TCK443oiEJFvojnvhbzqc3uMLoscq7n2jFvnlC6zxMliQXUJOSEmIcB7ySZg/5Nswe
         Hbr9Hvsg10w79MmD1YPPp+L1bXs2NIAAAejAsGUI+/UibW3/Q/zLb+6VLxswodO91BIL
         b2zJL5DgCeTBzhHolW3SzYRpEJw6FD7Y62znQalxJ564b8iG8KFAgyLi8iC//4gIZ530
         g0J5MDDRcg3bqblKJ+8SVtykIFIaysjjkxD/XgSghs9/hLQsdawc0uXPBWSgLgVEyytZ
         nAFRuOzxBzzA9s8zv/zUdDm+kitKQJVuM12S4+23kHZAcVx/26fg0JxnmdDNdLuzKaBS
         nisQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
        b=7G7b9Qrr+dNakPGImVvu/Swf85dj2HEbjHpUcxIBf4Z8UbJ361W3cMzCEsGNKCyWKl
         b+5U2DYaQHtRfk9swMKcuTwhGodBzliD8ZMkWNLNd575DWvAoG1Os74jxh0IPDIufwOJ
         0z8oJJA7UsBSKRh3139PLHeeBFEOXE+BDRxFuvsveXyG6txNGGGA5p0B8SpUhCwDubSM
         f3q2xNy/6ipaBZwPyPXkParsd9cosFXeMFlAWNRwPViZDqLUW8dPjc+MD5Aoz2X/JwJq
         LMdnpRQMRtcVNU59GlP7XGGdgUJ/WPF0NScc4rGNJDgkgAnhEVX0LSHku/oEHCg2DPNS
         xQBQ==
X-Gm-Message-State: ANoB5plP3rKUPjPkpFaILH2wT4Ts+hjhoP6ZpRVK7GXGBj/h2BPDFceZ
        a8iDkq9EKd8p+fk4J+31uUHYByyMUfk4sToQNYo=
X-Google-Smtp-Source: AA0mqf7PeQ6MX4rXU0c5RBrAC8mWU0XIcPU5wXJ9ovfjUldkzuZzqBzDkJDKDyAUOkQSTG8CriEXwDPaJjIZfMoc63s=
X-Received: by 2002:a0d:cad7:0:b0:360:65a3:46c with SMTP id
 m206-20020a0dcad7000000b0036065a3046cmr1297350ywd.119.1670333751094; Tue, 06
 Dec 2022 05:35:51 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:a205:b0:314:d2a3:70a with HTTP; Tue, 6 Dec 2022
 05:35:50 -0800 (PST)
Reply-To: mr.abraham022@gmail.com
From:   "Mr.Abraham" <mrkojofofone01@gmail.com>
Date:   Tue, 6 Dec 2022 13:35:50 +0000
Message-ID: <CACJtp8s5dnnJ0WK9eKtMtoiSithTta4FV2iCzTtQdcgQsoKQrA@mail.gmail.com>
Subject: Hi
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

My Greeting, Did you receive the letter i sent to you. Please answer me.
Regard, Mr.Abraham
