Return-Path: <linux-embedded-owner@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 00B069792A
	for <lists+linux-embedded@lfdr.de>; Wed, 21 Aug 2019 14:23:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726484AbfHUMXz (ORCPT <rfc822;lists+linux-embedded@lfdr.de>);
        Wed, 21 Aug 2019 08:23:55 -0400
Received: from mail-pr2fra01hn0242.outbound.protection.outlook.com ([52.101.141.242]:37007
        "EHLO FRA01-PR2-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726227AbfHUMXz (ORCPT <rfc822;linux-embedded@vger.kernel.org>);
        Wed, 21 Aug 2019 08:23:55 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MUfSHjx18/KSbbCXtx8D1ncExBjU0mGEjl+Jxt9J7jwPYtnEWVh7ITh4rvsA8WqfpsYsB5Ls0B4WYUYZHOoZyeZlwyBxYAoTAnFxq9PcNdTZxDt4MvtLp9YCVf+tzTUGD3/BEpfK4tiZnYVKlTy0cims+Qvl1VIL9+OV/yzhbG12kVJK/ZVAeXM/X+Yf82WWYIzcFJV4ayq7wCcr/T4WZ4LbsGgZRb2sEnlXXM30VI/RZCCmb6Ts7MDwJ0c65buI2gvNQFXrSw/bj4nv39v9YgkhXsb7V+IO5H+2V/qZUTTJa+yMSLGPg3Kpr4j39VDGbUYYC7PrFGyxD2BqcprZNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M56NI7BLsHahIzx12/uk6EM5Kt0eYf6xIEHooe0Zp2M=;
 b=F38UG469wlLRLObNOlQyYWCOrdYpxhau06i4Q7ZCT9fXt16iaOU4jnv0xU2RTffy2TVU9dLY13SOkq0GOcMO8dW77NUvm85QSyLE/46AzQpgUcrwOu/ZrWYS2w10FWrwrs/R1c0QBuBXukOUx2FUb+7t8dnrC2NQv5gbM0M7tE/OdHD8TWazMIs8sCGVjl5Y1QLa7MQFLeBJQ7ROjXEEMCoB96W6vMd3wmLOZeKG7h6RiCDYtQJlxxKyz4GTvkoZuPcTd20mhT6g0ugq0JZ6tpuwr9iFpWPc9GmCeZ9sqOOdJx21p+AxwWs7+GKXKc2MwB1MD8rmfw5kZrPaQcCqDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=etu.univ-amu.fr; dmarc=pass action=none
 header.from=etu.univ-amu.fr; dkim=pass header.d=etu.univ-amu.fr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=AixMarseilleUniversite.onmicrosoft.com;
 s=selector2-AixMarseilleUniversite-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M56NI7BLsHahIzx12/uk6EM5Kt0eYf6xIEHooe0Zp2M=;
 b=jeJen1PXx0rlGYHTUqitpsggtbjP8Yl2IZ5MrtlYteb4XUwBLEdMjM59FFxvG5kRGu02zWeE4XjYVN6L/KWGq2sp0A8qhx905mQ783KqRKIVlLZ0ctzYwXpXQWjopqA3g7dkt0SAUS5MIffX60mSnkt/RQz6BVy8mCRFGLmAdiM=
Received: from PR0P264MB0281.FRAP264.PROD.OUTLOOK.COM (52.133.66.20) by
 PR0P264MB0844.FRAP264.PROD.OUTLOOK.COM (52.133.71.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 21 Aug 2019 12:23:52 +0000
Received: from PR0P264MB0281.FRAP264.PROD.OUTLOOK.COM
 ([fe80::e13f:7998:f994:59fe]) by PR0P264MB0281.FRAP264.PROD.OUTLOOK.COM
 ([fe80::e13f:7998:f994:59fe%5]) with mapi id 15.20.2178.018; Wed, 21 Aug 2019
 12:23:52 +0000
From:   DEBANNE Priscille <priscille.debanne@etu.univ-amu.fr>
To:     "linux-embedded@vger.kernel.org" <linux-embedded@vger.kernel.org>
Subject: Re: Priscille
Thread-Topic: Priscille
Thread-Index: AQHVWBbyrgtI7evlO0G1qO5Pj0BifA==
Date:   Wed, 21 Aug 2019 11:52:45 +0000
Message-ID: <PR0P264MB0281F700B86B08A11E68534FE4AA0@PR0P264MB0281.FRAP264.PROD.OUTLOOK.COM>
Reply-To: "aymantax@hotmail.com" <aymantax@hotmail.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR05CA0064.eurprd05.prod.outlook.com
 (2603:10a6:208:be::41) To PR0P264MB0281.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:4::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=priscille.debanne@etu.univ-amu.fr; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [41.203.73.114]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54486cfb-e5aa-4173-e1a0-08d7262e14d2
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:PR0P264MB0844;
x-ms-traffictypediagnostic: PR0P264MB0844:
x-microsoft-antispam-prvs: <PR0P264MB08446ED0D3710DBBF9EFF114E4AA0@PR0P264MB0844.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(366004)(346002)(376002)(396003)(39850400004)(136003)(199004)(189003)(6506007)(6436002)(386003)(10916006)(2860700004)(6666004)(6916009)(486006)(8676002)(256004)(14454004)(14444005)(26005)(7116003)(186003)(786003)(3846002)(5003540100004)(478600001)(316002)(52116002)(6116002)(62860400002)(66806009)(476003)(2501003)(7696005)(5660300002)(99286004)(43066004)(55016002)(74316002)(558084003)(71190400001)(71200400001)(53936002)(25786009)(52536014)(9686003)(305945005)(5640700003)(229853002)(66946007)(8936002)(3480700005)(66446008)(2906002)(66476007)(66556008)(64756008)(81156014)(7736002)(2351001)(66066001)(102836004)(81166006)(6246003)(221733001)(33656002)(8796002)(86362001)(5716007);DIR:OUT;SFP:1501;SCL:1;SRVR:PR0P264MB0844;H:PR0P264MB0281.FRAP264.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:0;MX:1;
received-spf: None (protection.outlook.com: etu.univ-amu.fr does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zVijxx1HgUTUKxMO3Fa6ANihuqZbysimvUzV4Er4hnKF77ziJEOBJiORJcUpi3xRTNRcUAIWypBWv4RlNPn/t9rcVEqWSYRSGn2BnxsEfsXfACXesSEFGiDReIuvup5HAiXPPOyRu7b78cteTfWSBlix/RwQRYfuSBUM9t0/LGL9BjU5icbsHWeCJED6CCoI7S+dhDYcSxNacd6TFytM7XAx9eFzqGPKaud56j+xpoP1evgFzMRsoh7PkxjrlG481sRpAfWlOkq5RnB8ZitTRDksuOOSVjGLFjybmL5PloFOhoII88QB5jaY2EI42gaOahCOIOLrCF1tRUIzyswhDn6HTZkmKhkd+qr38hWe0bJTF/GNeiXmanOKhdQNNBaYIvyC+SgWCPYW42JZ5z8tiiqrGzg0j2/0GNU7nex/IRY=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <811573F3020B1444B77E79F5C7472ABB@FRAP264.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: etu.univ-amu.fr
X-MS-Exchange-CrossTenant-Network-Message-Id: 54486cfb-e5aa-4173-e1a0-08d7262e14d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 11:52:45.7149
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a9f1c4f7-38f4-4d38-8a3c-4b6dbe981cea
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qK0NVsAbd7uNCp3KiixP5SKy/bUikWLpRFJaGHVHWSh5TjvEXTsriDQrzX/jPUJiSaLzHAZE0ZyOarbePC4MLs4RgQDXokr79Q5XAQVXvTNh7Z3+Sq4ZKHSqC89Hj0Eg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB0844
Sender: linux-embedded-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-embedded.vger.kernel.org>
X-Mailing-List: linux-embedded@vger.kernel.org

Good Day,

We wish to make a trail order from your company, Kindly send me your price =
list or catalog asap.

Thanks.
Priscille
Sales Rep.
