Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52A837E2379
	for <lists+linux-embedded@lfdr.de>; Mon,  6 Nov 2023 14:12:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232027AbjKFNKZ (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Mon, 6 Nov 2023 08:10:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231865AbjKFNKX (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Mon, 6 Nov 2023 08:10:23 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C2D1BD
        for <linux-embedded@vger.kernel.org>; Mon,  6 Nov 2023 05:10:21 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84F7CC433C7;
        Mon,  6 Nov 2023 13:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1699276220;
        bh=Fp3jKmNqjf+DoLNCaJsNPhAt/c5ime8ePk1o28XWcbI=;
        h=Date:From:To:Subject:From;
        b=uMVfjvtWWE6sRwdvsOJ08qbIyuDYyJoghq54KBzGmK7XFFNv2DoHEYmzeRuuwOfW7
         Jrzvjin4B+cgCZDiKVUYy1isIiChVkzpuRgn9s3aSIZs+Tvarb/YWWnoTUz3uPzI6q
         4odWrYpkPJLVzAjb1qluyxcoHqwH8CaUna8e1j3g=
Date:   Mon, 6 Nov 2023 08:10:19 -0500
From:   Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To:     linux-embedded@vger.kernel.org
Subject: PSA: migrating linux-embedded to new vger infrastructure
Message-ID: <20231106-godlike-pink-griffin-912ae6@nitro>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_40,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

Good day!

I plan to migrate the linux-embedded@vger.kernel.org list to the new
infrastructure this week. We're still doing it list-by-list to make sure that
we don't run into scaling issues with the new infra.

The migration will be performed live and should not require any downtime.
There will be no changes to how anyone interacts with the list after
migration is completed, so no action is required on anyone's part.

Please let me know if you have any concerns.

Best wishes,
-K
