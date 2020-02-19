Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CF348164271
	for <lists+linux-embedded@lfdr.de>; Wed, 19 Feb 2020 11:43:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726731AbgBSKnL (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Wed, 19 Feb 2020 05:43:11 -0500
Received: from mail.dns-net.ch ([195.160.190.3]:49733 "EHLO 111.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726469AbgBSKnL (ORCPT <rfc822;linux-embedded@vger.kernel.org>);
        Wed, 19 Feb 2020 05:43:11 -0500
X-Greylist: delayed 537 seconds by postgrey-1.27 at vger.kernel.org; Wed, 19 Feb 2020 05:43:11 EST
Received: from [172.16.145.102] (unknown [213.193.93.78])
        (using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by 111.com (Postfix) with ESMTPSA id 0B9117A604D;
        Wed, 19 Feb 2020 11:32:53 +0100 (CET)
Subject: Re: ELCE 2015 videos unavailable
To:     "Bird, Tim" <Tim.Bird@sony.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     "linux-embedded@vger.kernel.org" <linux-embedded@vger.kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <6bd91f36-e8fb-fc43-e0b3-725906d04326@gmail.com>
 <a4592c17-9868-afc4-c2f1-99877b676b91@ti.com>
 <8c24b246-74ad-9c77-5e28-2765e0827525@gmail.com>
 <MWHPR13MB08959A93DB69D356B2B608B0FD1A0@MWHPR13MB0895.namprd13.prod.outlook.com>
 <e223aa34-57c4-c946-acce-c74ab66fe09a@ti.com>
 <MWHPR13MB08953CF0794F712F7D7A5943FD110@MWHPR13MB0895.namprd13.prod.outlook.com>
From:   Christophe Aeschlimann <c.aeschlimann@acn-group.ch>
Message-ID: <a5493648-97bd-35fd-72de-3c48378c7ada@acn-group.ch>
Date:   Wed, 19 Feb 2020 11:34:15 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <MWHPR13MB08953CF0794F712F7D7A5943FD110@MWHPR13MB0895.namprd13.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-embedded-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

On 2020-02-18 17:50, Bird, Tim wrote:
> 
> 
>> -----Original Message-----
>> From: Kishon Vijay Abraham I <kishon@ti.com>
>>
>> Hi Tim,
>>
>> On 13/02/20 6:33 pm, Bird, Tim wrote:
>>>> -----Original Message-----
>>>> From: Matthias Brugger <matthias.bgg@gmail.com>
>>>>
>>>> Hi Kishon,
>>>>
>>>> On 13/02/2020 11:44, Kishon Vijay Abraham I wrote:
>>>>> Matthias,
>>>>>
>>>>> As I learnt from Angela Brown (LF leadership team), those videos are
>>>>> accidentally deleted by a former LF employee and no one has the backup
>>>>> for those videos.
>>>
>>> Thanks for answering, Kishon.  Sorry to not get back to you sooner, Matthias.
>>> I can confirm what Angela said.  The videos are unfortunately not available.
>>>
>>>>
>>>> Ah, too bad. Never trust the cloud ;)
>>>>
>>>> If anybody has some of the videos offline, it would be good to try to recover as
>>>> much as possible.
>>>
>>> The LF tried to go back to the original videographer, and see if they had backups,
>>> but they did not.  The videos that were made by Bootlin (formerly Free Electrons),
>>> (not that particular year), do have backups, and can be accessed on their web site.
>>>
>>>>
>>>> I'm especially interested in yours about PCIe, but others have valuable
>>>> information for sure :)
>>>
>>> Unfortunately, unless someone scraped the video from YouTube, the video
>>> is likely lost forever.  :-(
>>>
>>> I'd like to start a project to scrape the ELC videos from YouTube (for other years)
>>> that were done by videographers, and for which no known backups exist.  This is to
>>> prevent something like this from happening in the future for other videos.  If anyone
>>> would like to help with this project, please let me know.
>>
>> Do we have permission from Youtube to download the videos? A quick look
>> at their terms [1] indicate we are not allowed to download the content
>> "The following restrictions apply to your use of the Service. You are
>> not allowed to:
>>
>> access, reproduce, download, distribute, transmit, broadcast, display,
>> sell, license, alter, modify or otherwise use any part of the Service or
>> any Content except: (a) as expressly authorized by the Service; or (b)
>> with prior written permission from YouTube and, if applicable, the
>> respective rights holders; "
>>
>> [1] -> https://www.youtube.com/t/terms
> 
> I'd be downloading the videos as a representative of the Linux Foundation, which is
> the entity that holds the copyright on the videos.  It might be easier for me to 
> get access to the LF's YouTube account.  Maybe there's a "Download my videos"
> option which would make the scraping unnecessary (I don't post stuff to YouTube
> so I don't know what features their author accounts provide.)  But if it does end up being
> necessary, YouTube can hardly complain about the copyright holder downloading
> and copying their own video.

Hi,

Not sure about the "Download my videos" option, but there is:

https://ytdl-org.github.io/youtube-dl/

which I have used and can recommend.

> In any event I'll check with the powers that be a the Linux Foundation, and make sure
> I at least have their permission.
>  -- Tim
> 

