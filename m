Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A187755DA0
	for <lists+linux-embedded@lfdr.de>; Mon, 17 Jul 2023 09:58:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230307AbjGQH4s (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Mon, 17 Jul 2023 03:56:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231129AbjGQH4r (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Mon, 17 Jul 2023 03:56:47 -0400
X-Greylist: delayed 360 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 17 Jul 2023 00:56:40 PDT
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D8C493
        for <linux-embedded@vger.kernel.org>; Mon, 17 Jul 2023 00:56:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1689580237; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=TKA/tgYTZknutKptGjTBoTuiENCayXgD+oCjzwsXl06xLD5hpIVM6hgpiG/RvgsCCn
    aI6u+LvwVYYlK1nMhztkV46YcAztkkrmUlRwiW6+UjOhUEliY7UrLhv1ri0k00MmRwKj
    hmeTDr7SMvYNGlIjC+nXhS+96pJugab/LLKJt09gSu6WY2fCw4byWLWQfPNjP/bgkM0v
    gjG3/64eA7BjCt7wonJsiaGK6NRBNAjEK38vNYzSCZkG6qhrHZUBE94fZB9gbsZQcuqg
    ygVt8r+9gWjZS15vVaLOVdhaaXtTBzmLOn3zyU4bpv45Xqo6CeXNxjmVMiGAppiTJ+6H
    HFkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1689580237;
    s=strato-dkim-0002; d=strato.com;
    h=Message-ID:Subject:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=lIR3xwxMCEbEIXCo0mnaKyPfWft3m+vesaFc88Qi4tg=;
    b=nl+xN2rxOGnNNUmuXZkg73mv+75BYcKUght70hPUYFtoU441Y5eC0LicLVxPBTkbGV
    TTlUgB2+eRHENfUj0lUkJFmIGFygGm2uyokT9rZhyvZciJo1nJgQybi43QrYsrKZz8Db
    mi4hQE3JZEP89yXC1d2tEIJJ+dWFB0KqDmt4UG/IXaAXoLy33LNPyvrz5E2mgvs/XZJg
    fw9pqAZFKLht70BONVXKqa1VIVTj7fdMP9ocwEqTdc4XSGU4U+y628GNH7DJxwbKbmh9
    heIV13TEN5C5Y3s5V49DRrA1qSpJtxOQn7QcvgzOfISI1ckVhx87UZpogMSNYzw17V+V
    FOnA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1689580237;
    s=strato-dkim-0002; d=tomerius.de;
    h=Message-ID:Subject:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=lIR3xwxMCEbEIXCo0mnaKyPfWft3m+vesaFc88Qi4tg=;
    b=E/qg4gF4lMqfcAh+VZeFuSrSIa7VbRQ665AxdvHw6eH0DxGgrI/jsox/LhR2+Dlh4N
    vWOJeOy1Z9KA7ZJFupZHG7UlD2GZHVSLp8sb1U3q2OnXZG1xJTmUGEZJPfbmmWnaCZkl
    PthCN5ZLvTJubKTzOFGzY40LU4ipOVPVya8JGt1szd6o+ZQSC3kfQJE/XjxhMAcaZj4P
    DFwupgAIyu3zQxf8SBoKWCqJz2hrZvcOlLMzPwz14AyE/acE86q2JmnVy62+FiBnTMNB
    iWmtA2I9WvD19CZrPvml2CNQQWzw64iWBZ3EEcWnOzzMutE2AMBWvdvT5WIYvCepf3BG
    2Jgw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1689580237;
    s=strato-dkim-0003; d=tomerius.de;
    h=Message-ID:Subject:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=lIR3xwxMCEbEIXCo0mnaKyPfWft3m+vesaFc88Qi4tg=;
    b=Nc3L0DS+UR6fsCn3rXFUedgNCArI4hK2M+bQCR9j3YH0FL3YU7NuiPQcM+QuqhZWO3
    96DjZ2mu2f3iBIiPzUAA==
X-RZG-AUTH: ":J20NVVSndvp4466vFhCXUxk5AzpkHwfKmUFBoZWB6MoGGjIYlcL1veuiArSdmAK/Sg=="
Received: from jukebox.tomerius.de
    by smtp.strato.de (RZmta 49.6.0 DYNA|AUTH)
    with ESMTPSA id 00c35az6H7obkZ1
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate)
    for <linux-embedded@vger.kernel.org>;
    Mon, 17 Jul 2023 09:50:37 +0200 (CEST)
Received: from [192.168.3.20] (helo=tomerius.de)
        by jukebox.tomerius.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <kai@tomerius.de>)
        id 1qLJ08-0003S3-Kj
        for linux-embedded@vger.kernel.org; Mon, 17 Jul 2023 09:50:36 +0200
Date:   Mon, 17 Jul 2023 09:50:35 +0200
From:   Kai Tomerius <kai@tomerius.de>
To:     linux-embedded@vger.kernel.org
Subject: File system robustness
Message-ID: <20230717075035.GA9549@tomerius.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_PASS,T_SCC_BODY_TEXT_LINE,T_SPF_TEMPERROR autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

Hi,

let's suppose an embedded system with a read-only squashfs root file
system, and a writable ext4 data partition with data=journal.
Furthermore, the data partition shall be protected with dm-integrity.

Normally, I'd umount the data partition while shutting down the
system. There might be cases though where power is cut. In such a
case, there'll be ext4 recoveries, which is ok.

How robust would such a setup be? Are there chances that the ext4
requires a fsck? What might happen if fsck is not run, ever? Is there
a chance that the data partition can't be mounted at all? How often
might that happen?

Thx
regards
Kai
