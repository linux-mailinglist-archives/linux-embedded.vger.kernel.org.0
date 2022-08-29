Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 565FF5A51CB
	for <lists+linux-embedded@lfdr.de>; Mon, 29 Aug 2022 18:32:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231148AbiH2Qaf (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Mon, 29 Aug 2022 12:30:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230515AbiH2QaQ (ORCPT
        <rfc822;linux-embedded@vger.kernel.org>);
        Mon, 29 Aug 2022 12:30:16 -0400
Received: from mx07-001d1705.pphosted.com (mx07-001d1705.pphosted.com [185.132.183.11])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4C4521E08
        for <linux-embedded@vger.kernel.org>; Mon, 29 Aug 2022 09:30:05 -0700 (PDT)
Received: from pps.filterd (m0209325.ppops.net [127.0.0.1])
        by mx08-001d1705.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27TEaERF003334;
        Mon, 29 Aug 2022 16:30:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sony.com; h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=S1; bh=m7RVjqDhSVJyH0/tB1EuIbrWMICS+5gsfeI/ISr1Z7s=;
 b=A2+wda1vdh7gULgV5+a1J227VrUdmrGPKtJIzwR+s9Cxp6E94w9OEQqzIAJej2UJhJ5q
 7a0gWxI9g8qLLVsQm8aB6UK1+OptFTqqA4rCzmu1iqQpZc5YEp2wrlowkkEZz7DkSzNF
 ulKTQkL33eHyqBryDIqG0IAlCq87Z9s2GA4T48rEVn5DFfs82wGMAxCpv+jZO+bZTV0y
 J8kM9mtpXBWegGk9SYwj5pEucJvJynatebzi/+lp6YL136+O6SD7iwyck9vROUUMwUZH
 F+vMmyUzJsY5j5raiN/8kF2LuAe//oAmJsBhxTSfzGTNDxQPkJpAeIj8YU5fyDFCTyjI yw== 
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2102.outbound.protection.outlook.com [104.47.55.102])
        by mx08-001d1705.pphosted.com (PPS) with ESMTPS id 3j78h02198-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 29 Aug 2022 16:30:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XdozVuibAvtnuhEIesAWhusT5Vdvi4YLjdtBvluYcNYjd7PiA+fqqrv5ucX2SprO9CDxptWrBYkFwGwrpBP34/rUek7+fFL4jiDxVRrXUqJn5KFhZVg587XwDA8HLzNKJhJnYfp3Xqh45kMPOqzj+JMMpfROUIAmOc9UpR7eOLeiJZ44A6NuGL8Ebo7hmcadYPoLhCF7qKXRrOb5tsDEfGBVrFCwR1nahcnCMDQwaxlmpjq8a9gHopBWTZly/8JqO7ZwCnV+HHoSg+MJjmjcZLty8eQyo41l9zjWDQ6VUgDgK81ngOMJr7eVFNsZANOafgWRIzfSQXPdRwVLRzZUmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m7RVjqDhSVJyH0/tB1EuIbrWMICS+5gsfeI/ISr1Z7s=;
 b=UmtWC51YpuVm0d33aff4YwJAh4ChZdGW3MLAibmgfnsf9cBFzSJULGp83Gvfl7gbbuly1ZsyvK28p20JKiD3+21KuCumZAUJBf49hpoUpttR7X1VGfVWLW6RIYxGfRVEr2L6WKMsI8fZlMfsnT41sR7Kt3tQjC4n11KEXjzULLe1HmFCQhnBGaIFjOdrYPBsAk5aOIOZWhzOdt4WCmSLJ0VbuaP3qcJRY2jY4LIyJAU5uK3Vlo6PLo7AbZAqGlWApIoJqLTetquVZAvnXpLc6JIOxvi6jMm57A2np06yr5QG4y3JSPTD3JCM0V4swe3UZelTn0yHKPMrin9oGuHWrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
