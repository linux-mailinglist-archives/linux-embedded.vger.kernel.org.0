Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D624116874D
	for <lists+linux-embedded@lfdr.de>; Fri, 21 Feb 2020 20:16:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729503AbgBUTQd (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Fri, 21 Feb 2020 14:16:33 -0500
Received: from mail-bn8nam12on2097.outbound.protection.outlook.com ([40.107.237.97]:11702
        "EHLO NAM12-BN8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1729484AbgBUTQd (ORCPT <rfc822;linux-embedded@vger.kernel.org>);
        Fri, 21 Feb 2020 14:16:33 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oVhH57/0iHLn7nt/fAXLhLpu2nAiZ7QZ6eY4C/zuNZTC+pjiiKY2pVbyqVcaQy3YaTWje5/Bz4t0Fszc4NquLlMbQ8BWKONtR6vwS/o3FKb18+8p4ncAWMYTrmpHlVaY6E0NBfPIezNGlACTimCSbyQE+3+22O63C9tz0h/Qp2YtyaFARHzjeqshyOjCqWAS9iWRWWr/01cxkpsXedrSSd+3zcyEPHRlgdTrRJIzvPHDh4ymXW9GZxqmKlfXmPWewpVBGzqeRklWu6pDzg4KJodqRdcg2buGLpi+SpNzq2aDRV56eq2z/EItjFskWO9YG7CLsMCc7Qs+vqQOjgh/6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NYinXH4tvOHTdEZq2gvTYZMgQL0WhS1GuY35i1v2aPg=;
 b=anPRl8+jypPSzVin/dhYo3sRnFyn9bF4x8SHdi9YMxBS3pdqoiJtzt83DmNAJbTj9cjm47E1nR6M5aZvn5ZxQbi1Ioh38KIpgvEP86zNwBXme6KS37QFFqryDFLuXXf8TycpCR74H4A5JO0/4p3Nacf/Prg9LS2IP1c60JFO07kGB8bnUTmAhiWqX/blC3qeS7kkKqvUOwjT/X/VxBjztp9mjqB27U8rqllNABRSW3578TrbJpcpoLNTZ0l+GL5vZ+Wcs6cSO/izxOnuf1c6zNNUY6h2gASyMn8k0Y7PPkig9RTzfC3SaVAalthYX9f7Czc9PHuzQJPsRVrL0hG46A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Sony.onmicrosoft.com;
 s=selector2-Sony-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NYinXH4tvOHTdEZq2gvTYZMgQL0WhS1GuY35i1v2aPg=;
 b=oeC1mF3NjmcjYImN8uqVdh5d+V/MAqf1OY3uiuFLN4IonkVqHyqzzR6Jgo9TNtW8jKierstQSN50R1nv3eFniqU5IGJ6NHLIt8stzgsX/c3EOBZV4aJUA/ebGP9wFXcqquFBEnvMNuQi8pOAzejHL959NIk74E72pXHefjIwdys=
Received: from MWHPR13MB0895.namprd13.prod.outlook.com (2603:10b6:300:2::27)
 by MWHPR13MB1312.namprd13.prod.outlook.com (2603:10b6:300:9a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.6; Fri, 21 Feb
 2020 19:16:24 +0000
Received: from MWHPR13MB0895.namprd13.prod.outlook.com
 ([fe80::7544:fc2:b078:5dcd]) by MWHPR13MB0895.namprd13.prod.outlook.com
 ([fe80::7544:fc2:b078:5dcd%3]) with mapi id 15.20.2750.016; Fri, 21 Feb 2020
 19:16:24 +0000
From:   "Bird, Tim" <Tim.Bird@sony.com>
To:     Rob Landley <rob@landley.net>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
CC:     "linux-embedded@vger.kernel.org" <linux-embedded@vger.kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: RE: ELCE 2015 videos unavailable
Thread-Topic: ELCE 2015 videos unavailable
Thread-Index: AQHV3/sOKlnn0jlvaUedhCV79nXH8KgY9UUAgAAGVQCAAB6FkIAL8uUAgAEB/mA=
Date:   Fri, 21 Feb 2020 19:16:24 +0000
Message-ID: <MWHPR13MB08950D7002AD742974026E8DFD120@MWHPR13MB0895.namprd13.prod.outlook.com>
References: <6bd91f36-e8fb-fc43-e0b3-725906d04326@gmail.com>
 <a4592c17-9868-afc4-c2f1-99877b676b91@ti.com>
 <8c24b246-74ad-9c77-5e28-2765e0827525@gmail.com>
 <MWHPR13MB08959A93DB69D356B2B608B0FD1A0@MWHPR13MB0895.namprd13.prod.outlook.com>
 <6541c562-9160-a5ee-306a-7d1c3a2b67d1@landley.net>
In-Reply-To: <6541c562-9160-a5ee-306a-7d1c3a2b67d1@landley.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tim.Bird@sony.com; 
x-originating-ip: [160.33.195.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 634211a3-732e-4776-67ae-08d7b7028abf
x-ms-traffictypediagnostic: MWHPR13MB1312:
x-microsoft-antispam-prvs: <MWHPR13MB13122E3479B90DA90B079C01FD120@MWHPR13MB1312.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(39860400002)(376002)(136003)(366004)(346002)(396003)(199004)(189003)(6506007)(33656002)(53546011)(316002)(66446008)(54906003)(64756008)(66946007)(110136005)(66476007)(52536014)(186003)(76116006)(66556008)(2906002)(26005)(55016002)(966005)(81156014)(7696005)(71200400001)(8936002)(86362001)(9686003)(4326008)(8676002)(7116003)(5660300002)(66574012)(478600001)(81166006)(471534002);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR13MB1312;H:MWHPR13MB0895.namprd13.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: sony.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZBhHmVlDe2QJcsNBS5hu20i573sHHXATQktCCS8CMLNGAX3UaKVEEuP4ISFMIFHu5S2rPXqsL2fkRf7scfRTLcKWZl8Dr8hrYVwIpklhbFUlfXUfndSOhpHToBE12nqw5dofyPh6X0+sCOQaAUJw7U7K+Ar/NdqT3SQR2or8ZEt1YRdOoR4Unm93gJNFBATYoiKb9k5PZlxRE4lVB7mv+G2+lLbZ7HFbKjU3ltgaSSTiorgJsscc0Dx3DRXYM0kOrQ8U+IsAzvI48KT/kBmAYUavDYXR5w7gOv9JugLyOdzAgtCgQn7YrUgJ4YHyVES/mDHqyv34F4IzOAbaYRP1JP1ogu1GNVML1nQRXW2hdcf8PCEGYe9+pZrlubFYOM/DaEWFsH3orMFHqrPfEAE9FLCOBNiXCChEswckD0dR+gGta7yp82CJYDp1Xlkh+FPsvB46R1tL0TPTkd1tdxw7naEAfrdw/MbLrSJqhpKG1NLscN6ED0/QVcyzAb/2en4H0UiqjeDsqHrvO7ZjBqXT8OMM85npdq66qrVUd/TykWE6v3es8J/mPqDx55Ey2TDL
x-ms-exchange-antispam-messagedata: jxzk343Up93Yud8i+4WIBDE+ozBEeQamF7f5Ynakuw2VUuzfyFWUx2JozIMkcAOEfzZbpJ/YOAmtpzurrY5KuECiCQUk+xbVHl1Tq4a+uMcebRApi3uFmlFCShaq91nNoTt+keqJ3ETPCyFltPTI5w==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 634211a3-732e-4776-67ae-08d7b7028abf
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 19:16:24.1122
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f1LM1KEUZUUzgr3Vl2hehJosFpvrCzGByCuWlQA8DDjHXf6jSzBIqnC4aclugUuzWFZHHLoZJ1YFEfeStS1mYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR13MB1312
Sender: linux-embedded-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSb2IgTGFuZGxleSA8cm9iQGxh
bmRsZXkubmV0Pg0KPiANCj4gT24gMi8xMy8yMCA3OjAzIEFNLCBCaXJkLCBUaW0gd3JvdGU6DQo+
ID4+IEknbSBlc3BlY2lhbGx5IGludGVyZXN0ZWQgaW4geW91cnMgYWJvdXQgUENJZSwgYnV0IG90
aGVycyBoYXZlIHZhbHVhYmxlDQo+ID4+IGluZm9ybWF0aW9uIGZvciBzdXJlIDopDQo+ID4NCj4g
PiBVbmZvcnR1bmF0ZWx5LCB1bmxlc3Mgc29tZW9uZSBzY3JhcGVkIHRoZSB2aWRlbyBmcm9tIFlv
dVR1YmUsIHRoZSB2aWRlbw0KPiA+IGlzIGxpa2VseSBsb3N0IGZvcmV2ZXIuICA6LSgNCj4gDQo+
IEJhY2sgaW4gU2VwdGVtYmVyIEkgcHV0IG91dCBhIGNhbGwgYW5kIGEgbmljZSBwZXJzb24gKGRh
bmRhbikgc2VudCBtZQ0KPiBodHRwczovL2xhbmRsZXkubmV0L3RhbGtzL2pjb3JlLTIwMTUubXA0
IGZyb20gdGhlaXIgb3duIGJhY2t1cC4NCj4gDQo+IENvcGllcyBvZiBhdCBsZWFzdCBzb21lIG9m
IHRoZW0gYXJlIG91dCB0aGVyZS4uDQoNCldoYXQgYSBncmVhdCBpZGVhISENCkkgc2hvdWxkIHB1
dCBvdXQgYSBjYWxsIGZvciBhbnkgb3RoZXIgc2NyYXBlZCB2aWRlb3MgdGhhdCB3ZSBhcmUgbWlz
c2luZy4NCg0KQ29uc2lkZXIgdGhpcyBtZXNzYWdlIHN1Y2ggYSBjYWxsISENCkFueW9uZSB3aG8g
aGFzIGEgdmlkZW8gZnJvbSBFTEMgMjAxNSwgcGxlYXNlIGNvbnRhY3QgbWUgcHJpdmF0ZWx5IGF0
IHRpbS5iaXJkQHNvbnkuY29tIA0KDQpUaGF0IG9uZSB5b3UgaGF2ZSBpcyBhY3R1YWxseSBmcm9t
IEVMQyAyMDE2LCBhbmQgd2Ugd2VyZSBhYmxlIHRvIHJlY292ZXIgbW9zdCBvZiB0aGVtLg0KVGhl
eSBhcmUgYmFjayBvbiBZb3VUdWJlLCBhbmQgdGhlIGxpbmtzIG9uIHRoZSBlbGludXggcHJlc2Vu
dGF0aW9ucyBwYWdlIGhhdmUgYmVlbiB1cGRhdGVkLg0KU2VlIGh0dHBzOi8vZWxpbnV4Lm9yZy9F
TENfMjAxNl9QcmVzZW50YXRpb25zLg0KKFNvIEh1cnJheSEgZm9yIG9uZSB2aWRlbyBzZXQgcmVz
dG9yZWQuKQ0KDQpCdXQgeW91IHNob3VsZCBwcm9iYWJseSBrZWVwIHlvdSBjb3B5IGFueXdheS4g
Oi0pICBJIG1hZGUgYSBjb3B5IG9mIHRoYXQgb25lIChvcg0KYXQgbGVhc3QgaXQncyBpbiBwcm9n
cmVzczsgIFJvYiwgeW91ciBpbnRlcm5ldCBjb25uZWN0aW9uIGlzIHNsb3cuIDotKQ0KIC0tIFRp
bQ0KDQo=
