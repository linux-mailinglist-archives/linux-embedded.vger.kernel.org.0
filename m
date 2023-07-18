Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCC7F757ACB
	for <lists+linux-embedded@lfdr.de>; Tue, 18 Jul 2023 13:46:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231299AbjGRLoK (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Tue, 18 Jul 2023 07:44:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231951AbjGRLnn (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Tue, 18 Jul 2023 07:43:43 -0400
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 555E0170B
        for <linux-embedded@vger.kernel.org>; Tue, 18 Jul 2023 04:43:16 -0700 (PDT)
Received: by mail-il1-x12c.google.com with SMTP id e9e14a558f8ab-34896a1574dso3525315ab.0
        for <linux-embedded@vger.kernel.org>; Tue, 18 Jul 2023 04:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689680595; x=1692272595;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lOhZhbAzGAd1IFsBd3dZUzu7+64Q1dT5pYoavkzps1w=;
        b=DSY6REcLv6GELqcsI1TcDH+DY15RDr1pHXXzOVffdP59D5/UasGu8+j0Q2TP+1IzX0
         MUwFS9HdnOzKLomgBodTDdVEwAt/ZPOpspX3qjOE7yRRaCOzmAzCEpfeAe+IPAYkw8T7
         SKAvtGWRbJIEOPFMUi7EbhAf0t9x+pdc+z5zWcRenXm3y6Vy4c9jdbml40/bJmSOB1/4
         1i78BpcDLkewvnLQ1Gll4TBonZXMs45OPOyvxJjrnUc10qPnjD8T4AWLrlPtCGUN+Kr2
         Ui1KvHNWAYxWV+1JcpqxT0AohcwvGtcrYXFF3P87aTeO2Dtxa5C5IoiFG0BnXrUZYaId
         bvCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689680595; x=1692272595;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lOhZhbAzGAd1IFsBd3dZUzu7+64Q1dT5pYoavkzps1w=;
        b=ba5yU4VeULAwScZbjmzLthUwDXYF6gWK8MHgjuVRhXhCwlhA8xXvtwvGjlygw7mkA7
         1fq2xKrlyFkHTq4s3z+E3HpSAQlwCGIGkvVbILWp4oQjcSssBMPloY+ybHugcHsoyi6Z
         tZOhb9cbWhrOwPMBf2CmJQq0VHT7f735+dQ/OdUbZAEokp2IvBK3b46sQ7XoxsM111be
         jHGHv33CzpGbfGG+wVEbfxWJ61iv1kfbgsCYLWpGOu4cI7Bjj0x2mgrxsWCEtG9IG5GY
         Bm4Qt/GeiKAKbBpFKYOFO3x5rXi6/4SlSuDGazwJH6QRRQtkc/YuqjSMbcr9YRextZhJ
         0E4A==
X-Gm-Message-State: ABy/qLbyS0x6jNDdZBj6PQT/In3G5RFt+4xfIP98Ng8131mualxSxdeA
        f49hgTQnb2iaj++hXcxFX3TVVnpqRV3kvuYV0k6Mrnxu8w==
X-Google-Smtp-Source: APBJJlHe/o0QoVRpRYHHd3pFPQRWY7hqJVXNKv6O+EPSkc4q5IcFJ0iUkt2vXtvGmDyzgE++BicWwRE7btAjs6wDNq4=
X-Received: by 2002:a05:6e02:20ca:b0:346:6550:d30 with SMTP id
 10-20020a056e0220ca00b0034665500d30mr2436451ilq.20.1689680594885; Tue, 18 Jul
 2023 04:43:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230717075035.GA9549@tomerius.de> <CAG4Y6eTU=WsTaSowjkKT-snuvZwqWqnH3cdgGoCkToH02qEkgg@mail.gmail.com>
 <20230718053017.GB6042@tomerius.de>
In-Reply-To: <20230718053017.GB6042@tomerius.de>
From:   =?UTF-8?Q?Bj=C3=B8rn_Forsman?= <bjorn.forsman@gmail.com>
Date:   Tue, 18 Jul 2023 13:43:02 +0200
Message-ID: <CAEYzJUGC8Yj1dQGsLADT+pB-mkac0TAC-typAORtX7SQ1kVt+g@mail.gmail.com>
Subject: Re: File system robustness
To:     Kai Tomerius <kai@tomerius.de>
Cc:     "Alan C. Assis" <acassis@gmail.com>, linux-embedded@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

On Tue, 18 Jul 2023 at 08:03, Kai Tomerius <kai@tomerius.de> wrote:
> I should have mentioned that I'll have a large NAND flash, so ext4
> might still be the file system of choice. The other ones you mentioned
> are interesting to consider, but seem to be more fitting for a smaller
> NOR flash.

If you mean raw NAND flash I would think UBIFS is still the way to go?
(It's been several years since I was into embedded Linux systems.)

https://elinux.org/images/0/02/Filesystem_Considerations_for_Embedded_Devic=
es.pdf
is focused on eMMC/SD Cards, which have built-in controllers that
enable them to present a block device interface, which is very unlike
what raw NAND devices have.

Please see https://www.kernel.org/doc/html/latest/filesystems/ubifs.html
for more info.

Regards,
Bj=C3=B8rn
