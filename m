Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C610757336
	for <lists+linux-embedded@lfdr.de>; Tue, 18 Jul 2023 07:33:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230236AbjGRFbZ (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Tue, 18 Jul 2023 01:31:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230178AbjGRFbO (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Tue, 18 Jul 2023 01:31:14 -0400
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.221])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD90E1722
        for <linux-embedded@vger.kernel.org>; Mon, 17 Jul 2023 22:30:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1689658219; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=Fw+MIf9HCF7rsJXlfG1/S9o+7yYuaf1y5/NRtOm6F2QWC6mz9DV13wiKF+afOhmfIB
    Ko2OYvzj2gCssHFGCBjle8IGNKombT6Q8ZU25qNugyc+z9T2a7CGa2D7b+uhxvgLrCso
    A5F9phVWBnm7b8gfDu6KfcCalSf6kD40S3yr3q8xuUhxogLhgTdrAEAl0GpgsxxmtLqw
    eAoyr4wQ0iRUQsw8Hu4K1AiMbh/WV+2CSpiWoFs0pS+9QIz6pEw5ihEvXTKl1illDbbY
    n48E3XWLWzLFk+eDE/JZfmdt2mfGTveBlDCtFN4sQ3oDNtH+GjybXtCGXl5cJck2fCxG
    1WFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1689658219;
    s=strato-dkim-0002; d=strato.com;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=Uzbm9LCQ3AbwNAWWn2IxjK6xkwXQ2dMcq63MDb20m4Q=;
    b=QdPEUx86fbowTS7R1qF0fRUbMo7X/Tba1Q0ok9zcTg7KY/zDLiYsLLOrq2f00C7W0/
    So3Ndrwd9nj/UcsPu5qYmu3y579tgEjSPInSrF/GrP0yTY6vMfH8qHDnFKstT6Nd8u8p
    +6rMP6m5neLkiUOliQPkmo/GyrsA+RdFBY6ZqibJvEz+0WSvrdcNbIGXIrdllTmgN8VV
    e1U50ZvEP7n8/UO2WoG4a0l9F2PubukupFlySKd7LiTnF3f49MYSmpJVaUJSLkKyUhK4
    KXMDzn8OnK2yVJuNsjVPct3+PkGa0AcFp16MZCcrFWmG8Kb7bVwUVCN5kcY6ObRmtDAA
    UHRQ==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1689658219;
    s=strato-dkim-0002; d=tomerius.de;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=Uzbm9LCQ3AbwNAWWn2IxjK6xkwXQ2dMcq63MDb20m4Q=;
    b=ovueoMdaDkoE/f2FXu1rttU6Q9VDJZTpsyfm2j6ta8wYmCPnYeANZvHfB/yxO8q6o7
    L0xQ2Dxroa/3eoVzKrDCm4hybg0HYKPph4sfbz6lRYKhOHkcIjnjJZul/tdsza8XJh3Y
    yZ7XPqV/avFaMx+NLNn9F8PY1lXJOKKFsJkUWns2NwW82Cj6pqhNblDFU8Vzou3UiG7j
    isJBDluTHV3rMHSSvUi+4DzQi8uLPTCdBJdW5ziWWgtkXlnupcLWuLyyyuJniXtHm5cc
    b3IzJePd1B1ZutdWfbZlzXGX8w0uuYDBKcAS2kNDv1OGB9KUKNpJ8RH5YrZ9MzjrT2mT
    f5kQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1689658219;
    s=strato-dkim-0003; d=tomerius.de;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=Uzbm9LCQ3AbwNAWWn2IxjK6xkwXQ2dMcq63MDb20m4Q=;
    b=NWinPmxkVOItrcKhWm/gWB2FU1F9m/spuDUxT9idppi2fobt6JeVfF5MvezAVLGUbm
    ZhQe9x8uOzyYQut9Z6AQ==
X-RZG-AUTH: ":J20NVVSndvp4466vFhCXUxk5AzpkHwfKmUFBoZWB6MoGGjIYlcL1veuiArSdmAK/Sg=="
Received: from jukebox.tomerius.de
    by smtp.strato.de (RZmta 49.6.0 DYNA|AUTH)
    with ESMTPSA id 00c35az6I5UJoHZ
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Tue, 18 Jul 2023 07:30:19 +0200 (CEST)
Received: from [192.168.3.20] (helo=tomerius.de)
        by jukebox.tomerius.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <kai@tomerius.de>)
        id 1qLdHv-0001pS-3A; Tue, 18 Jul 2023 07:30:19 +0200
Date:   Tue, 18 Jul 2023 07:30:17 +0200
From:   Kai Tomerius <kai@tomerius.de>
To:     "Alan C. Assis" <acassis@gmail.com>
Cc:     linux-embedded@vger.kernel.org
Subject: Re: File system robustness
Message-ID: <20230718053017.GB6042@tomerius.de>
References: <20230717075035.GA9549@tomerius.de>
 <CAG4Y6eTU=WsTaSowjkKT-snuvZwqWqnH3cdgGoCkToH02qEkgg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAG4Y6eTU=WsTaSowjkKT-snuvZwqWqnH3cdgGoCkToH02qEkgg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

Hi Alan,

thx a lot.

I should have mentioned that I'll have a large NAND flash, so ext4
might still be the file system of choice. The other ones you mentioned
are interesting to consider, but seem to be more fitting for a smaller
NOR flash.

Regards
Kai



On Mon, Jul 17, 2023 at 10:50:50AM -0300, Alan C. Assis wrote:
> Hi Kai,
> 
> On 7/17/23, Kai Tomerius <kai@tomerius.de> wrote:
> > Hi,
> >
> > let's suppose an embedded system with a read-only squashfs root file
> > system, and a writable ext4 data partition with data=journal.
> > Furthermore, the data partition shall be protected with dm-integrity.
> >
> > Normally, I'd umount the data partition while shutting down the
> > system. There might be cases though where power is cut. In such a
> > case, there'll be ext4 recoveries, which is ok.
> >
> > How robust would such a setup be? Are there chances that the ext4
> > requires a fsck? What might happen if fsck is not run, ever? Is there
> > a chance that the data partition can't be mounted at all? How often
> > might that happen?
> >
> 
> Please take a look at this document:
> 
> https://elinux.org/images/0/02/Filesystem_Considerations_for_Embedded_Devices.pdf
> 
> In general EXT4 is fine, but it has some limitation, more info here:
> https://opensource.com/article/18/4/ext4-filesystem
> 
> I think Linux users suffer from the same problem we have with NuttX (a
> Linux-like RTOS): which FS to use?
> 
> So for deep embedded systems running NuttX I follow this logic:
> 
> I need better performance and wear leveling, but I don't need to worry
> about power loss: I choose SmartFS
> 
> I need good performance, wear leveling and some power loss protection: SPIFFS
> 
> I need good performance, wear leveling and good protection for
> frequent power loss: LittleFS
> 
> In a NuttShell: There is no FS that 100% meets all user needs, select
> the FS that meets your core needs and do lots of field testing to
> confirm it works as expected.
> 
> BR,
> 
> Alan