Received: from BYAPR13MB2503.namprd13.prod.outlook.com (2603:10b6:a02:cd::33)
 by BN6PR13MB3155.namprd13.prod.outlook.com (2603:10b6:405:7d::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Mon, 29 Aug
 2022 16:29:55 +0000
Received: from BYAPR13MB2503.namprd13.prod.outlook.com
 ([fe80::84ef:e0b7:d15e:8095]) by BYAPR13MB2503.namprd13.prod.outlook.com
 ([fe80::84ef:e0b7:d15e:8095%5]) with mapi id 15.20.5588.010; Mon, 29 Aug 2022
 16:29:55 +0000
From:   "Bird, Tim" <Tim.Bird@sony.com>
To:     CE Linux Developers List <Celinux-dev@lists.celinuxforum.org>
CC:     "linux-embedded@vger.kernel.org" <linux-embedded@vger.kernel.org>
Subject: Anyone using XFS in an embedded product?
Thread-Topic: Anyone using XFS in an embedded product?
Thread-Index: Adi7w5uA8urSQiR/SfyUL4k+mX0mOQ==
Date:   Mon, 29 Aug 2022 16:29:55 +0000
Message-ID: <BYAPR13MB2503510A844E053D8E44C79DFD769@BYAPR13MB2503.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 374543a3-5aa2-4829-5b7b-08da89dbb513
x-ms-traffictypediagnostic: BN6PR13MB3155:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CA0RAtTfnHbW9MlaLOBtorVFv/JYa5bG1xG3eQr49P9hY0A/65hW9PXtrR25jHuN2bMDpKs0ZFNdG+r4lbTRmWJ0uUSgf7Ly7jm1v462PR/zanBpiESIOZknMOpF1/mfqbiGReEGe3R43zcbmwISmnDgHiwMqQTaoSx3+yLGQ0w8lsdRtn3MPWTMacOIle8IxjfxwenWLYDxcoppnsff/+XJoNi9t6ZLMJTW92dXW/ZUC4pf9P4fIg8pQYuWiFaLovF44d6qPI+p3CBdQyNKEE15fYpAE8DHgoE4OH2wZi6WaAPdkWFvkRuQKLAKHMAcIg2m49yHXdVs6Uws++kJGI5yDFf9tfUmats1jY/+sUfa9G+7qzFtl0iI4n8D8wnO2isfJUoWpzIsnGQ7TmlOslAwnFDkEvzKZIas30ictEigDyyi/+NszOB5LG9cqxijyBw2rSWvsmF74Nwrun+q1lvjvLXqfQi8gfWq/7k1jrMYJvHtIcF9NyWw6kkgM3xvMW1RAPteMyX+VyMEYuFgBDj/0tjQmb8kCqgzAPf2D7+kolAQ5NOx3JHnnaLxL8PEB4gCUVoPOReoMqMMNrd9bJjJD0fZS2MsRTLGRGYJEGXNC3+5Ej2/0bJlmqmkp/Srd7H1uv6ajITJcPq5DHrW1o5+UbslOO1lJV3L3XhawwykRaz7Uir0P/jMBniUF7F3yAeLP86Nj4WSiETAglsRVX5R4O2moFhbEp2pEafAlwCfgq3zpiYVr7onMba0LBl0cFKGKKAoipMXepsbUePieFA3nmA8cawQtfVgd4rc7/Nxm6+kmMtrE4sOCXvBz2KP8CFobzjwNcX8rjjUdGkDuQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR13MB2503.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(136003)(366004)(39860400002)(346002)(396003)(186003)(52536014)(9686003)(82960400001)(83380400001)(38070700005)(64756008)(66556008)(66446008)(66946007)(55016003)(76116006)(8676002)(4326008)(8936002)(33656002)(2906002)(5660300002)(4744005)(66476007)(86362001)(316002)(478600001)(71200400001)(38100700002)(41300700001)(6916009)(7696005)(122000001)(6506007)(26005)(966005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?93oa0SK2cokdg25UMvYvI23zobwULGMfkFNqy+tyBJJa29S2xI8MggcHKwqg?=
 =?us-ascii?Q?/fOg+eObyIh5BcRG+VX3nQyhqJKVq4ponKtvs3ts/jTT/5YJTbZTZp6SOKRQ?=
 =?us-ascii?Q?h4fKtY1QCG4atDpKmFBXedGp2DyLjqRfSawmZwd5lqUErTy4kKYCoQryTIe6?=
 =?us-ascii?Q?dV524s390xisXVdpun1fWygjsAjlyNY+vd6m8koPh7DCUdwFtELAonQ7MxJp?=
 =?us-ascii?Q?R/ohohGpHRL/BDsCw2oHBULZBipJV46xENm4dRqFf8m5VfTOOE1dS1F9AiuX?=
 =?us-ascii?Q?v82FU2XVQWQOIu8U/kEIaIIhKv3aRj/yXWdrBapwJtLnJ15C6Y2WUgmW5fdw?=
 =?us-ascii?Q?3o6QBK5jinWmLsYN5QX2PJ1RWv9qbVD4j84Nlko10Pg5vnPXh4MnRtsC68EO?=
 =?us-ascii?Q?rxxmpZoaEH6/dXZKosPeTRfZo79BvuffgSPnRe/hZTKT+wZNshSmB5lp2KAU?=
 =?us-ascii?Q?jFHDwyCgAEYo/wciNXD0IMptKWPTeuwOuNacD3I1QKG5XapsoOiHOj9OGVP4?=
 =?us-ascii?Q?gK5xLtQCe2ZWhntzZYX8UrRq4qQOxYJftwBae4PBPlyZuG4qNFSMhYs6jNMr?=
 =?us-ascii?Q?NvhqoY8LIwvW3wgpuhG4BWD1xr234dfSm/WJGoSMpb3i+c/zLpWf1ltXqVn0?=
 =?us-ascii?Q?zjDWcegG631ZllztPIthzerc7Ke2qCBbNf2h7KJWt5xw83Q6qITz4A4HmKC9?=
 =?us-ascii?Q?mFYaECfPAkhCmlOwe9waU7KoDXeJdROt+8z96+vGIuArCFDGQwoxsztQU7yT?=
 =?us-ascii?Q?+mMZR+qxPMVs/bDgBC3s1YArqLGh/vJr5n21/qgY2Khh/V217k7BrMnqLQ0j?=
 =?us-ascii?Q?1Mgw4Om82Dszl3JUdaJ3N8+Rh6HK+N0/CN7eLY2tyM8PsUZe20hKmZJdq2V6?=
 =?us-ascii?Q?YchkykIsDOIVJ6rI0RR1iwblvj8LWm5mHjBDJorR1FicgWHMC7PjV9c/k5yd?=
 =?us-ascii?Q?Zdbe4PnrkDXbSxN1evmQ11U520AoWLvuydw7WNsq4IqgPlFkLHXytVOiGuEE?=
 =?us-ascii?Q?FB/LLn3kzFk4eFN1OXRSUUVl4QwkCnxR70gvbRT58rn3PGCYlvzZjJ6i9PPt?=
 =?us-ascii?Q?KEjGYQlP0sUyG79a7uKgLIn7FFgB9FuIb50D+PJCp1d3mIL4IU2ChR/0AJ97?=
 =?us-ascii?Q?rKVQZt+DcwYsmubmCy2y9dspE9cF8M1UkmWRktJn/J2MAGQKxfyka4oMZqH8?=
 =?us-ascii?Q?MxlqIWuEoHF/iMpRVWpXiXFOtEu5mq5Vq4oWbYt3vOXRRXGKaouoIT0j11yB?=
 =?us-ascii?Q?JueLkO4Qia2AfZ7YXiiFiW+S2wteCkBudoWaMKhEkouMkOX8efqzFN4Pjt5j?=
 =?us-ascii?Q?byiPCVAWk/rAiIbW2fOakYO6QfNF6sMPf6g1F6j/eYeFGtqZRQ/WESSbsuuZ?=
 =?us-ascii?Q?mmbny8ADChXqjlN9uVf1+pgJuhhRPkhTE704SoLxSQ98gpwkx+uzlT9t9A7Z?=
 =?us-ascii?Q?VrCmkdzSJRaeklixty0YqNs/hx0uDXI1STfxqSx9doxoU/FBDplR/bY0TS+n?=
 =?us-ascii?Q?ZeVwJ2M2kzvLnI7nR5B/lnQ9kFP7AK2gl3YXvQI2JW2StykuAqKTIAL1/4tb?=
 =?us-ascii?Q?tSRryzarTP17vqIlR6Dc3YlaxnruOyiVo9TI5zJu?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR13MB2503.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 374543a3-5aa2-4829-5b7b-08da89dbb513
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2022 16:29:55.4509
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PPC9S58BUNsy8jvQjpc/9UZGEdbq7IfjQFsEgVq/vyKuJy361sXo/FJuW8gfHSX5EeFx0H2rbrtQezsku2jk7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR13MB3155
X-Proofpoint-ORIG-GUID: hU5IywqO4WvYlMCena00Te62BYtvV1at
X-Proofpoint-GUID: hU5IywqO4WvYlMCena00Te62BYtvV1at
X-Sony-Outbound-GUID: hU5IywqO4WvYlMCena00Te62BYtvV1at
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-29_07,2022-08-25_01,2022-06-22_01
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

Hey embedded Linux developers,

I have a question for you.  Does anyone know of a product or device that is
using "embedded Linux", that uses the XFS filesystem?  Especially, does
anyone use an XFS filesystem smaller than 300 MB (that's Megabytes,
not Gigabytes).

The reason I ask is that there is a discussion going on about what limits
to use for the filesystem size with some LTP filesystem tests.  If no one u=
ses XFS
in their small embedded projects, then I think it makes sense to only testi=
ng filesystem
greater than 300MB.

See https://lore.kernel.org/ltp/YwyYUzvlxfIGpTwo@yuki/
and https://lore.kernel.org/ltp/YwyljsgYIK3AvUr+@pevik/ for some discussion=
s
on this topic.

Please let me know if you are aware of the use of XFS filesystems where the
filesystem size is less than 300MB.

Thanks,
 -- Tim Bird
     - embedded Linux interested party


