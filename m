Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 636C461DA74
	for <lists+linux-embedded@lfdr.de>; Sat,  5 Nov 2022 13:44:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbiKEMmu (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Sat, 5 Nov 2022 08:42:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229486AbiKEMms (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Sat, 5 Nov 2022 08:42:48 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 255AC18369
        for <linux-embedded@vger.kernel.org>; Sat,  5 Nov 2022 05:42:47 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id e129so6570250pgc.9
        for <linux-embedded@vger.kernel.org>; Sat, 05 Nov 2022 05:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=c8XA1N0uaxkLO/wKHErNWHaSuu64k5Pjb5u9dmcZrOc=;
        b=dRY7cM4kOS7dvhZ1U0BjG/XeLild/j0mXtgfm9IukbyzdTxvxrqajkI7Zx+n/kBuQO
         HO4rhCIf6OLkJiTtS5OgV19w2jLxyLK8VChTot0RYrTXD+qiSnmml83cByCKJ9S3wg8R
         /dF6ysy18Ru67tC7ohhdEbaVCr2CEG+h4v9xIz3mq8zA3ab8fdxE4AEdt7+1+KI03nIs
         bX6E4/XOVfg0Yh96IPr32K19/flofQe/W5MH8oEri6RBYsAAbTHFw+x41w0NCY4/grZx
         znpI50mYis4iiAaW13r2rq7A5nprj9zwFvk7HEw0pGepcC6+hPsJIWszGy3gjGTBj44P
         6Tig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c8XA1N0uaxkLO/wKHErNWHaSuu64k5Pjb5u9dmcZrOc=;
        b=D7A4rQl4M2x+F9ehzzSuYQDy5yPMuEOJwkCGH2ScXpkfJ9/STF0DJ5PKf48ZpP2Nyf
         NJAfjvcistQu2HaWs81MXwZzFzSw9mYN5fjbI+ub4FLlcMfeDqLaoETQeYfI2zLGJNgM
         3NTphZz3hX0xHc8ERkNy2mWIOtnQHA0lrCiHIzN2xxDziYkn0yffduAiYTCtyiRd0dew
         iXOoUE7rw1Ez5WAS6Osz3LCFmrNibTkVWkWM3aIoZ8pO3eZZjyHqktFFKP72vl1iT7fu
         watL83kFZSuW+Arv1I39+HnNwzMdGUtRB+X+xYNFeOeAj+bHhHSgN7i3cpTs+nuu+uFJ
         28hA==
X-Gm-Message-State: ACrzQf18ulAPBtmFB3i7aSEf7Gqpo5dlaG78EG/tD6/X/ff3ruahxObf
        m6/DBmU0M4WkJ9n9wWdxwcOC8vqWWRLZ6FtmnRs=
X-Google-Smtp-Source: AMsMyM59x+6gES9BwXVXW/ARU4ioBhiM5OVMchhDGDuCvOy5iyyb/SYb/kChsB6HunFGwhWeJcIBvxJNRvTP2j+H5jo=
X-Received: by 2002:a63:6a87:0:b0:46f:8fcc:de1a with SMTP id
 f129-20020a636a87000000b0046f8fccde1amr30838287pgc.429.1667652166651; Sat, 05
 Nov 2022 05:42:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a20:548c:b0:a4:6bf8:6067 with HTTP; Sat, 5 Nov 2022
 05:42:46 -0700 (PDT)
Reply-To: stefanopessia755@hotmail.com
From:   Stefano Pessina <dkunitedfrontselfhelpgroup@gmail.com>
Date:   Sat, 5 Nov 2022 15:42:46 +0300
Message-ID: <CAJ0kvzUw03tJJrSho5fC=_DchstDCWHAgRTXQorzbNvNdGsg3w@mail.gmail.com>
Subject: Geldspende
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

--=20
Die Summe von 500.000,00 =E2=82=AC wurde Ihnen von STEFANO PESSINA gespende=
t.
Bitte kontaktieren Sie uns f=C3=BCr weitere Informationen =C3=BCber
stefanopessia755@hotmail.com
