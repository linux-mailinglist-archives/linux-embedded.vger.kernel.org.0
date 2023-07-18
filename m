Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 567D7757BB6
	for <lists+linux-embedded@lfdr.de>; Tue, 18 Jul 2023 14:25:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229870AbjGRMXU (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Tue, 18 Jul 2023 08:23:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbjGRMXS (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Tue, 18 Jul 2023 08:23:18 -0400
Received: from bat.birch.relay.mailchannels.net (bat.birch.relay.mailchannels.net [23.83.209.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4914E53
        for <linux-embedded@vger.kernel.org>; Tue, 18 Jul 2023 05:23:16 -0700 (PDT)
X-Sender-Id: 8xbl3cp958|x-authuser|peter@rustos.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
        by relay.mailchannels.net (Postfix) with ESMTP id 01BEB881896
        for <linux-embedded@vger.kernel.org>; Tue, 18 Jul 2023 12:23:15 +0000 (UTC)
Received: from rs-fra.serverhostgroup.com (unknown [127.0.0.6])
        (Authenticated sender: 8xbl3cp958)
        by relay.mailchannels.net (Postfix) with ESMTPA id 673F4880FCA
        for <linux-embedded@vger.kernel.org>; Tue, 18 Jul 2023 12:23:12 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1689682992; a=rsa-sha256;
        cv=none;
        b=GOaJqux/RW3rgOuHVh6FgXV9IIdezLjFE4/VZDmD87ldFww9NvTBUfFp+z6pF4knVIfuM+
        6e/BKx3kOZu5AdfEUfPrwPAQpXwDMsFQk+rcr1tq6tNE9xGZSRY84GTItrCHi/ULYijVed
        5Hzh8pkjjFcTyqEiRmBsj75yhp6XtM19jdx2ZNqt3ZJclP/KK8hsbxl3dGq1HpisjtomTm
        J+x/fOIgSYx5smw19cNEShTKUfVvG/3pNbxl19sIU31S4+QyL4I00qMnZ23Dn5VJArGfRH
        ynyr6D1Bku6rvOB9bv3Iv3fn0BcjKFzrr4g0DvtWVGzTT1PSmgYHkTRLo/LFSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
        s=arc-2022; t=1689682992;
        h=from:from:reply-to:subject:date:date:message-id:message-id:to:to:cc:
         mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:dkim-signature;
        bh=gDhdahGUdVHmw+S8u/VBEabDjiqhAaan8JXTLCIaRh4=;
        b=iu6G6wmzJxUKC/dQZKGaz6IZEMqVtrszo8S4tHBYV6rdMi3sPoPzdzw7t1jDz2FqLTvHHe
        hdRSXk8xUW3QJye2fMq8Mh2ooEuo1UXl3JJQSYfaGhoRJe/kz3sFQK6y7aCfIbZ1exaXkM
        PO6rtEPHKTfQwRf09UnkH0pDK1MA58OYoI3/uaXCIW9xFEJ2ng7MUatTAKYN5IJyouL38o
        39OAPW2jbAEF5yg0/NwfSwZhgrYcogXknN7hgZvWBX6URccG/e+gfzTzK5ptnj83/Q9cyh
        oq/9ze6l0pyBitQUtFsOv7S4H+VL6aVL8TrIkdctk7BUFyWTAjaWMoy0odMXDQ==
ARC-Authentication-Results: i=1;
        rspamd-7d9c4d5c9b-q99fx;
        auth=pass smtp.auth=8xbl3cp958 smtp.mailfrom=peter@rustos.org
X-Sender-Id: 8xbl3cp958|x-authuser|peter@rustos.org
X-MC-Relay: Junk
X-MailChannels-SenderId: 8xbl3cp958|x-authuser|peter@rustos.org
X-MailChannels-Auth-Id: 8xbl3cp958
X-Blushing-Arithmetic: 688e717f74a92d53_1689682994264_4172794307
X-MC-Loop-Signature: 1689682994264:1138906425
X-MC-Ingress-Time: 1689682994263
Received: from rs-fra.serverhostgroup.com (rs-fra.serverhostgroup.com
 [45.79.250.72])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384)
        by 100.126.30.5 (trex/6.9.1);
        Tue, 18 Jul 2023 12:23:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=rustos.org;
        s=default; h=To:Message-Id:Date:Mime-Version:From:Content-Transfer-Encoding:
        Content-Type:Sender:Reply-To:Subject:Cc:Content-ID:Content-Description:
        Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
        In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=gDhdahGUdVHmw+S8u/VBEabDjiqhAaan8JXTLCIaRh4=; b=hMbxPxUkfoaTaJSJO94tZ4drcT
        ZTs0EVn4FaXN2Aua9JjU+zuKXf0Nmwsi8VmBUg0z6SkiB+X7XVQlYbFP3qyITwVktoKIjaxGBm57D
        +KWXsxHFU4xiIPeYT0IGoZ0PMGftUn37DfiAo5YNAo2se/XXkINLg+x9xbwrj9jEYn88ma2hGn09s
        0BGc3WvE7Ix6J56XLe2z+8jafqua/3zYlFNRusAk5zr6eMMHpOP3dT8t4CZHRbhFxzwuJ1zJe42MT
        e0+3GTOc6YnVP7Ac9BjWbC2f6E0VWnrYtI5Gv4ZOslzjA/gu/cFfNqaAjQ2Wj1RtMdlG2n2zYOmSA
        7BNZeRdA==;
Received: from 77.241.129.16.mobile.3.dk ([77.241.129.16]:56862 helo=smtpclient.apple)
        by rs-fra.serverhostgroup.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.96)
        (envelope-from <peter@rustos.org>)
        id 1qLjjS-0004pr-00
        for linux-embedded@vger.kernel.org;
        Tue, 18 Jul 2023 14:23:09 +0200
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
From:   "peter@rustos.org" <peter@rustos.org>
Mime-Version: 1.0 (1.0)
Date:   Tue, 18 Jul 2023 14:22:59 +0200
Message-Id: <7C06CF3A-C177-417D-B9B6-1189EDDCF66E@rustos.org>
To:     linux-embedded@vger.kernel.org
X-Mailer: iPhone Mail (21A5277j)
X-AuthUser: peter@rustos.org
X-Spam-Status: No, score=2.4 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,MISSING_SUBJECT,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

Help
