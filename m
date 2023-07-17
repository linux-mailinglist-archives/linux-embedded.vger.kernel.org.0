Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84A4475657C
	for <lists+linux-embedded@lfdr.de>; Mon, 17 Jul 2023 15:52:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229895AbjGQNuy (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Mon, 17 Jul 2023 09:50:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229541AbjGQNux (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Mon, 17 Jul 2023 09:50:53 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51BC18F
        for <linux-embedded@vger.kernel.org>; Mon, 17 Jul 2023 06:50:52 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3a36b309524so3571989b6e.3
        for <linux-embedded@vger.kernel.org>; Mon, 17 Jul 2023 06:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689601851; x=1692193851;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oYHuuSfNjJZcBmM6jc7gdvXI0YIA2XY0RjFUm7p2/wA=;
        b=olnVw8DGB1/LhkAuPtgqcvOSAnA1J5PT6AeaEfcyQyzNSx4+fQTgTuL1P2Hsq6FkBY
         21tvgTqw2QpnWtDVvK1ioGVfgAHN5BUR4Z5+aDNGx5U5XDFHxVCgG14ynOJa5dGAYmwA
         ViRDNt8RjoXSfkvNAyMIoHwtChajRna9E2bFpgLtCTcNNQHz/DPXb4eNQkO1MsCCSQG5
         ZefBQOu0ytMc6pCm3NfqLJCPt2Zso+LU+4o2I4i0KKIeZMBsjo8eK0EvqMTOgD8yT2NF
         lZRHZBkef5+UsS7R+SuaG0dC15/CjkU/AsuhnT63jNP+DZoNtkJ52yA8OO/3Elsi29Vw
         Fi3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689601851; x=1692193851;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oYHuuSfNjJZcBmM6jc7gdvXI0YIA2XY0RjFUm7p2/wA=;
        b=RolBYfY95SxdyLiPGADmdcw8v3H1hZA2x8/ZAy40HiQcSh4o7/9LN5cLWvIw8YhsWx
         VmhcUE0cjRyZO9bukTNsn+nNyd6S/GLU6RBlTyRrdZosZA/K5JvXBlLEy1S+LW/Bm7Eq
         4zjVMy9zfnWjyOW+W+mOaCMsr8TKn9c+V0dA9PYSk3keiRXMvZyk79w0NhCiwRv9xYbX
         XGANNpoiDCVHyhH5kZ99G5t9X3RwGkDbJU8vzvNKdSjSAK6L43cesLaWvP5PXkYK6+TC
         JRidQU0OxjMGN2LB4Zy+tOVnX9XiW230Ocihtd2s+VG1fBxunqXfR8ROY1yEi2b8qfO8
         uP6g==
X-Gm-Message-State: ABy/qLauXbaTw1iVf4CFx52vrUDB3r5SW4hy8NP57WDx3lmZoE75Hp/n
        wHcWiUcOyzVHy0L72OwZ6AT9bVZbwPwOASCcnjaqb1wrmGY=
X-Google-Smtp-Source: APBJJlEVeG7brQhjC431uUA6wyrkV6dbwRAC+efWEkTP43ymMbsQw1BuDq5lMGXNqL5eGvbcunlWfp1VV0C2efA8mOo=
X-Received: by 2002:a05:6358:5922:b0:132:db25:bbfc with SMTP id
 g34-20020a056358592200b00132db25bbfcmr10650047rwf.2.1689601851342; Mon, 17
 Jul 2023 06:50:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7108:76a4:b0:31a:16:342c with HTTP; Mon, 17 Jul 2023
 06:50:50 -0700 (PDT)
In-Reply-To: <20230717075035.GA9549@tomerius.de>
References: <20230717075035.GA9549@tomerius.de>
From:   "Alan C. Assis" <acassis@gmail.com>
Date:   Mon, 17 Jul 2023 10:50:50 -0300
Message-ID: <CAG4Y6eTU=WsTaSowjkKT-snuvZwqWqnH3cdgGoCkToH02qEkgg@mail.gmail.com>
Subject: Re: File system robustness
To:     Kai Tomerius <kai@tomerius.de>
Cc:     linux-embedded@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

Hi Kai,

On 7/17/23, Kai Tomerius <kai@tomerius.de> wrote:
> Hi,
>
> let's suppose an embedded system with a read-only squashfs root file
> system, and a writable ext4 data partition with data=journal.
> Furthermore, the data partition shall be protected with dm-integrity.
>
> Normally, I'd umount the data partition while shutting down the
> system. There might be cases though where power is cut. In such a
> case, there'll be ext4 recoveries, which is ok.
>
> How robust would such a setup be? Are there chances that the ext4
> requires a fsck? What might happen if fsck is not run, ever? Is there
> a chance that the data partition can't be mounted at all? How often
> might that happen?
>

Please take a look at this document:

https://elinux.org/images/0/02/Filesystem_Considerations_for_Embedded_Devices.pdf

In general EXT4 is fine, but it has some limitation, more info here:
https://opensource.com/article/18/4/ext4-filesystem

I think Linux users suffer from the same problem we have with NuttX (a
Linux-like RTOS): which FS to use?

So for deep embedded systems running NuttX I follow this logic:

I need better performance and wear leveling, but I don't need to worry
about power loss: I choose SmartFS

I need good performance, wear leveling and some power loss protection: SPIFFS

I need good performance, wear leveling and good protection for
frequent power loss: LittleFS

In a NuttShell: There is no FS that 100% meets all user needs, select
the FS that meets your core needs and do lots of field testing to
confirm it works as expected.

BR,

Alan
