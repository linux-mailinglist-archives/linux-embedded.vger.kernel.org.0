Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0E9F5162B0C
	for <lists+linux-embedded@lfdr.de>; Tue, 18 Feb 2020 17:50:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726528AbgBRQuo (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Tue, 18 Feb 2020 11:50:44 -0500
Received: from mail-mw2nam12on2136.outbound.protection.outlook.com ([40.107.244.136]:23293
        "EHLO NAM12-MW2-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726403AbgBRQuo (ORCPT <rfc822;linux-embedded@vger.kernel.org>);
        Tue, 18 Feb 2020 11:50:44 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ckWLcwmKFxHgqUSImj7y8AdX9fQYlW84f2B9hNzVkJrIlpmMHUOUsBrw1k1Vj2GblL7/ozR4sVXEEhZKqwSbq2YRlp4+KUX97WbDmdjHAe7sZkuZSS4MqoA2n/uiNPSdWK/Q/Rf68LYKAkio9S5Y4Mtk2I0fjQbB2eyfSxh5tHzLV+LChvVrck1CBCZ2aJ10a4LdVdNt8kbfil9fCNnZV5huWPFuFy7LiYw35Aj4IFHfdMXcjKmn1Dq/3w/3B1s8a+OH7nUMWFWXm2eb6eJXSoqAuf+VusJJYbiGyKym8MHVaECXhxHd5JXonfGctGt8gJ8GZGrDUUGl6jOGsHJQ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pNOP6/kyY/tcQkc6ZIKNlM1JiYEfDauaWSy8tHhw7UY=;
 b=NP6ydQtp7hz+4wix3tVVV4DfcNQ8JbBWX6jIfqD0QxJBayPRe5lIH6ISF07bIP613oSQLoMigegtUNQcG42wcVTADSDyARDIBbhUU9YqSZxDRYTllBuLk7ycLn3sbFZ+UmY48NV/5JSDSAlAkZ0pYzbZYD+i+KujsuLkzoYeYdqcfv+2frM5FIVYLIFpZCEfTgA+hnkSvrBjcpco1CXaG08p7nGMQJk6ygp4xwX48urqfE51uKqT+4YYisL/q7SiXa8qNVEapDhz+9FKIekHOspeKYS48gk7T8psW7oBxhEnOCCFkUR42EZBc2atZiF9KOlJP6eMokX9IuTsq8nOEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Sony.onmicrosoft.com;
 s=selector2-Sony-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pNOP6/kyY/tcQkc6ZIKNlM1JiYEfDauaWSy8tHhw7UY=;
 b=mbEdsRaTSPbeWxhm/lJtSdc6G5+sMhxFHLEsmvWul2G5sE+kg8w9anF1FPmGXhXa+AYRZIkf8/l9toddYxn/ArY9jaXjjIzNOKbol5tDEenb6ZtEI14Rsz0K/oGdQfZ8HXo/IjbgnIavMAoUP/prYcsSD+nGaSezc4GpiovpPcM=
Received: from MWHPR13MB0895.namprd13.prod.outlook.com (10.169.172.155) by
 MWHPR13MB1567.namprd13.prod.outlook.com (10.175.139.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.9; Tue, 18 Feb 2020 16:50:41 +0000
Received: from MWHPR13MB0895.namprd13.prod.outlook.com
 ([fe80::7544:fc2:b078:5dcd]) by MWHPR13MB0895.namprd13.prod.outlook.com
 ([fe80::7544:fc2:b078:5dcd%3]) with mapi id 15.20.2750.014; Tue, 18 Feb 2020
 16:50:40 +0000
From:   "Bird, Tim" <Tim.Bird@sony.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
CC:     "linux-embedded@vger.kernel.org" <linux-embedded@vger.kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: RE: ELCE 2015 videos unavailable
Thread-Topic: ELCE 2015 videos unavailable
Thread-Index: AQHV3/sOKlnn0jlvaUedhCV79nXH8KgY9UUAgAAGVQCAAB6FkIAGNwcAgAHkz6A=
Date:   Tue, 18 Feb 2020 16:50:40 +0000
Message-ID: <MWHPR13MB08953CF0794F712F7D7A5943FD110@MWHPR13MB0895.namprd13.prod.outlook.com>
References: <6bd91f36-e8fb-fc43-e0b3-725906d04326@gmail.com>
 <a4592c17-9868-afc4-c2f1-99877b676b91@ti.com>
 <8c24b246-74ad-9c77-5e28-2765e0827525@gmail.com>
 <MWHPR13MB08959A93DB69D356B2B608B0FD1A0@MWHPR13MB0895.namprd13.prod.outlook.com>
 <e223aa34-57c4-c946-acce-c74ab66fe09a@ti.com>
In-Reply-To: <e223aa34-57c4-c946-acce-c74ab66fe09a@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tim.Bird@sony.com; 
x-originating-ip: [160.33.66.122]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: efdffcae-6fe9-4907-a7c3-08d7b492b02c
x-ms-traffictypediagnostic: MWHPR13MB1567:
x-microsoft-antispam-prvs: <MWHPR13MB1567FD29B157732C2C4E2379FD110@MWHPR13MB1567.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(366004)(396003)(376002)(136003)(39860400002)(346002)(189003)(199004)(478600001)(966005)(2906002)(66946007)(53546011)(9686003)(6506007)(64756008)(66556008)(66476007)(26005)(86362001)(186003)(7696005)(110136005)(81166006)(76116006)(316002)(54906003)(52536014)(8676002)(66446008)(4326008)(71200400001)(7116003)(33656002)(81156014)(5660300002)(8936002)(55016002);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR13MB1567;H:MWHPR13MB0895.namprd13.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: sony.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f9siZpzJlcLS0OK6nsjASAIjzaiEQFIsiE2ZKlQSYmraIDEU4jWS+STi5xOFIkDtQVv5xR6pfAE7QAR/5H/mOlO6o/Bg3kWG5SMmYfKF47Mglls3ZKudVi5M2Zlx2NwEaTKZTzEVkIrbUfN1DwItC+DXa06P7ptLPVfCQf0+/vYCU7IOkr4wUR5K7MPK9JjEBvut4PwumbKmt4MA+RTKSbFlhQG9GtteZtYbXQW8QUtCNEsVN5kRfovsQAJ275fZZqPNpRWG5Eopl02rghuCMuzdj+4yZxJwoD381N2RtPPXtxbsrrTfff23VUzIonOGTcPadWzaKIj5YTBSRkN77FfWo/6XxEKS5KEWCCDxQNdc4xFFG+CoAArElZlejOA9HgVy5n3CDBna/0CXPwXL+CB/rutBqfY1hrAHquc971y2MUAHx2sdjNbM1q/0JEGM+Vy3xKoeDbfI7L3sIKTdQMM9Wq6VOM8/zCmBzA4mW772CTyF2EBLmwQbJz2Y1XV+DpbXwXxRSOgm759bB6Pa0Q==
x-ms-exchange-antispam-messagedata: 4reZO0zfriHQW6s037nnIJ9Vzy6QfzuabguGWKOBHjIO3nUaQpjM5TvDRQ1Whmpo0/ELVdVaIAaZwh0UTzQCmJZCoMy5K7uOm0AJHjki4pFJdrN4JbsKPibTN6z/zdQdoB5c+niuPQnR0TUTxgp92g==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efdffcae-6fe9-4907-a7c3-08d7b492b02c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 16:50:40.6857
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UeiBAEVZ1YiXfysON6xSPCqqCSQ5lEDrHttVBktuG1H1OcESA8agjUYCPxeGvWpq/MIhV+52Yb4FmVdWo+KQBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR13MB1567
Sender: linux-embedded-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2lzaG9uIFZpamF5IEFi
cmFoYW0gSSA8a2lzaG9uQHRpLmNvbT4NCj4gDQo+IEhpIFRpbSwNCj4gDQo+IE9uIDEzLzAyLzIw
IDY6MzMgcG0sIEJpcmQsIFRpbSB3cm90ZToNCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCj4gPj4gRnJvbTogTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhpYXMuYmdnQGdtYWlsLmNvbT4N
Cj4gPj4NCj4gPj4gSGkgS2lzaG9uLA0KPiA+Pg0KPiA+PiBPbiAxMy8wMi8yMDIwIDExOjQ0LCBL
aXNob24gVmlqYXkgQWJyYWhhbSBJIHdyb3RlOg0KPiA+Pj4gTWF0dGhpYXMsDQo+ID4+Pg0KPiA+
Pj4gQXMgSSBsZWFybnQgZnJvbSBBbmdlbGEgQnJvd24gKExGIGxlYWRlcnNoaXAgdGVhbSksIHRo
b3NlIHZpZGVvcyBhcmUNCj4gPj4+IGFjY2lkZW50YWxseSBkZWxldGVkIGJ5IGEgZm9ybWVyIExG
IGVtcGxveWVlIGFuZCBubyBvbmUgaGFzIHRoZSBiYWNrdXANCj4gPj4+IGZvciB0aG9zZSB2aWRl
b3MuDQo+ID4NCj4gPiBUaGFua3MgZm9yIGFuc3dlcmluZywgS2lzaG9uLiAgU29ycnkgdG8gbm90
IGdldCBiYWNrIHRvIHlvdSBzb29uZXIsIE1hdHRoaWFzLg0KPiA+IEkgY2FuIGNvbmZpcm0gd2hh
dCBBbmdlbGEgc2FpZC4gIFRoZSB2aWRlb3MgYXJlIHVuZm9ydHVuYXRlbHkgbm90IGF2YWlsYWJs
ZS4NCj4gPg0KPiA+Pg0KPiA+PiBBaCwgdG9vIGJhZC4gTmV2ZXIgdHJ1c3QgdGhlIGNsb3VkIDsp
DQo+ID4+DQo+ID4+IElmIGFueWJvZHkgaGFzIHNvbWUgb2YgdGhlIHZpZGVvcyBvZmZsaW5lLCBp
dCB3b3VsZCBiZSBnb29kIHRvIHRyeSB0byByZWNvdmVyIGFzDQo+ID4+IG11Y2ggYXMgcG9zc2li
bGUuDQo+ID4NCj4gPiBUaGUgTEYgdHJpZWQgdG8gZ28gYmFjayB0byB0aGUgb3JpZ2luYWwgdmlk
ZW9ncmFwaGVyLCBhbmQgc2VlIGlmIHRoZXkgaGFkIGJhY2t1cHMsDQo+ID4gYnV0IHRoZXkgZGlk
IG5vdC4gIFRoZSB2aWRlb3MgdGhhdCB3ZXJlIG1hZGUgYnkgQm9vdGxpbiAoZm9ybWVybHkgRnJl
ZSBFbGVjdHJvbnMpLA0KPiA+IChub3QgdGhhdCBwYXJ0aWN1bGFyIHllYXIpLCBkbyBoYXZlIGJh
Y2t1cHMsIGFuZCBjYW4gYmUgYWNjZXNzZWQgb24gdGhlaXIgd2ViIHNpdGUuDQo+ID4NCj4gPj4N
Cj4gPj4gSSdtIGVzcGVjaWFsbHkgaW50ZXJlc3RlZCBpbiB5b3VycyBhYm91dCBQQ0llLCBidXQg
b3RoZXJzIGhhdmUgdmFsdWFibGUNCj4gPj4gaW5mb3JtYXRpb24gZm9yIHN1cmUgOikNCj4gPg0K
PiA+IFVuZm9ydHVuYXRlbHksIHVubGVzcyBzb21lb25lIHNjcmFwZWQgdGhlIHZpZGVvIGZyb20g
WW91VHViZSwgdGhlIHZpZGVvDQo+ID4gaXMgbGlrZWx5IGxvc3QgZm9yZXZlci4gIDotKA0KPiA+
DQo+ID4gSSdkIGxpa2UgdG8gc3RhcnQgYSBwcm9qZWN0IHRvIHNjcmFwZSB0aGUgRUxDIHZpZGVv
cyBmcm9tIFlvdVR1YmUgKGZvciBvdGhlciB5ZWFycykNCj4gPiB0aGF0IHdlcmUgZG9uZSBieSB2
aWRlb2dyYXBoZXJzLCBhbmQgZm9yIHdoaWNoIG5vIGtub3duIGJhY2t1cHMgZXhpc3QuICBUaGlz
IGlzIHRvDQo+ID4gcHJldmVudCBzb21ldGhpbmcgbGlrZSB0aGlzIGZyb20gaGFwcGVuaW5nIGlu
IHRoZSBmdXR1cmUgZm9yIG90aGVyIHZpZGVvcy4gIElmIGFueW9uZQ0KPiA+IHdvdWxkIGxpa2Ug
dG8gaGVscCB3aXRoIHRoaXMgcHJvamVjdCwgcGxlYXNlIGxldCBtZSBrbm93Lg0KPiANCj4gRG8g
d2UgaGF2ZSBwZXJtaXNzaW9uIGZyb20gWW91dHViZSB0byBkb3dubG9hZCB0aGUgdmlkZW9zPyBB
IHF1aWNrIGxvb2sNCj4gYXQgdGhlaXIgdGVybXMgWzFdIGluZGljYXRlIHdlIGFyZSBub3QgYWxs
b3dlZCB0byBkb3dubG9hZCB0aGUgY29udGVudA0KPiAiVGhlIGZvbGxvd2luZyByZXN0cmljdGlv
bnMgYXBwbHkgdG8geW91ciB1c2Ugb2YgdGhlIFNlcnZpY2UuIFlvdSBhcmUNCj4gbm90IGFsbG93
ZWQgdG86DQo+IA0KPiBhY2Nlc3MsIHJlcHJvZHVjZSwgZG93bmxvYWQsIGRpc3RyaWJ1dGUsIHRy
YW5zbWl0LCBicm9hZGNhc3QsIGRpc3BsYXksDQo+IHNlbGwsIGxpY2Vuc2UsIGFsdGVyLCBtb2Rp
Znkgb3Igb3RoZXJ3aXNlIHVzZSBhbnkgcGFydCBvZiB0aGUgU2VydmljZSBvcg0KPiBhbnkgQ29u
dGVudCBleGNlcHQ6IChhKSBhcyBleHByZXNzbHkgYXV0aG9yaXplZCBieSB0aGUgU2VydmljZTsg
b3IgKGIpDQo+IHdpdGggcHJpb3Igd3JpdHRlbiBwZXJtaXNzaW9uIGZyb20gWW91VHViZSBhbmQs
IGlmIGFwcGxpY2FibGUsIHRoZQ0KPiByZXNwZWN0aXZlIHJpZ2h0cyBob2xkZXJzOyAiDQo+IA0K
PiBbMV0gLT4gaHR0cHM6Ly93d3cueW91dHViZS5jb20vdC90ZXJtcw0KDQpJJ2QgYmUgZG93bmxv
YWRpbmcgdGhlIHZpZGVvcyBhcyBhIHJlcHJlc2VudGF0aXZlIG9mIHRoZSBMaW51eCBGb3VuZGF0
aW9uLCB3aGljaCBpcw0KdGhlIGVudGl0eSB0aGF0IGhvbGRzIHRoZSBjb3B5cmlnaHQgb24gdGhl
IHZpZGVvcy4gIEl0IG1pZ2h0IGJlIGVhc2llciBmb3IgbWUgdG8gDQpnZXQgYWNjZXNzIHRvIHRo
ZSBMRidzIFlvdVR1YmUgYWNjb3VudC4gIE1heWJlIHRoZXJlJ3MgYSAiRG93bmxvYWQgbXkgdmlk
ZW9zIg0Kb3B0aW9uIHdoaWNoIHdvdWxkIG1ha2UgdGhlIHNjcmFwaW5nIHVubmVjZXNzYXJ5IChJ
IGRvbid0IHBvc3Qgc3R1ZmYgdG8gWW91VHViZQ0Kc28gSSBkb24ndCBrbm93IHdoYXQgZmVhdHVy
ZXMgdGhlaXIgYXV0aG9yIGFjY291bnRzIHByb3ZpZGUuKSAgQnV0IGlmIGl0IGRvZXMgZW5kIHVw
IGJlaW5nDQpuZWNlc3NhcnksIFlvdVR1YmUgY2FuIGhhcmRseSBjb21wbGFpbiBhYm91dCB0aGUg
Y29weXJpZ2h0IGhvbGRlciBkb3dubG9hZGluZw0KYW5kIGNvcHlpbmcgdGhlaXIgb3duIHZpZGVv
Lg0KDQpJbiBhbnkgZXZlbnQgSSdsbCBjaGVjayB3aXRoIHRoZSBwb3dlcnMgdGhhdCBiZSBhIHRo
ZSBMaW51eCBGb3VuZGF0aW9uLCBhbmQgbWFrZSBzdXJlDQpJIGF0IGxlYXN0IGhhdmUgdGhlaXIg
cGVybWlzc2lvbi4NCiAtLSBUaW0NCg0K
