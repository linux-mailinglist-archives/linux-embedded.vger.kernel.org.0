Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4362A15BEE5
	for <lists+linux-embedded@lfdr.de>; Thu, 13 Feb 2020 14:03:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729953AbgBMNDp (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Thu, 13 Feb 2020 08:03:45 -0500
Received: from mail-bn7nam10on2128.outbound.protection.outlook.com ([40.107.92.128]:2721
        "EHLO NAM10-BN7-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1729801AbgBMNDp (ORCPT <rfc822;linux-embedded@vger.kernel.org>);
        Thu, 13 Feb 2020 08:03:45 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jK974A8hG4GXD+YVxg8P7mB5jIk2HNodn8U559cDbw23rdSIAxQ2j2FAydhDL8utFwLJ/0imHEnABjuU3FbASsjwKCwu7Q5IAbMPpQ+YXUEOc/JQGlvAc1sCEu3Lg0nTgNoDe7So+LdXoQW/tYOBxCm0R0LdECjPjA6ChgQkTbsfguL6+o2zLZPmydJMMFy6dIMWaA1cGs7TjOkS6Sq+YKhuCAcQyP9yh9ljLw/zyHVQ84jkMy0R2+g/lTB3GWLgjoIK2RsEFSX/gMMPQE9UtNkCzI3jHl8e4gAF8aUceh3ZinfaArjx+3+kl9mh/OQKUWEWvgg+3KTRUYQmuEfaYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IkLKOEn6lKX2Saev2vx2VOkgLY7vqJzoMI9E7Vjd+3k=;
 b=n9HHOzW9wOIIxvILeEOv/x1yl4Ny6Dx6BNF74k7wfW483Bpa+NXd611QR/iYOEPZ40DXoVGnBQd9dd8AS2XRLiVnc5yNFX+H2ppYiKHzc8kLgsSFGAqlaEYnzktUeg9wiSumvG+uZQWf2KvsdPc63UnSrEFyffXavLg6zkhSyHGPR5TpcyzSI4vf9RcLZlseSAN9gz+N7hKqa9FS8ofaTz8i0zBcJ/Hk2Uaes7nHPqXt6a4PypzR6UJsCA9rm8eQEAwJAgEoPR7e76K2u5asE9UPXOTHSXSIO5Fuzdh2n48AeReleJFceAT3ExCWxq1i7oT+mIBH9DNM5zD29t4PCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Sony.onmicrosoft.com;
 s=selector2-Sony-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IkLKOEn6lKX2Saev2vx2VOkgLY7vqJzoMI9E7Vjd+3k=;
 b=AXuK49sizdArPXk68WXbgJcw3p7V77XuVfJHLZvuIoDpKvyCJlm/M+4kywAMvEWQ2Mmfa7aHV3js62Uxwf51wcI3GYNgJgbyRRBpDx6e9fQRwNWeeXc9zC3S+Cf0199Crs8uokNaaqOFouAPtS0IoIxBqe5YcSSDgXiwAQegN9Y=
Received: from MWHPR13MB0895.namprd13.prod.outlook.com (10.169.172.155) by
 MWHPR13MB1246.namprd13.prod.outlook.com (10.173.121.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.16; Thu, 13 Feb 2020 13:03:42 +0000
Received: from MWHPR13MB0895.namprd13.prod.outlook.com
 ([fe80::7544:fc2:b078:5dcd]) by MWHPR13MB0895.namprd13.prod.outlook.com
 ([fe80::7544:fc2:b078:5dcd%3]) with mapi id 15.20.2729.021; Thu, 13 Feb 2020
 13:03:42 +0000
From:   "Bird, Tim" <Tim.Bird@sony.com>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
CC:     "linux-embedded@vger.kernel.org" <linux-embedded@vger.kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: RE: ELCE 2015 videos unavailable
Thread-Topic: ELCE 2015 videos unavailable
Thread-Index: AQHV3/sOKlnn0jlvaUedhCV79nXH8KgY9UUAgAAGVQCAAB6FkA==
Date:   Thu, 13 Feb 2020 13:03:42 +0000
Message-ID: <MWHPR13MB08959A93DB69D356B2B608B0FD1A0@MWHPR13MB0895.namprd13.prod.outlook.com>
References: <6bd91f36-e8fb-fc43-e0b3-725906d04326@gmail.com>
 <a4592c17-9868-afc4-c2f1-99877b676b91@ti.com>
 <8c24b246-74ad-9c77-5e28-2765e0827525@gmail.com>
In-Reply-To: <8c24b246-74ad-9c77-5e28-2765e0827525@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tim.Bird@sony.com; 
x-originating-ip: [160.33.195.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 977b5d53-71e3-4f76-90c2-08d7b08526ed
x-ms-traffictypediagnostic: MWHPR13MB1246:
x-microsoft-antispam-prvs: <MWHPR13MB1246A55C5518BB643D79B4DBFD1A0@MWHPR13MB1246.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(39860400002)(366004)(136003)(376002)(396003)(346002)(199004)(189003)(478600001)(33656002)(7116003)(66946007)(76116006)(64756008)(66476007)(71200400001)(2906002)(66446008)(5660300002)(66556008)(52536014)(8676002)(110136005)(26005)(7696005)(54906003)(55016002)(53546011)(86362001)(6506007)(9686003)(4326008)(81156014)(8936002)(81166006)(186003)(316002);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR13MB1246;H:MWHPR13MB0895.namprd13.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: sony.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JaHRvoZxy6WosT7AWPPQJPElLFRAF1eBnwrW0pVW2KIzZDg36qCWueBn5ROCnOSqqlYe50Rjl/AJyy1cywmh++U4CkmVy4WxlFqpOHQnBDN03w2PXtLdFJg5VX87j/NbNR1my8ajsJSwbsJw+52Vl6xXhi7lIUY87sMT6/eFNcPjBBhORy86/fufHUTIb0v/uFH2NBc/E5ZlCCIn287a/oLncGJrmhzO/WkAlzg+iZUAwjeAxrb3dMBgERZxl6FemF9NAYKyI4MiHcRIKqP7ijxma9MddCkmx7MDCmBByqFRGuSKXqn8awgOuQzcUsI4O/LV1CvfUz8dABIywdiU0rxjKiDkr9HMk5K8EpYwNPsiYInKFneFTe/ljWZNxc9saYXVsGOMcxIkCEm4a34TBjzlQ6Fyh++XVl3ukrGSZO91VVP28/vz+8AVpWvJlQNr
x-ms-exchange-antispam-messagedata: brBuqWvx/ivGCtbs0arQvEbKvXzyPTG3vxFJ4a+2uEnF1rA6VqHJ5sXPzdreozXv03jD4HN3ahh6/lzyOukXtosMy0qCGxQBTKHtZ+fT802LOlwBFUDPaF0SdBw1256TzYVzZto/PKi5XwZb4T8xfA==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 977b5d53-71e3-4f76-90c2-08d7b08526ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 13:03:42.5427
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qqYMYSp4OMVn/AM5w7//EcsuClFzhinX7HXYxdzrJto67P90HK1fujdjOsr/HQQ2kgVypp3d02h03ycn78hMkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR13MB1246
Sender: linux-embedded-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNYXR0aGlhcyBCcnVnZ2VyIDxt
YXR0aGlhcy5iZ2dAZ21haWwuY29tPg0KPiANCj4gSGkgS2lzaG9uLA0KPiANCj4gT24gMTMvMDIv
MjAyMCAxMTo0NCwgS2lzaG9uIFZpamF5IEFicmFoYW0gSSB3cm90ZToNCj4gPiBNYXR0aGlhcywN
Cj4gPg0KPiA+IEFzIEkgbGVhcm50IGZyb20gQW5nZWxhIEJyb3duIChMRiBsZWFkZXJzaGlwIHRl
YW0pLCB0aG9zZSB2aWRlb3MgYXJlDQo+ID4gYWNjaWRlbnRhbGx5IGRlbGV0ZWQgYnkgYSBmb3Jt
ZXIgTEYgZW1wbG95ZWUgYW5kIG5vIG9uZSBoYXMgdGhlIGJhY2t1cA0KPiA+IGZvciB0aG9zZSB2
aWRlb3MuDQoNClRoYW5rcyBmb3IgYW5zd2VyaW5nLCBLaXNob24uICBTb3JyeSB0byBub3QgZ2V0
IGJhY2sgdG8geW91IHNvb25lciwgTWF0dGhpYXMuDQpJIGNhbiBjb25maXJtIHdoYXQgQW5nZWxh
IHNhaWQuICBUaGUgdmlkZW9zIGFyZSB1bmZvcnR1bmF0ZWx5IG5vdCBhdmFpbGFibGUuDQoNCj4g
DQo+IEFoLCB0b28gYmFkLiBOZXZlciB0cnVzdCB0aGUgY2xvdWQgOykNCj4gDQo+IElmIGFueWJv
ZHkgaGFzIHNvbWUgb2YgdGhlIHZpZGVvcyBvZmZsaW5lLCBpdCB3b3VsZCBiZSBnb29kIHRvIHRy
eSB0byByZWNvdmVyIGFzDQo+IG11Y2ggYXMgcG9zc2libGUuDQoNClRoZSBMRiB0cmllZCB0byBn
byBiYWNrIHRvIHRoZSBvcmlnaW5hbCB2aWRlb2dyYXBoZXIsIGFuZCBzZWUgaWYgdGhleSBoYWQg
YmFja3VwcywNCmJ1dCB0aGV5IGRpZCBub3QuICBUaGUgdmlkZW9zIHRoYXQgd2VyZSBtYWRlIGJ5
IEJvb3RsaW4gKGZvcm1lcmx5IEZyZWUgRWxlY3Ryb25zKSwNCihub3QgdGhhdCBwYXJ0aWN1bGFy
IHllYXIpLCBkbyBoYXZlIGJhY2t1cHMsIGFuZCBjYW4gYmUgYWNjZXNzZWQgb24gdGhlaXIgd2Vi
IHNpdGUuDQoNCj4gDQo+IEknbSBlc3BlY2lhbGx5IGludGVyZXN0ZWQgaW4geW91cnMgYWJvdXQg
UENJZSwgYnV0IG90aGVycyBoYXZlIHZhbHVhYmxlDQo+IGluZm9ybWF0aW9uIGZvciBzdXJlIDop
DQoNClVuZm9ydHVuYXRlbHksIHVubGVzcyBzb21lb25lIHNjcmFwZWQgdGhlIHZpZGVvIGZyb20g
WW91VHViZSwgdGhlIHZpZGVvDQppcyBsaWtlbHkgbG9zdCBmb3JldmVyLiAgOi0oDQoNCkknZCBs
aWtlIHRvIHN0YXJ0IGEgcHJvamVjdCB0byBzY3JhcGUgdGhlIEVMQyB2aWRlb3MgZnJvbSBZb3VU
dWJlIChmb3Igb3RoZXIgeWVhcnMpDQp0aGF0IHdlcmUgZG9uZSBieSB2aWRlb2dyYXBoZXJzLCBh
bmQgZm9yIHdoaWNoIG5vIGtub3duIGJhY2t1cHMgZXhpc3QuICBUaGlzIGlzIHRvDQpwcmV2ZW50
IHNvbWV0aGluZyBsaWtlIHRoaXMgZnJvbSBoYXBwZW5pbmcgaW4gdGhlIGZ1dHVyZSBmb3Igb3Ro
ZXIgdmlkZW9zLiAgSWYgYW55b25lDQp3b3VsZCBsaWtlIHRvIGhlbHAgd2l0aCB0aGlzIHByb2pl
Y3QsIHBsZWFzZSBsZXQgbWUga25vdy4NCiAtLSBUaW0NCg==
