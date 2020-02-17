Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 44692161157
	for <lists+linux-embedded@lfdr.de>; Mon, 17 Feb 2020 12:47:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728765AbgBQLrn (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Mon, 17 Feb 2020 06:47:43 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:50454 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728757AbgBQLrn (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Mon, 17 Feb 2020 06:47:43 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01HBlat0073886;
        Mon, 17 Feb 2020 05:47:36 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1581940056;
        bh=zvcAi1AI3Tn8cuw2vFboRsoPGaenV3PM+UIL1CuiOC0=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=vjalAfoT/Yn9O68F+wt4mwUtYcUQ5jTjDlSRD8wXtugjExSjFPDOiRHgQigxPb/dL
         BZ1mywSaV0OSpOHwVEZZo9GTGPOJgirmbOyzGozzaTuvQzRmUxZQoPBQZF2flsAPak
         zmC7xuzM4fE+quNvmgYi6q14AyyhvZo+YkF7ytUc=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01HBlaIS067097
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 17 Feb 2020 05:47:36 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 17
 Feb 2020 05:47:36 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 17 Feb 2020 05:47:36 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01HBlYdW026907;
        Mon, 17 Feb 2020 05:47:35 -0600
Subject: Re: ELCE 2015 videos unavailable
To:     "Bird, Tim" <Tim.Bird@sony.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
CC:     "linux-embedded@vger.kernel.org" <linux-embedded@vger.kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <6bd91f36-e8fb-fc43-e0b3-725906d04326@gmail.com>
 <a4592c17-9868-afc4-c2f1-99877b676b91@ti.com>
 <8c24b246-74ad-9c77-5e28-2765e0827525@gmail.com>
 <MWHPR13MB08959A93DB69D356B2B608B0FD1A0@MWHPR13MB0895.namprd13.prod.outlook.com>
From:   Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <e223aa34-57c4-c946-acce-c74ab66fe09a@ti.com>
Date:   Mon, 17 Feb 2020 17:21:14 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <MWHPR13MB08959A93DB69D356B2B608B0FD1A0@MWHPR13MB0895.namprd13.prod.outlook.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: linux-embedded-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

Hi Tim,

On 13/02/20 6:33 pm, Bird, Tim wrote:
>> -----Original Message-----
>> From: Matthias Brugger <matthias.bgg@gmail.com>
>>
>> Hi Kishon,
>>
>> On 13/02/2020 11:44, Kishon Vijay Abraham I wrote:
>>> Matthias,
>>>
>>> As I learnt from Angela Brown (LF leadership team), those videos are
>>> accidentally deleted by a former LF employee and no one has the backup
>>> for those videos.
> 
> Thanks for answering, Kishon.  Sorry to not get back to you sooner, Matthias.
> I can confirm what Angela said.  The videos are unfortunately not available.
> 
>>
>> Ah, too bad. Never trust the cloud ;)
>>
>> If anybody has some of the videos offline, it would be good to try to recover as
>> much as possible.
> 
> The LF tried to go back to the original videographer, and see if they had backups,
> but they did not.  The videos that were made by Bootlin (formerly Free Electrons),
> (not that particular year), do have backups, and can be accessed on their web site.
> 
>>
>> I'm especially interested in yours about PCIe, but others have valuable
>> information for sure :)
> 
> Unfortunately, unless someone scraped the video from YouTube, the video
> is likely lost forever.  :-(
> 
> I'd like to start a project to scrape the ELC videos from YouTube (for other years)
> that were done by videographers, and for which no known backups exist.  This is to
> prevent something like this from happening in the future for other videos.  If anyone
> would like to help with this project, please let me know.

Do we have permission from Youtube to download the videos? A quick look
at their terms [1] indicate we are not allowed to download the content
"The following restrictions apply to your use of the Service. You are
not allowed to:

access, reproduce, download, distribute, transmit, broadcast, display,
sell, license, alter, modify or otherwise use any part of the Service or
any Content except: (a) as expressly authorized by the Service; or (b)
with prior written permission from YouTube and, if applicable, the
respective rights holders; "

[1] -> https://www.youtube.com/t/terms

Thanks
Kishon
