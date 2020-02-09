Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 86A8915684E
	for <lists+linux-embedded@lfdr.de>; Sun,  9 Feb 2020 02:28:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727751AbgBIB2W (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Sat, 8 Feb 2020 20:28:22 -0500
Received: from mail01.vodafone.es ([217.130.24.71]:27901 "EHLO
        mail01.vodafone.es" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727740AbgBIB2W (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Sat, 8 Feb 2020 20:28:22 -0500
IronPort-SDR: 0ms+VyXKE5e0yr+c4kBGBL9AKnCaaz5Pxsx8v3AUuuBcO7xxk9B2ylY5F2Nr+JDXB/JzoLlwsp
 DWtj+UqiNE6w==
IronPort-PHdr: =?us-ascii?q?9a23=3AYyfyDxLFVd7E0AM+TtmcpTZWNBhigK39O0sv0r?=
 =?us-ascii?q?FitYgeKfTxwZ3uMQTl6Ol3ixeRBMOHsq4C1rqd6fGoGTRZp8rY6zZaKN0Efi?=
 =?us-ascii?q?RGoP1epxYnDs+BBB+zB9/RRAt+Iv5/UkR49WqwK0lfFZW2TVTTpnqv8WxaQU?=
 =?us-ascii?q?2nZkJ6KevvB4Hdkdm82fys9J3PeQVIgye2ba9vIBmsogjdq8YbjZFiJ6syxR?=
 =?us-ascii?q?fFvH9FcPlSyW90OF6fhRnx6tq+8ZJ57yhcp/ct/NNcXKvneKg1UaZWByk8PW?=
 =?us-ascii?q?Av483ruxjDTQ+R6XYZT24bjBlGDRXb4R/jRpv+vTf0ueR72CmBIM35Vqs0Vi?=
 =?us-ascii?q?i476dqUxDnliEKPCMk/W7Ni8xwiKVboA+9pxF63oXZbp2ZOOZ4c6jAe94RWG?=
 =?us-ascii?q?hPUdtLVyFZDI2yb5EPAfQCM+hFoIbyu1QAoACiBQSuGOzj1iNEimPo0aA8zu?=
 =?us-ascii?q?8vERvG3AslH98Wqnrbssn1O7kIUeuozKbIyjPDb/xL0jr68IjHbAwhru+WXb?=
 =?us-ascii?q?N+dsrRz0YvGhjegVWXtIPqJTKU1uMLs2eF9eZvSeWvi2s+pgx3vzOhxd8sh5?=
 =?us-ascii?q?HXio4IyF3I7zh1zYgpKdGiVkJ2bsSoHZVQuiycKoB4WNktQ3tytyY/0rAGvJ?=
 =?us-ascii?q?m7czUUx5k/3B7fbuCHc5CP4hL+SOadOTd4i2xheLK4nxuy9FKvyuz4Vsmuzl?=
 =?us-ascii?q?lKqjZJn9bWunAT0Bzc99KISvV6/kenxzmDzR7c6vpcLUA1k6rUNYIhz6Yump?=
 =?us-ascii?q?YOs0nPBDL6lUvqgKOMaEkp9fKk5urnb7n+o5+TLY50igXwMqQ0ncy/BPw1Mh?=
 =?us-ascii?q?AQUGiH5+u8zrPi/Ur/QLVFlfA5ia7Zv43AKsUaoa65BRFa3pw/5Ba4CjeqyM?=
 =?us-ascii?q?4YkmUfLFJZZBKHiJDkO1XPIPD+EPe+jE2gnylux//dILLuH4jCIWben7r6Y7?=
 =?us-ascii?q?Z95FBTyBApwdBc+Z1UELcBL+z3WkPrs9zYFBA5YESIxLPjCdNgxsYTXGiCDq?=
 =?us-ascii?q?OUPIvMvlKSoOEiOe+BYMkSojmuEfU94+/SiioBlEMQZ+GW2p0YICSgE+hrOV?=
 =?us-ascii?q?qeZ3Xsmd0KEWQisQ83Teisg1qHB219fXG3Cpox+jwhQL2hC4iLEpignLGbwy?=
 =?us-ascii?q?C9EbVcYWxPGFeKHDHjcIDSCKREUz6bPsI0ym9MbrOmUYJ0jRw=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2F5cgDRXj9emCMYgtlmHQEBAQkBEQU?=
 =?us-ascii?q?FAYF7AgGBPQKBVlINExKMZIZwgU0fg0OLaIEAgzOGCBOBZw0BAQEBATUCAQG?=
 =?us-ascii?q?EQIJGJDwCDQIDDQEBBQEBAQEBBQQBAQIQAQEBAQEICwsGKYVKQgEMAYFrIoN?=
 =?us-ascii?q?wIA85SkwBDgGDV4JLAQEzrlINDQKFHoJQBAqBCIEbI4E2AgEBjCEagUE/gSM?=
 =?us-ascii?q?hgisIAYIBgn8BEgFugkiCWQSNUBIhiT+YMIJEBHiVa4I4AQ+IEYQ1A4JYD4E?=
 =?us-ascii?q?Lgx2DCIFnhFKBfp9YhBJXgSBzcTMaI4IdgSBPGA2ON44rAkCBFxACT4Q7hja?=
 =?us-ascii?q?CMgEB?=
X-IPAS-Result: =?us-ascii?q?A2F5cgDRXj9emCMYgtlmHQEBAQkBEQUFAYF7AgGBPQKBV?=
 =?us-ascii?q?lINExKMZIZwgU0fg0OLaIEAgzOGCBOBZw0BAQEBATUCAQGEQIJGJDwCDQIDD?=
 =?us-ascii?q?QEBBQEBAQEBBQQBAQIQAQEBAQEICwsGKYVKQgEMAYFrIoNwIA85SkwBDgGDV?=
 =?us-ascii?q?4JLAQEzrlINDQKFHoJQBAqBCIEbI4E2AgEBjCEagUE/gSMhgisIAYIBgn8BE?=
 =?us-ascii?q?gFugkiCWQSNUBIhiT+YMIJEBHiVa4I4AQ+IEYQ1A4JYD4ELgx2DCIFnhFKBf?=
 =?us-ascii?q?p9YhBJXgSBzcTMaI4IdgSBPGA2ON44rAkCBFxACT4Q7hjaCMgEB?=
X-IronPort-AV: E=Sophos;i="5.70,419,1574118000"; 
   d="scan'208";a="315629460"
Received: from mailrel04.vodafone.es ([217.130.24.35])
  by mail01.vodafone.es with ESMTP; 09 Feb 2020 02:28:20 +0100
Received: (qmail 7881 invoked from network); 9 Feb 2020 00:49:06 -0000
Received: from unknown (HELO 192.168.1.163) (apamar@[217.217.179.17])
          (envelope-sender <peterwong@bodazone.com>)
          by mailrel04.vodafone.es (qmail-ldap-1.03) with SMTP
          for <linux-embedded@vger.kernel.org>; 9 Feb 2020 00:49:06 -0000
Date:   Sun, 9 Feb 2020 01:49:06 +0100 (CET)
From:   Peter Wong <peterwong@bodazone.com>
Reply-To: Peter Wong <peterwonghsbchk@gmail.com>
To:     linux-embedded@vger.kernel.org
Message-ID: <28920562.233537.1581209347192.JavaMail.cash@217.130.24.55>
Subject: Investment opportunity
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Sender: linux-embedded-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

Greetings,
Please check the attached email for a buisness proposal to explore.
Looking forward to hearing from you for more details.
Sincerely: Peter Wong




----------------------------------------------------
This email was sent by the shareware version of Postman Professional.

