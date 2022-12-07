Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C38006457F1
	for <lists+linux-embedded@lfdr.de>; Wed,  7 Dec 2022 11:35:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbiLGKeG (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Wed, 7 Dec 2022 05:34:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229694AbiLGKeD (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Wed, 7 Dec 2022 05:34:03 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 934BA2654C
        for <linux-embedded@vger.kernel.org>; Wed,  7 Dec 2022 02:34:02 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id o5so27449608wrm.1
        for <linux-embedded@vger.kernel.org>; Wed, 07 Dec 2022 02:34:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2jC2qunKKFsnR9Q6KbVKNlsWYRFq6RV5DR+wfv0ecN8=;
        b=a72f4gegtBNx1hsvDY2mxMuj82D/pkTg1v6hU70SO2CPKtFBfMpIFZR+b1Rzl7NKDD
         UOA30bLR0cOOlE951ckYX5iYM02L0hmKSwnntCsIUgvZLtuP4QOU+gWj4ZTSd1/yRfKD
         dYd//97NLktnYS/+WlM0Ya9ohseQBxgwywXN/v5RHMojI39Rke46n9sQyKk0p2nkhJQU
         3jo2EAByqvMTeDVD4M01aymASleIzrNQO1rfrpBKVkDOGCD6FwImSvMH/5WPx19ejElK
         6heL5y8OH7Ro/X7FP6qH9TkM1R0YlL3TOqu36iT1yLUTCe4b0EfFA+8ytJtCbmhsz3am
         Wc7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2jC2qunKKFsnR9Q6KbVKNlsWYRFq6RV5DR+wfv0ecN8=;
        b=Km2umllrKhcs6Y9VY/NltrM0eLDhVQpRdOIq51d5KSLE4cTZSjgihP25op2LuZz7fZ
         5T0FhWNJhA5oE/CrI4h6U78t0czW8XNosGbzOYotkTQMC4QQyqLECj2aqv0Tn6+VxGsL
         YUCZ1aF3JGm0cyzh4lgnIuWvlheG6T3/vrlBfhNqdLA8otlPQ3jPYAFPGgLKx7nIF4SN
         nUXs2kGQz0Lljx+ylMtQIW1/DkOeVx9gSwEQj/Q5ww9ORnTjQAX4sw2NsCkYZORFNvnD
         0/aIw5LhY9wy56724OOl/+sTKM5wd+cVpoesdMO8EVPwIFt8IvLJdyv6m2SDpPIyj1to
         Ye1A==
X-Gm-Message-State: ANoB5pl4jiYZbawhEECoG5ZmIm66MVpgeHicD0VDnLA0OWJhb5uITFAl
        GU2dKSFB/9BTUs0d5Wx0zqvHEGmvaEfBLJvV19VGTbLf/Gl3oQ==
X-Google-Smtp-Source: AA0mqf7PYDadOl9nFvNGZhpCI89uTC4vgjkvOZsKAeLpIy+UvlS9gkhA3/0KWM5hTfR3+Da9P5lM4pE48Z88GxX5ytE=
X-Received: by 2002:adf:f789:0:b0:242:129b:9cb9 with SMTP id
 q9-20020adff789000000b00242129b9cb9mr23789829wrp.373.1670409240906; Wed, 07
 Dec 2022 02:34:00 -0800 (PST)
MIME-Version: 1.0
From:   Leon Schmidt <leonjohannesschmidt@gmail.com>
Date:   Wed, 7 Dec 2022 11:33:49 +0100
Message-ID: <CAO+mVXbPXUhzqA-yhne85EK2jc7vK_UCNhZLEeQgsJV7R3W2FQ@mail.gmail.com>
Subject: 
To:     linux-embedded@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,TVD_SPACE_RATIO
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

        auth 14372317 subscribe linux-embedded leonjohannesschmidt@gmail.com
