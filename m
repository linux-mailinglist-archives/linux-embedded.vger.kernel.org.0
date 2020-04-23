Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E5D51B5E8D
	for <lists+linux-embedded@lfdr.de>; Thu, 23 Apr 2020 17:03:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728955AbgDWPDj convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-embedded@lfdr.de>);
        Thu, 23 Apr 2020 11:03:39 -0400
Received: from mail01.bih.net.ba ([80.65.86.242]:22155 "EHLO mail01.bih.net.ba"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728551AbgDWPDi (ORCPT <rfc822;linux-embedded@vger.kernel.org>);
        Thu, 23 Apr 2020 11:03:38 -0400
X-Greylist: delayed 572 seconds by postgrey-1.27 at vger.kernel.org; Thu, 23 Apr 2020 11:03:36 EDT
IronPort-PHdr: =?us-ascii?q?9a23=3AYeGPMhPMwUK30B4RSR8l6mtUPXoX/o7sNwtQ0KIM?=
 =?us-ascii?q?zox0KfXzo8bcNUDSrc9gkEXOFd2Cra4d1qyK4uu+BiQp2tWoiDg6aptCVhsI24?=
 =?us-ascii?q?09vjcLJ4q7M3D9N+PgdCcgHc5PBxdP9nC/NlVJSo6lPwWB6nK94iQPFRrhKAF7?=
 =?us-ascii?q?Ovr6GpLIj8Swyuu+54Dfbx9HiTagYb5+Nhq7oAHeusQXg4ZpN7o8xAbOrnZUYe?=
 =?us-ascii?q?pd2HlmJUiUnxby58ew+IBs/iFNsP8/9MBOTLv3cb0gQbNXEDopPWY15Nb2tRbY?=
 =?us-ascii?q?VguA+mEcUmQNnRVWBQXO8Qz3UY3wsiv+sep9xTWaMMjrRr06RTiu86FmQwLuhC?=
 =?us-ascii?q?sAKjA27HvYislwja5CpxyhoBp/zJDUYYqIMPZzcL/Rcc8fSWdHQ81fVTFOApmk?=
 =?us-ascii?q?YoUBD+QBJ+VWoZTyqFQSohW+BA6iBP/0xz9Un3/5wbE23v49HQzE2gErAtIAsG?=
 =?us-ascii?q?7TrNXwLKofTf26zLfPzTXAdfxWxSr25pXSfRAnv/6MWah/etffx0kuEwPKlUuf?=
 =?us-ascii?q?qZbiPzOL1+QCr3CU4e1nVeK0l24osRtxrSCzy8gxlInJgYEVxUrY9Sph3Yg6P9?=
 =?us-ascii?q?u4R1B/YdG+CJReuSCaN49tTcw8WWFovzg6yrwatpWmeyYKz48nxwLFZPydboOF?=
 =?us-ascii?q?5QjsW/uPITd/h3JqYq6/iwyv/kihzu3zTde70ExNripbk9nDqmsA2AfS6siHUP?=
 =?us-ascii?q?d9+Fmu2SqV2w/I8O5JOEY5nrfYJZ452rM8i4YfvV7eEiPqhEn6lqCbe0o+9uS1?=
 =?us-ascii?q?6unrfq3qqoKAO4Nulw3yLrgiltawDOk3KAQCQmeW9fm62bb+50P2Wq9Kgeczkq?=
 =?us-ascii?q?TBtZDaItkUqbChDg9O14Yj9w6/DzC70NQEhXUHLExKeBaAj4XxPlHOPOr3Ae6i?=
 =?us-ascii?q?j1i2izhrxvDGMqfnAprTMnjPiqzucqxl505dzgo808xf6opJBr0dOv7/R1P9uM?=
 =?us-ascii?q?DCAhI2PAG42fvrBdRh2o8GXGKAGK6ZMKfcsV+S4eIvJvGBa5UItzbjLPgl5OTh?=
 =?us-ascii?q?jWMjlVAAfKmp2YAYZ26iHvRhPUWZYGbjj8waHmcLvgoyVurqh0OeUTJJfHm9Rb?=
 =?us-ascii?q?ow5isnB4K+EYfDWoetjaSC3CihBJ1WZ2ZGBkqXEXf0bYqEX+sMZzyIIsJ6ljwE?=
 =?us-ascii?q?VKahRJE72R6zqgDw06BnIfbM+i0EqZLj08B45/XNmhEu7zB0EcCd3HuQQG5phW?=
 =?us-ascii?q?4IQz423L5hrkBn11iMz7Byg+ZEGtxL+/NJTgA6OIbHz+NmFtDyQQPBcsmVRFq6?=
 =?us-ascii?q?RtirGjUxTtMvw9AQeUpyBsuthAjZ3yW2G78Vi6CLBJss/6LE2HjxOtp9y3Ha1K?=
 =?us-ascii?q?Q6ilkpWNdAOXe6ia548gjZH5TJnFmBl6a2aaQc2zbA9GedwmqPv0FXThR8Ub3C?=
 =?us-ascii?q?XXADfUvZsdT55kDYQLOzErknNxVOxdSeJatNb93jlU9GS+v7ONTCf2KxnH+9BR?=
 =?us-ascii?q?WPxrOKcIrlYWYd3DnGBUgBlAAT4XeGNRYnCii6uW3eESZiGk/xbEn06+lxtGu7?=
 =?us-ascii?q?TlMozwGNd0Bh2bS0+h4OiPyZU/McwKgIuCI5qzV7BlqywszZAcKapwV9ZKVcfc?=
 =?us-ascii?q?894FBf2G3CqQN9JICgL7p4iV4baAl3ulvu1xRtBYlajMclsmsgzBBuJqKAzFNB?=
 =?us-ascii?q?azSY0IjwOrLJLmny+BGvZLbO2l7A1NaW/qYP5e89q1X4ugGlDFYt83Ji09NNyX?=
 =?us-ascii?q?uT+o3KDBYOUZL2Sks39gV1qKvBYikl+oPbyH5hPbWvvz/HwNIpAvEpxQqnf9da?=
 =?us-ascii?q?KKmEDhP9E9UGB8iyL+wng12pbhUCPO9I7KE0OcSmdvWc166oJ+tgmSmmjWJd7I?=
 =?us-ascii?q?9h1UKM8jJ2SvTU0JYd3/GYwgyHWi/kjFi7tsD3nJxLZTYPHmql1SjkBIlRZqhs?=
 =?us-ascii?q?coYQEmquJta3xtNki5HxXH5Y8UapB0ka18+xZRqSc1v90BVL1UQXv3OnnTC4zz?=
 =?us-ascii?q?1wkzwyq6qfxyrOz/7+exoAP25BXHNigkv0IYiok9AaW1ClbxI3mxuk60b6xqdb?=
 =?us-ascii?q?qb96L2nOX0hIeTP2L318XauqrLaNftBA4osysSpLSOS8fUyaSrnlrhsb1SPjEW?=
 =?us-ascii?q?xeySs+dzG3oZX5nhN7iGeHI3ZvsHXZedt8ygvY5NzZXfRRxCYJRDFkiTnLAVix?=
 =?us-ascii?q?J8Om/dGQl5jdsuCxTWShVoZJfiTwy4OPrje75WxtAR25hf+znsPoERMj3SDgyt?=
 =?us-ascii?q?llSyPIowv6YonqzKS2KP9oflN2C1/n9sV1BId+npEti54OwXIanIma/WIbkWfv?=
 =?us-ascii?q?NtVWwbn+YGAXRT4K39HV4BTl11N5Ln+SwYL2SHudwshmZ9m/eG8W3Dwy79xSAq?=
 =?us-ascii?q?eO8LNEhTd1oka/rQ/Jevh9gikSyeMu6HEAheEFog8twT+cAr8MB0lVJirslwqW?=
 =?us-ascii?q?79C5qqVXYGevcb6u20ZkgN+uEqmIohtAV3bhZpciAShw4916MF3SzH388IXkeN?=
 =?us-ascii?q?3LYt0Jqx2YigzPj+9JJ5IyjfoKmStnNnzyvXI7z+42lhtu3Yq8vIedLWVi4r65?=
 =?us-ascii?q?DgRFOTLrf8kT4C3ijb5CnsaK2ICiBo1hGi8RU5rnTPKoCykftfP8NwaSDjI8rW?=
 =?us-ascii?q?+bFqDDHQ+f6UdpsWvDEp6qN36JOHYZzc9tSAOAK0NBmAoURik1noYlFgC2w8zs?=
 =?us-ascii?q?aEJ55jEN6V74sBRD1OZoOgLnUmfFugiocSw0RIGEIxVM8wFN+lnaMc+Z7u5pAi?=
 =?us-ascii?q?5X4IWrrBaRJWyDewRIEWYJV1SFB1DlMLmu4sLN8/KCCeqjNvfBequBpvFEWPiU?=
 =?us-ascii?q?xZKvz41m/zmSOcWJJHVtEuM00FJZXX9lA8TZhykPSysPmiLMac6bqhC89jdyrs?=
 =?us-ascii?q?+h9vTkRRzg5Y2UBrtINtVv4BG2jrmZN+KKmSl2Ny5S1okQyn/Q1LgfwFkShjlg?=
 =?us-ascii?q?djm2C7sPryvNQ7jWmqJMFB4UcTl8NM5S4KI6xAVCJNDUgMvv1rFklv41F0tFVV?=
 =?us-ascii?q?v5l860ZcwGP2WwOEnDBEmVKruLPibLzNvyYaOnVL1QiupUuwestjacFk/pJi6D?=
 =?us-ascii?q?mCXxVxCzLeFMizmWPBlEt4GmbhZiF3LjQcn9ahKnMN93iSA2waEohnzUL24QKy?=
 =?us-ascii?q?Rzc0RIrreI9yNXnu1/G3Bd7npiNeSEnjyW7+/WKpYMr/RkHz54l+ZE73Q6zrta?=
 =?us-ascii?q?9idERPpulSvJstFuo1amkuyRxTp9TRpOsSxHi5+Vsk96I6XW6oFAWWrY/BIK9W?=
 =?us-ascii?q?iQDQ4Fp8B+CtLxoaBQy8PClLntJzhe79LU+tEcC9LJJ82ZKHAhKwbmGCbIDAsZ?=
 =?us-ascii?q?Sj6mLWDfh0pTkPGV7XCVtYY1pYbimJUQTr9USUA1GuoHBURkBtwNPpR3Xi8hkb?=
 =?us-ascii?q?GBls4I5mSxrAXQRMVcsZDLTO+dDuv3IjaDkbZEfwcIwa//LYkLN4373UJial5h?=
 =?us-ascii?q?kYTRG0rQWshNojVgbg8yr0VB6WZ+QXMp20LhcAyt72UfGuOqkRQukAtxffwt9C?=
 =?us-ascii?q?vw41cwPlfKpzYwkFMtmdj+mjCRdTnxLKO2XYFXCCr4rVI+Mo/jSQZvcQKyhVBk?=
 =?us-ascii?q?NCvDR79Jgbpsb25riBXduZtUBfFcTbNLbQQLxfGRffoo30lcpj+6ykBZ/eHFE4?=
 =?us-ascii?q?dtlBM2cZ6wqHJNwwNjbNg7JazXP6dJ1V9QhqSIviC2yu8xwxYSJ10R/2OSfC4I?=
 =?us-ascii?q?pVAHNrk9JyW24ONg8xGNlCVbcmgWS/Uquu5q9l86O+mY0i3vybhDKkGvOOybNa?=
 =?us-ascii?q?+ZoGnAmtCHQlMq10MIjFVF8KNt0cYtckqUTFsvzLyXFxQNNMrCLx9aY9BO+3jT?=
 =?us-ascii?q?ZSyOq/nCwYppP4WhEeDlVfKOtKIOgkKlAAkpH54A78oAHpmq00HYKdnoLKQexB?=
 =?us-ascii?q?Ux+gvrIEuKAOpTdB2WjjgNu9u/w4Nv3YlBOjEdBn1wMSep6bbMvQ8nm+aDXNAq?=
 =?us-ascii?q?YngAWosELWo2WMqgmy5FpHRPED630ucByAiG8TD9qT7cAyX7b9pmfP2Ufw9jCM?=
 =?us-ascii?q?mq+TUj9Ki7kVvX/Y/EJ2HmNNRivMHP5PgHp5mbEPNYV6RyvFnEkYlCW3OqS3LP?=
 =?us-ascii?q?EcKyJ5Xod4Ysacb7B22nUly6kDI1Ttv+PNaxLqSSjwHoRYlUvJOG0z89LcW9DC?=
 =?us-ascii?q?0RGw9sp+Ef46JxfRYMbIQnbh7rqQs+LbazIAKC0tWpX2asKCVZT/pEwOWnYbxX?=
 =?us-ascii?q?zjMgbuy9yHQ+SpE6yfO7/lMTS5sSlBHR2e6jZ5VCUSj0AnFSYATPpS0jm2d9Nu?=
 =?us-ascii?q?Y93OI/wBLWvlQHLjCLcu1pZHVBv94mBFOSJ3R3BnAlSFCClYDD+BKj36gO/ytB?=
 =?us-ascii?q?mNZZyfdFsH/6vp/Rej6sVrarpo/Tsyojc9cmpbZ+PpL5IsuJqpzehCfSTITWsg?=
 =?us-ascii?q?2ESSK6C+dalcZLLyJZRvlIln8qOcoctYVc90U7Tt0+KKBXCKkwurCqbiJpAjMM?=
 =?us-ascii?q?wi8YS4yA3DMCgv2m1LvUjxuRfootMAcav5VEmdYdTih2YjgAq6+5TYrWimyESn?=
 =?us-ascii?q?QKIAcU6wRM/wIAmZVtfuD++obHUYFDwSZMo/1oSivLCoVo91zjR2GXh1j4RvKh?=
 =?us-ascii?q?nve33Q1MyPLsztgbWBhkCURE3elWjFUnKLdtJKUKo4HFrCeCdVnms2L11OumOF?=
 =?us-ascii?q?5RxNXQd135CorFqGX9XjQC9n0RXoBA1mzQGokMnAVkc6srulpML568ekrk5Dwr?=
 =?us-ascii?q?2Z5pH7+mWsCv3VolqmwGRyiyGdpbF+5mqE7XWCFiY52zqJXlPJFSQmBO952HsV?=
 =?us-ascii?q?tZiFtiMzKnxppGMMFA+SAMXDlTrjWBu9uyUsxD1tVsA5ARPNh1o239F79cOJiN?=
 =?us-ascii?q?v302vaTiynjd+zA9rle12i+zF7W9T+JY42IeGhsmJ2CFp0kxDusj7nvS8lfXsl?=
 =?us-ascii?q?B15ehXHKWAgltpqjZnAp9OHipJ1WyiL1lrSXlJqeRaKKDOfsxCRPk9fgWgOx84?=
 =?us-ascii?q?FfI8wkOG41l+nW3lbCxqqgta5yfdUhEvVSkJnLjtlycRqse9NT8aUZ1Hdy4hYD?=
 =?us-ascii?q?neJgKFniBXuBVfa1pkWp8DDdZK5bcb0ZFJ8cXcUUysMz0KXAR+NgIk1vpSjVRD?=
 =?us-ascii?q?sEKXeS/DFwqnbvHPsgBtfceIsc6pLfL58RxZioP7v+E48r8MR3yimQG3Xd/er5?=
 =?us-ascii?q?f2tseWuUuWaKf4L+q8bGfATDjIkx+whawkD4XU8CjVLQZWMJd7xmQ/bpT7FGHE?=
 =?us-ascii?q?I0cOHa8DI1tnUvVfYMhcr+1cL+9lfq0K/aJ8TkaCTw71FYGprPhAJVXXSCWEcw?=
 =?us-ascii?q?2I9ej5qoXWu+/zU+/lM+WA2XHESr4/BZ585D3yU5vr1YVT4E3o2/xa00RhVVHc?=
 =?us-ascii?q?BAmNstPiLx8838Cke0/ribEoGTnbGpBukXGl40Zba8MNC3mj/Iofy5pFrnrxTe?=
 =?us-ascii?q?h1yE/tseZ6/bhkr486//ZjwJHndu/pNf1GvBo+UVCvDQJw+8B2WDBy?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2lmOgAsq6Fe/6AsZAoqPA8MAQEBAQEBA?=
 =?us-ascii?q?QUBAQERAQEDAwEBAYF7AoFJgTCBPBAKgSCCdYN7hDKIMgMOgw6CMYpsiVkfgVs?=
 =?us-ascii?q?KAQEBAQEBAQEBHRoEAQEOdYNBJSkBCIFkEToEDQIQAQEGAQEBAQEGAwEBAQGFc?=
 =?us-ascii?q?1iCKR4BBAEBAQEDAwMBAQwBg1YyaAEVDQINGQJKEQcQW4JMgksBAQGxf4EyGgK?=
 =?us-ascii?q?FI4IvAYFPgQSBDgIoAYFkjG6BRAOFNoVCFIJLBLIbB4JImBSCSAGNRQOCeolgp?=
 =?us-ascii?q?1aHLA6BaDMaghEKCxqBHFAYn1QCNnKOMoEQAQ?=
X-IPAS-Result: =?us-ascii?q?A2lmOgAsq6Fe/6AsZAoqPA8MAQEBAQEBAQUBAQERAQEDAwE?=
 =?us-ascii?q?BAYF7AoFJgTCBPBAKgSCCdYN7hDKIMgMOgw6CMYpsiVkfgVsKAQEBAQEBAQEBH?=
 =?us-ascii?q?RoEAQEOdYNBJSkBCIFkEToEDQIQAQEGAQEBAQEGAwEBAQGFc1iCKR4BBAEBAQE?=
 =?us-ascii?q?DAwMBAQwBg1YyaAEVDQINGQJKEQcQW4JMgksBAQGxf4EyGgKFI4IvAYFPgQSBD?=
 =?us-ascii?q?gIoAYFkjG6BRAOFNoVCFIJLBLIbB4JImBSCSAGNRQOCeolgp1aHLA6BaDMaghE?=
 =?us-ascii?q?KCxqBHFAYn1QCNnKOMoEQAQ?=
X-IronPort-AV: E=Sophos;i="5.73,307,1583190000"; 
   d="scan'208";a="45008917"
Received: from unknown (HELO mta-1.bih.net.ba) ([10.100.44.160])
  by mail01-1.bih.net.ba with ESMTP; 23 Apr 2020 16:54:02 +0200
Received: from mailbox-3.bih.net.ba (unknown [10.100.44.4])
        by mta-1.bih.net.ba (Postfix) with ESMTP id 7565D423EE5;
        Thu, 23 Apr 2020 16:54:06 +0200 (CEST)
Date:   Thu, 23 Apr 2020 16:54:01 +0200 (CEST)
From:   Advokat Sanela
         =?utf-8?Q?Dilberovi=C4=87_Mostar_Advokat_Sanela_Dilberovi=C4=87?=
         Mostar <advokat.dilberovic@bih.net.ba>
Reply-To: Maureen Hinckley <maureenhinckley24@aol.com>
Message-ID: <1270315964.25129.1587653641971.JavaMail.root@bih.net.ba>
Subject: =?utf-8?Q?Meine_Stiftung_spendet_Ihnen_f=C3=BC?=
 =?utf-8?Q?nfhundertf=C3=BCnfzigtausend_Dollar.?=
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
X-Originating-IP: [10.100.44.141]
X-Mailer: Zimbra 8.0.0_GA_5434 (zclient/8.0.0_GA_5434)
Thread-Topic: Meine Stiftung spendet Ihnen =?utf-8?Q?f=C3=BCnfhundertf=C3=BCnfzigtausend?= Dollar.
Thread-Index: mMFH1z3Ei/h7AezeM2JMtIm9UlXEig==
To:     unlisted-recipients:; (no To-header on input)
Sender: linux-embedded-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org



Ich bin Maureen Hinckley aus Sterling Massachusetts. Meine Stiftung spendet fünfhundertfünfzigtausend Dollar an Sie ... Kontaktieren Sie uns für weitere Informationen E-Mail: maureenhinckley24@aol.com
