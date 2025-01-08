Return-Path: <linux-embedded+bounces-94-lists+linux-embedded=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-embedded@lfdr.de
Delivered-To: lists+linux-embedded@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4977A0671A
	for <lists+linux-embedded@lfdr.de>; Wed,  8 Jan 2025 22:20:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 03D653A5434
	for <lists+linux-embedded@lfdr.de>; Wed,  8 Jan 2025 21:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B5A62036FF;
	Wed,  8 Jan 2025 21:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sony.com header.i=@sony.com header.b="S5FmOI5A"
X-Original-To: linux-embedded@vger.kernel.org
Received: from mx08-001d1705.pphosted.com (mx08-001d1705.pphosted.com [185.183.30.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FC71F8F14
	for <linux-embedded@vger.kernel.org>; Wed,  8 Jan 2025 21:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=185.183.30.70
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736371202; cv=fail; b=IIHg7VlQ0Esesjv373/hS0hiKs75cdAp0SJyQ0m4bbpoAcGUKH0IFTWZ/w9STmR6chVy+UyT2jt2zPup21UWIykIoX9GNU2nWfIxot+/D+OnJXOQbmhgzACbwYhpZOuRz+H1kXJv645F+Z1yKgGuLd/j1rKLXGg/pSJSklhd5qk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736371202; c=relaxed/simple;
	bh=1kX7Xwexwg+XCmnmjUg8lF6cRSCtOFGWMxV+eMM3Z8o=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=tbCHEhx4Ix4U2YXbeSRI/pHiXfuYkmJlOOm/+FPeiUm23ijTEihXvQhhTivTQPenkazkDDQMmNsQA7Htv4u/z9GfbwsYOEA2VpCREBUqD/GuTBd7jBTxYqd/nX15dRWug+d1Z8qX6Ebm5tN5tl+v92SWqSITivlBw69guBMzUPs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sony.com; spf=pass smtp.mailfrom=sony.com; dkim=pass (2048-bit key) header.d=sony.com header.i=@sony.com header.b=S5FmOI5A; arc=fail smtp.client-ip=185.183.30.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sony.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sony.com
Received: from pps.filterd (m0209323.ppops.net [127.0.0.1])
	by mx08-001d1705.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 508L1et9023722;
	Wed, 8 Jan 2025 21:19:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sony.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=S1; bh=1kX7Xwe
	xwg+XCmnmjUg8lF6cRSCtOFGWMxV+eMM3Z8o=; b=S5FmOI5AswFyTDCSrc1Ogb8
	RxTYBGbVNvsO4bEA35GNc/VTV9If75mcs75bxqV4fq2pmev/0ffN7UEGBtOpY8vb
	XsEpcFfNgsqHhFOrtWHxNtVJ4B9V6y4UEBOwQb1+e+WLAbT/9o/vr9UpYE90fYqS
	2vbXIS9k2jAzE3E+nSsJbi5aHRyERn5gmzC08RIqSWwprjx4lgkAVLxDCkKJ2b9z
	nS4UsBeLsoX1zqpUXffodRLNxMgLr1SUUSJ6oCi2XEfDW9EyX3WR/oxXnd4CElXS
	2BznkLfGEkfZDf22FZOOo1SVjTZBRJQkIOYIo2882ZqNXWZiuiePYfz2mSjgGOw=
	=
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04lp2047.outbound.protection.outlook.com [104.47.74.47])
	by mx08-001d1705.pphosted.com (PPS) with ESMTPS id 43xvaw3q9m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 08 Jan 2025 21:19:56 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l4eRtSTf3qZagvbkDkT3yyVEtrjBTGfefR/j8N9zC7TtX4FKRxLb/+EDZDBoVh891OgdIjKZJdBrte0Qh/mNasQX8lk+6gIPCaWdKaQnS0cAN2OztZ5S7VW1+JvsjHwso2knnS/DR4QVxvspNnE2v4XidwbTkpWE0A6FzsbOipLEOIeW8cPwGLofhKYKs0uwtmLC4vnJf+rlxV/jgR2qmNSadsW6eTkV0CeQObTUiWv3n3kZfsAPlodZjEKQGsLuoyw+aZgboM0YFlz6GxiSv8IwTYugcdTXNdm4e27bFYYM0fmhUf47f69IJjDubvipT7ajesfxl9sblSD/Lexruw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1kX7Xwexwg+XCmnmjUg8lF6cRSCtOFGWMxV+eMM3Z8o=;
 b=ASb3oICFBzWNyTsZbiG1Wqo0vESkuaIYJZjKzot3papajjVhTfKLzh6CrcSv5+kPa2Z8m0Y/nK7tNYEP6A1+3yXHtZcT4DDcfaasnaoVxAsi4mty/TpxFv89H0utHjdkg4mFUwsV4d+fhjC4O8XL0OOdk1OYsfYMUn9OvLRryNprMTkpVm6UAeaTp2IuWbCCQZPB+8t92KSfd1n7ydXmmkR/V6uVB1qbdDdTPTGkL9Wz5WN9B6JyoIh9eSDPr8/ds4pxriDR+DHptJ7xDO4J6SUAdQRaPMmKZbcna0BiaeYgY60V4oyQVdOkrv0GKQZhNBtZgSK63rYDt+Dwz/vhtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
Received: from MW5PR13MB5632.namprd13.prod.outlook.com (2603:10b6:303:197::16)
 by BN0PR13MB5247.namprd13.prod.outlook.com (2603:10b6:408:15a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Wed, 8 Jan
 2025 21:19:52 +0000
Received: from MW5PR13MB5632.namprd13.prod.outlook.com
 ([fe80::df7c:a5b9:aa3e:9197]) by MW5PR13MB5632.namprd13.prod.outlook.com
 ([fe80::df7c:a5b9:aa3e:9197%4]) with mapi id 15.20.8314.015; Wed, 8 Jan 2025
 21:19:52 +0000
From: "Bird, Tim" <Tim.Bird@sony.com>
To: Marko Hoyer <mhoyer.oss-devel@freenet.de>,
        Shankari
	<beingcap11@gmail.com>,
        "linux-embedded@vger.kernel.org"
	<linux-embedded@vger.kernel.org>
Subject: RE: [boot-time]
Thread-Topic: [boot-time]
Thread-Index: AQHbWiLTBybXJIS1AU23EMmh9EFgybMNPmaAgAAoRICAAAULMA==
Date: Wed, 8 Jan 2025 21:19:52 +0000
Message-ID:
 <MW5PR13MB5632E7FD9A5E76949625BA54FD122@MW5PR13MB5632.namprd13.prod.outlook.com>
References:
 <CAORPcfVRobA+u5q7aPboC=3iY8dibDUB0920Z=Z0VgpQEupKJw@mail.gmail.com>
 <MW5PR13MB5632841906910ED152E7AE3CFD122@MW5PR13MB5632.namprd13.prod.outlook.com>
 <b0dd83c8-eb23-494b-8f23-ea8c084405a6@freenet.de>
In-Reply-To: <b0dd83c8-eb23-494b-8f23-ea8c084405a6@freenet.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR13MB5632:EE_|BN0PR13MB5247:EE_
x-ms-office365-filtering-correlation-id: 1462873a-56ae-42f1-a6c5-08dd302a3103
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?L25aVmVuWDJJdDZpYVdnMms0ak5BUWhsMWZqTERNZ2JVOTFCK3RBVVpjOHNH?=
 =?utf-8?B?TXlXWkcrTXJJU3B4QTRxQktFLzVGR2duVzN3ZTJ4MXhrZzF2OGx1Y3o2cUQw?=
 =?utf-8?B?TTA0bFQvYWVyWmVieVhkcy9vdVpMNGMyVzZwV1dsampQcHFReVAwL3ZqbTZ5?=
 =?utf-8?B?ekVxT2J5Z2RqNnUwd1AwOWJyWXJBTExlTERad25zbmJDdlRyWlNPVE5sd2FF?=
 =?utf-8?B?c05ZWDNUWjVuMHZpOEMwQXZ3dGpoZWRnODVvMVJwU0JYSXhjbmw5WHhpdGpB?=
 =?utf-8?B?L3RnaEtTdEhDMWxBbzVjcHIvcFJRbmx2NXRtZk9PWDZydUZzT0U2SHoyL3R0?=
 =?utf-8?B?MCt4UHpqSU5razFFdTN3MXdseS9INm9vN01mSnBZajc4ODZaVVJxUUkrTXdz?=
 =?utf-8?B?cG5lOFpDOEdhck43Qm90NjNLeE5KL040YlpiWnRkOC9yT3dRc2YzbTV6czBS?=
 =?utf-8?B?MloycUllT3d2VmcyVkxTa2lYVytISVdsZHcwV0JhTWl1eUFKL0hvQWJkb0k4?=
 =?utf-8?B?VUxFNUJTZkovMG9RV1ZVaGdzbk5ZOFdRemxuVDVIc3NZZ0VaUE1lcXJhUEV2?=
 =?utf-8?B?aFA4OGU1NTJ2M00rNTZiN2xHQWQxQkpCWWJoNTMwcTcwb2E5NEcxUzVwcFZt?=
 =?utf-8?B?bU9mcVVQb0hHRHpRZDRqZ0lJenNCYTN3dkFGb0lQalVubERIUjJpOERTanNP?=
 =?utf-8?B?cWE5elUrN2JLY1FCUXM5VnhRVnY3UEtIdEtJazJuY0pCUEcycnZjSWRJUG5W?=
 =?utf-8?B?ZFFvOENndjdFRFZhUHNpTEZKVVlxNzAyNEZ5UHVFWjZBd3FnVllYQnM1ZUQv?=
 =?utf-8?B?NTV0T3BQVHU5TFNxVy92VVg5R0RqZkN3b1VERGNiUVZLMkx0b3REVTVpaTFY?=
 =?utf-8?B?UVNxNkFiYmxWazBQYWdJbFR3OHYrTE82ZERSbEpReFEyMkZoNkY1TEk2ZFRm?=
 =?utf-8?B?NDRxSE8rV1JmNUJrSnBqV1hROTZnamlwNkQxcXhvZzFjeUNPallGRTVGVkNo?=
 =?utf-8?B?OHZiMDFNWDNGY1VtbUM1a1MzaVhjR0E5VHozOTMwamx4MmpxeEY0WHdZMDRn?=
 =?utf-8?B?QjQ5ZGJBK1hNR2owVGdHci81Q0t4R2hhR3M4M01temprMG9EdzhRQ2NpbjR0?=
 =?utf-8?B?WS85UkM2SFU3MHRYRlFFck1GcWFMUk5DSWJLMm1wa09FTG94SUVUMUZGSThn?=
 =?utf-8?B?bkJqNy9CeVFhcElxM28xRkdtQmxLL3NHUklYTXVyQUVIa0NQTzlxQm9WYzNX?=
 =?utf-8?B?WVhQS1haT2RZL1FCcXhZLy85aFlBQ1hONWJURFZuUjJxTFhnd3JQbjUrbjBQ?=
 =?utf-8?B?SHBuU2tLUVpVZ0VKZWNleC9nbHVqVFpRcHk5RWdOQ2Q5b0twS3lEcEM4MEUr?=
 =?utf-8?B?WmFSb3FoVUpjSkVwblFlWDBnUnJaL3dmZkVWZTdYZk92SzB1d1B1ZWpPUmNa?=
 =?utf-8?B?MFhubnFqZHpQZmloM2d1RXJMZ0ZrdDBUZElHRnhMeCtHbjZsSTMvL0FlTkZE?=
 =?utf-8?B?RU9ZYWxQZDVtMndWSm9GamJtSU15VTRQbGpvbzczNFVZS09wajZFNmQzR0g1?=
 =?utf-8?B?bkNjTGs2bWhIdDliVUpmcXVZaEJHZFRGQXBjR2g4c0hXa0g3OEZZbTlxZ2tK?=
 =?utf-8?B?eUtXazMvTmt6cytrSEorbkI4RDJHUCtxU0VxK1ZyOGwydVpabFJlNi9OMVhI?=
 =?utf-8?B?UjVyUExjSktpeUUraC9ORmNjYzUyNldMYkZqYUhCQVFHajZvcHMzUUFhU2NW?=
 =?utf-8?B?Ty9Lcm5GeUJ0b3ozZ1hFQ1FTL211TjJybzJ3VmdvTDFvd3grRW8vQ0ZMMENL?=
 =?utf-8?B?NDRodTJacGR5dHFOSGtobUQ0RGZNaUJlbk44bi9NQXhDK1F3UzR3RllSWmov?=
 =?utf-8?B?YWdoUlo4WW03ZHlURWI2dVFVQlo2eDFBWTdvWGdqNkZKa1E9PQ==?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW5PR13MB5632.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?cldWY3BsVC85c2Z0U1cyb0liNSsvUUFtVUx6SitnYnFZMmRUbkJsWHhLWTJK?=
 =?utf-8?B?ZVByWkhYeWs5Q1BPTFFuY0tWMnlRb2Z3Tkg0Qkh4UXRsalVCdTdaVXNzRWkz?=
 =?utf-8?B?NnBwTjRsc0hJdi9CRGV1OGIwRmRtbGhTMVdDSS9kcGc5VCtpazdJMlVZNjQx?=
 =?utf-8?B?SUVrVFAwSzY3YkxLWjQ5VFk1a0J4R010UEV6V3dNMDk5ZFpkeEZoR2gvWUlF?=
 =?utf-8?B?V0N2S3Y4bk5yaVpWY3Q3ZTVFMUs4VnVHQXBycUhOVFoydzgyQnJ6UVZkYlAr?=
 =?utf-8?B?WVl3WWdDbmFlTllvc09BMTgvTnBmaEZ5ZmEwZE00bGhHUDkwL3V1MXNBeU00?=
 =?utf-8?B?YWpDK3hhSkRLdWljb05VZ2RlY0JkUDh1S1JNZjEwOFdoRjIxcEVZeVdmMXB0?=
 =?utf-8?B?UnpFZEoySjdaY3VrdGFGVnlRVnEzendYS2MzZGM1cEhFNjJBNEZadlh1L2ZC?=
 =?utf-8?B?aFNlb1ZPb2gzRWx6OTYxMjNIcVd0Z0dxQUFIWTBUZU1zK1Bpd0dUdGlnUmI2?=
 =?utf-8?B?UEY3Q1Y4QVBDNEd6Z2Z1bHBkZGtUa3kyaWF6cGEvTkkrQmlESGpMNTlPZlRz?=
 =?utf-8?B?b2hIQzg1SUtsOU02M0ZlZXdRQU5VVVdOZTFBRHJsVTVxSi9TNDRmbG9OdW1z?=
 =?utf-8?B?bUc4ODBXL0VtSEp1TmtCeTJ4VXVmeG5wUVhVY0VSVHVVbmE0S2VwM2x2Tk9i?=
 =?utf-8?B?cmVYTTlTZlZ2VmZrMGhFL2ROTFZWSzM0S0ZaenF2YzQ3eW0rMTZsd3poNjRG?=
 =?utf-8?B?cjN4aE81KzhLNDFiWVdhNnZycEl0T1I4QXdZV3l5aVVJbEh0aXRXek5ZTVQ2?=
 =?utf-8?B?TXhtcENlYzhLdW9yK0x4L0Z2T0xXR3diZVp4c3l1alp2S1ZNVWlFaHNURWRZ?=
 =?utf-8?B?Q09XeVpXSWpzR1hjM0tyYU9HVm5jVzZXdWdDNEtkQW1pR2dWSS9SbFJLS29F?=
 =?utf-8?B?UHJVNHNjQzdZT0pMcTZEejJBakVER1ozbklSb0NGMUxIUFFOd3N5MHBjUG8y?=
 =?utf-8?B?MUZBM05SZzNpM3FuRXR2S1p0TitMUDZ1SkxpM1pPYWJsSlZpTTloM1AvcjNJ?=
 =?utf-8?B?Z21COFY3Ym1RemdJeURrditiRnhPc0F0TnhHdlZXdUI2YUZEaDVaRWQ5UUlU?=
 =?utf-8?B?VGdlbmdBQUZjcHpLYmhlNXc0SFNqZHVzYVN6THByS0VpcmEwenlqTkpQRVIx?=
 =?utf-8?B?ZE5SSGduNEx5b3lFelJtem9vcjN4cVhHUXMrTUJlZzZSOHZmUTJJN2ZYRkNr?=
 =?utf-8?B?SEhPY1BtL2IxR1VxVmY4UStDSUFNNVRMaUdHNFRFeVhhakVGZzR4dFUzUEEw?=
 =?utf-8?B?TjViUVljZlE5NWhvQWRueUdVR1dyR0dMZ0dKQlJDWi9LcWk1bWhSRm9tLzJp?=
 =?utf-8?B?ZXk2ZUJzZytPT0dUWnZCVHh0Rm9tOUJjM01XUlhWR3lQN0tRWExOcVQ0QUVm?=
 =?utf-8?B?dXRhdDFBWkRBODJrYTFxa1FGd01oMDJzM2JYT2tpQ2RRWTd4ZUF5cnYxQkN2?=
 =?utf-8?B?eVZLcHkxTzRrVW5XM2lMTU5lOXplOEFQeXM2ODZFeFJ1R3dsbzQ1R0ZzN0Zo?=
 =?utf-8?B?REtyTXdITW9tWG9oQXVjUHhvSXYzN0N1RkVsc0pLdUJYRXpKNkdKSm41dXQ3?=
 =?utf-8?B?S09xMlpqK1JoeER2a2IvWC92QXAwZW5XNDZxZy9iT3JBK2pCTmRkVlZlNU0y?=
 =?utf-8?B?d2lEZTZyT3V4TFg4YkxURm9zbnJtQmhXVGx5OW5LeFRRVCtiRGVKRGxVNjc4?=
 =?utf-8?B?elBtZFZjQ3lDR3U4dE1yaXZGd1hrWnB4U05IbWZoaVNnaktjcFlPMVVZM3Js?=
 =?utf-8?B?RGJyR09yUU9XaVlJR1F3QjZCOTBLM0JLdjNIeVZSZXQ1VXJWbGs1eFZUS2tY?=
 =?utf-8?B?ZnRoWWc3a2xkYjFFR05JclR2SEw5Z3g1ZE8zY24yaHJoQmcwU0cwWW84TFgr?=
 =?utf-8?B?eS8yaENYTVZEaTVqeWtyUENuc20zTlVXbHo5ZGVPNlhXbGNIUFQyWHIrUXJy?=
 =?utf-8?B?ZVlJSWNraWYrYVRyUTE4SUNOU05Bb0tLSjdLQm5qL2F6NWdBcmZtMUJ5ZjZz?=
 =?utf-8?B?b2RVZW8wRWRWRzVGTkMrQklURmpYYnljRHNrOGM2VVAvZThuSjJYR3NORDBT?=
 =?utf-8?Q?zXak=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-embedded@vger.kernel.org
List-Id: <linux-embedded.vger.kernel.org>
List-Subscribe: <mailto:linux-embedded+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-embedded+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	GtBS75LgxbduXNkKiVEZEjR15GObvPYIqam8JQbIDsThUqvTCxxy8MyV0EI8fi9X2w8ECUVqbb5p1vjWx1sfXE6cDkzZ5UpWYF49+yB1nvj2J2ds8sxVqs2bjS4brikajiW6evAdNghqH1PNuV7+ehsfYfRXwuEiTN/nsmhh3M/uRUOwEyKKcuFYYUdgvTbnztK1WKN/fRIHTK5qf+5XUQGxuatXRq0xfRo8cd5OuwfMSnL9UHZjp16aQqR9kFcOBOt35GKupcxmncHDFncl0kqPTw+Wsx3ZK+PsN9dEVmwnjBE/NJ1oFnviZxnQeVoonVjAjluyPuNzK0PE/+4EEUlI/Xro1tJW7rGuE7KK/MCMUJ8+8Rk+YnL3yCKtxZUkqwMYipsRfnNJAsh9N8rM3h6A8MbUgdkfhc/nmjaw40VxBaKzw7ojNgeQyTkXN9Gb9Q1O5GfHS74JD9XdvO7yQDvI2MpbZiWoy6sYxuIiqdUK/a6pCj2y/0FaXm/kjMTNqrW9mVm8ZbND6gjo11PDSp/Ju6UFAIDGVhaqzfqt8vZVYbirS7DlNBGn80Ez3u7lyC6qvdrZtSAUhwwjMX1UaaUEF5VjHxHtY2iR3HJZQkJyasSxRsB5RfppzI+bsal0
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR13MB5632.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1462873a-56ae-42f1-a6c5-08dd302a3103
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2025 21:19:52.5448
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CilBWewUTVKHxUflxke/TKhLa1RlzZayS1h2nixMCDaahfa5wdpzCPkx6H9/13DNdyOW/w98vGXOZ4QhelG9uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR13MB5247
X-Proofpoint-ORIG-GUID: PVskhTMc4vlVhRPHZ1W0yn-hnftA70GT
X-Proofpoint-GUID: PVskhTMc4vlVhRPHZ1W0yn-hnftA70GT
X-Sony-Outbound-GUID: PVskhTMc4vlVhRPHZ1W0yn-hnftA70GT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-08_05,2025-01-08_01,2024-11-22_01

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFya28gSG95ZXIgPG1o
b3llci5vc3MtZGV2ZWxAZnJlZW5ldC5kZT4NCj4gQW0gMDguMDEuMjUgdW0gMTk6MzMgc2Nocmll
YiBCaXJkLCBUaW06DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206
IFNoYW5rYXJpIDxiZWluZ2NhcDExQGdtYWlsLmNvbT4NCj4gPj4gSGkNCj4gPj4NCj4gPj4gSSB3
YW50ZWQgdG8gcHJvdmlkZSBhbiB1cGRhdGUgb24gbXkgcmVjZW50IGNvbnRyaWJ1dGlvbnMgdG8g
dGhlIGJvb3QtdGltZSByZWR1Y3Rpb24gcHJvamVjdC4gSSBoYXZlIHJlY2VudGx5IHN0YXJ0ZWQg
Y29udHJpYnV0aW5nDQo+IGFuZA0KPiA+PiBhbSB3b3JraW5nIHdpdGggdGhlIGJlYWdsZXBsYXku
IEkgaGF2ZSBiZWVuIGFuYWx5emluZyB0aGUgYm9vdCB0aW1lIG9mIHRoZSBpbml0IHByb2Nlc3Mu
IEJlbG93IGlzIHRoZSBvdXRwdXQgZnJvbSB0aGUgc3lzdGVtIGxvZzoNCj4gPj4NCj4gPj4gZGVi
aWFuQEJlYWdsZVBsYXk6fiQgZG1lc2cgfCBncmVwICJpbml0IHByb2Nlc3MiDQo+ID4+IFsgICAg
MS40ODA0OTBdIFJ1biAvaW5pdCBhcyBpbml0IHByb2Nlc3MNCj4gPj4NCj4gPj4gTW92aW5nIGZv
cndhcmQsIEkgcGxhbiB0byBleHBsb3JlIHdheXMgdG8gbW9kaWZ5IHRoZSBjb21tYW5kIGxpbmUg
YW5kIGZ1cnRoZXIgaW52ZXN0aWdhdGUgdGhlIGRhdGEgdXNlZCBmb3IgU0lHIGFuYWx5c2lzLiBU
aGlzIHdpbGwNCj4gPj4gaGVscCBtZSBnYWluIGEgZGVlcGVyIHVuZGVyc3RhbmRpbmcgb2YgdGhl
IGJvb3QgcHJvY2VzcyBhbmQgaXRzIHBlcmZvcm1hbmNlIGNoYXJhY3RlcmlzdGljcy4NCj4gPj4N
Cj4gPj4gUGxlYXNlIGxldCBtZSBrbm93IGlmIHlvdSBoYXZlIGFueSBzdWdnZXN0aW9ucyBvciBh
cmVhcyB3aGVyZSBJIGNvdWxkIGZvY3VzIG15IGVmZm9ydHMuDQo+ID4gSGkgU2hhbmthcmksDQo+
ID4NCj4gPiBJdCBzb3VuZHMgbGlrZSB5b3UgYXJlIG9mZiB0byBhIGdvb2Qgc3RhcnQuICBJIGhh
dmUgc29tZXRoaW5nIHRoYXQgbmVlZHMgdG8gYmUgZG9uZSwgdGhhdCBJIHRoaW5rDQo+ID4geW91
IGNhbiBoZWxwIHdpdGgsIGFuZCB0aGF0IG1hdGNoZXMgd2hlcmUgSSBiZWxpZXZlIHlvdSBhcmUg
aW4geW91ciBzdGF0dXMgd2l0aCBiZWluZyBhYmxlDQo+ID4gdG8gZXZhbHVhdGUgdGhlIGtlcm5l
bC4NCj4gPg0KPiA+IEluIGdlbmVyYWwsIHRoZXJlJ3MgYSBsb3Qgb2YgaW5mb3JtYXRpb24gb24g
dGhlIGVsaW51eCB3aWtpIHdoaWNoIGlzIHN0YWxlLCB3aGljaCBuZWVkcyB0byBiZQ0KPiA+IHVw
ZGF0ZWQgb3IgYXJjaGl2ZWQsIG9yIG1heWJlIGV2ZW4ganVzdCByZW1vdmVkLg0KPiA+DQo+ID4g
VGhpcyBzZWN0aW9uIG9mIHRoZSBCb290IFRpbWUgcGFnZSBoYXMgYSBsb3Qgb2YgbWF0ZXJpYWwg
aW4gdGhpcyBjYXRlZ29yeToNCj4gPiBodHRwczovL2VsaW51eC5vcmcvQm9vdF9UaW1lI2tlcm5l
bF9zcGVlZHVwcw0KPiA+DQo+ID4gQ2FuIHlvdSB2YWxpZGF0ZSB0aGUgaW5mb3JtYXRpb24gb24g
dGhlc2UgMiBwYWdlczoNCj4gPiAgICogaHR0cHM6Ly9lbGludXgub3JnL0Rpc2FibGVfQ29uc29s
ZQ0KPiA+ICAgKiBodHRwczovL2VsaW51eC5vcmcvUHJlc2V0X0xQSg0KPiA+DQo+ID4gVGhpcyB3
b3VsZCBjb25zaXN0IG9mIHJlYWRpbmcgdGhyb3VnaCB0aGUgbWF0ZXJpYWwsIGFuZCB0ZXN0aW5n
IHRoZQ0KPiA+IGRlc2NyaWJlZCB0ZWNobmlxdWVzIG9uIHlvdXIgbWFjaGluZS4gIFRoaXMgd2ls
bCBpbnZvbHZlIGJvb3RpbmcgdGhlDQo+ID4gbWFjaGluZSAyIHdheXMsIHdpdGggYSBwYXJ0aWN1
bGFyIGtlcm5lbCBjb21tYW5kIGxpbmUgb3B0aW9uIGFuZCB3aXRob3V0DQo+ID4gaXQsIGFuZCB0
aGVuIHJlcG9ydGluZyBiYWNrIHRoZSBmaW5hbCBib290IHRpbWUgZm9yIGJvdGguICBZb3UgY2Fu
IHVzZQ0KPiA+IHRoZSB0aW1lc3RhbXAgZm9yIHRoZSAiaW5pdCBwcm9jZXNzIiBzdHJpbmcgYXMg
eW91ciBmaW5hbCBib290IHRpbWUsIGZvciB0aGUNCj4gPiBwdXJwb3NlcyBvZiB0aGlzIGV4ZXJj
aXNlLg0KPiA+DQo+ID4gSGVscGluZyBtZSB0byB1cGRhdGUgdGhlIGVsaW51eCB3aWtpIG1hdGVy
aWFsIG9uIGJvb3QgdGltZSB3b3VsZCBiZQ0KPiA+IGFuIGltbWVuc2UgaGVscCwgYW5kIGlzIG9u
ZSBvZiBteSBtYWluIGdvYWxzIGZvciB0aGUgYm9vdCB0aW1lIFNJRyBpbiAyMDI1Lg0KPiA+DQo+
ID4gRG9uJ3QgaGVzaXRhdGUgdG8gYXNrIHF1ZXN0aW9ucyBpZiB5b3UgaGF2ZSBhbnkuDQo+ID4N
Cj4gPiBCVFcgLSB5b3UgY2FuIGp1c3QgcmVwb3J0IHlvdXIgZmluZGluZ3MgdG8gbWUgYW5kIGxp
bnV4LWVtYmVkZGVkIGxpc3QsIGJ1dA0KPiA+IGFsdGVybmF0aXZlbHkgKGFuZCBldmVuIGJldHRl
cikgd291bGQgYmUgaWYgeW91IGNvdWxkIGFsc28gdXBkYXRlIHRoZSB3aWtpDQo+ID4gcGFnZXMg
dGhlbXNlbHZlcyB3aXRoIHlvdXIgaW5mb3JtYXRpb24gYmFzZWQgb24gcmVjZW50IGtlcm5lbHMg
YW5kIGhhcmR3YXJlLg0KPiA+IFRvIGRvIHRoaXMsIHlvdSB3aWxsIG5lZWQgYW4gZWxpbnV4IHdp
a2kgYWNjb3VudCwgd2hpY2ggeW91IGNhbiBtYWtlIG9ubGluZSBvbg0KPiA+IGVsaW51eCB3aWtp
Lm9yZyBieSBnb2luZyB0byB0aGlzIHBhZ2U6IGh0dHBzOi8vZWxpbnV4Lm9yZy9TcGVjaWFsOkNy
ZWF0ZUFjY291bnQNCj4gPg0KPiA+IEFueW9uZSBlbHNlIHJlYWRpbmcgdGhpcyB3aG8gd2FudHMg
dG8gYWxzbyBwYXJ0aWNpcGF0ZSBpbiB0aGlzIHByb2plY3QgdG8NCj4gPiB1cGRhdGUgdGhlIGVs
aW51eCB3aWtpIGJvb3QgdGltZSBpbmZvcm1hdGlvbiwgcGxlYXNlIGNvbnRhY3QgbWUuDQo+ID4g
VGhhbmtzLg0KPiA+ICAgIC0tIFRpbQ0KPiA+DQo+IEhpIFRpbSwgYWxsLA0KPiANCj4gZmlyc3Qg
dGltZSBJJ20gcG9zdGluZyBoZXJlIHNvIGhvcGVmdWxseSBldmVyeXRoaW5nIGlzIGZpbmUgdy8g
bXkgbWFpbA0KPiBmb3JtYXQgLyBhdHRhY2htZW50IGFuZCBzbyBvbiAuLi4gSWYgbm90LCBwbGVh
c2UgZ2l2ZSBtZSBzb21lIGZlZWRiYWNrDQo+IGFuZCBndWlkYW5jZS4NCg0KTWFya28sDQoNClRo
YW5rcyBmb3IgdGhpcyBncmVhdCBkYXRhIQ0KDQpJbiBnZW5lcmFsLCBJIGRvbid0IHNlZSBhIGxv
dCBvZiBhdHRhY2htZW50cyBvbiBrZXJuZWwgbWFpbGluZyBsaXN0cy4NClRoZXkgZG9uJ3QgYm90
aGVyIG1lLCBhbmQgd2UgYXJlbid0IENDJ2luZyBMS01MICh0aGF0J3MgYSBzZXBhcmF0ZQ0KaXNz
dWUgd2Ugc2hvdWxkIGRpc2N1c3MgLSBkZXZlbG9wZXJzIG91dHNpZGUgb2YgZW1iZWRkZWQgbWln
aHQNCndhbnQgdG8gc2VlIHRoaXMgZGF0YSkuICBJJ2xsIGNoZWNrIGxhdGVyIGFuZCBzZWUgd2hh
dCBsb3JlIGRvZXMgd2l0aCB0aGlzLA0KYnV0IGlmIG5vIG9uZSBjb21wbGFpbnMsIEkgZG9uJ3Qg
c2VlIGEgcHJvYmxlbSB3aXRoIGl0LiAgSWYgc29tZW9uZQ0KZG9lcyBjb21wbGFpbiwgSSBjYW4g
cHJvdmlkZSBmaWxlIGhvc3RpbmcgZWl0aGVyIG9uIHRoZSBlbGludXggd2lraQ0Kb3IgdGhlIGJv
b3QtdGltZSB3aWtpLCBhbmQgd2UgY2FuIGxpbmsgYXR0YWNobWVudHMgbGlrZSB5b3UndmUNCnBy
b3ZpZGVkIG9uIHRoaXMgbWVzc2FnZSBmcm9tIG9uZSBvZiB0aG9zZSBwbGFjZXMgKHRvIGF2b2lk
DQpwdXR0aW5nIGF0dGFjaG1lbnRzIG9uIGtlcm5lbCBtYWlsaW5nIGxpc3RzKS4NCiANCj4gDQo+
IFRvIHRoZSAiZGlzYWJsZSBjb25zb2xlIiB0b3BpYzogSSBoYXZlIHNvbWUgbnVtYmVycyBpbiBw
bGFjZSBmb3IgYW4gUlBJDQo+IFplcm8gVywgZmluZCBkbWVzZyBkdW1wcyBhbmQgc3lzdGVtZC1h
bmFseXplIHBsb3RzIGF0dGFjaGVkLg0KPiANCj4gDQo+IEVudmlyb25tZW50Og0KPiANCj4gLSBS
UGkgWmVybyBXLCBrZXJuZWwgNS4xNS4yNCwgc3lzdGVtZCAyNDcuMywgY3VzdG9taXplZCBkZWJp
YW4NCj4gDQo+IC0gb25ib2FyZCBVQVJUIHVzZWQNCj4gDQo+IA0KPiBDYXNlczoNCj4gDQo+IC0g
IzEgcXVpZXQ6IGNtZGxpbmUgdy8gcXVpZXQsIG5vIGtlcm5lbCBvciB1c2Vyc3BhY2Ugb3V0cHV0
IHVwIHRvIHRoZQ0KPiBzZXJpYWwgbG9naW4gY29uc29sZQ0KPiANCj4gLSAjMiBub3JtYWw6IGNt
ZGxpbmUgdy9vIHF1aWV0LCBzZXJpYWwgY29uc29sZSBAMTE1MjAwIGJhdWQNCj4gDQo+IC0gIzMg
bm9ybWFsX2JhdWQ5NjAwOiBjbWRsaW5lIHcvbyBxdWlldCwgc2VyaWFsIGNvbnNvbGUgQDk2MDAg
YmF1ZA0KPiANCj4gDQo+IE1haW4gb3V0Y29tZXM6DQo+IA0KPiAtIGtlcm5lbCB0aW1lc3RhbXBz
ICJSdW4gL3NiaW4vaW5pdCBhcyBpbml0IHByb2Nlc3MiDQo+IA0KPiAjMTogIjEuNzE0NDU4Iiwg
IzI6ICIzLjAxMTcwMSIsICMzOiAiMTYuMTA4MTAxIg0KDQpXb3cgZnJvbSAxLjcgc2Vjb25kcyB0
byAxNi4xIHNlY29uZHMuICBUaGF0J3MgYSBwcmV0dHkgaHVnZQ0KZGlmZmVyZW5jZS4gIEkgZ3Vl
c3MgdGhpcyBwYXJ0aWN1bGFyIHRlY2huaXF1ZSBpcyBzdGlsbA0KdmVyeSByZWxldmFudCENCg0K
PiANCj4gSW50ZXJwcmV0YXRpb246DQo+IA0KPiAqIGVuYWJsZWQgc2VyaWFsIGNvbnNvbGUgaGFz
IHNpZ25pZmljYW50IGltcGFjdCBpbiBrZXJuZWwgYm9vdCB0aW1lDQo+IA0KPiAqIHJlZHVjaW5n
IGJhdWQgdG8gOTYwMCBpbmR1Y2VkIHNvbWUgc2lkZSBlZmZlY3QsIG5vdCBzdXJlIHdoYXQgaXQg
aXMgLi4uDQoNCkRpZCB5b3Ugc2VlIGFueSBvdGhlciB3ZWlyZCBiZWhhdmlvciBiZXNpZGVzIHRo
ZSBodWdlIHNsb3dkb3duPw0KSSdsbCB0YWtlIGEgbG9vayBhdCB0aGUgYW1vdW50IG9mIGNoYXJh
Y3RlcnMgaW4geW91ciBkbWVzZyBvdXRwdXQgYW5kDQpzZWUgaWYgaXQgY2FuIGJlIGxpbmVhcmx5
IGNvcnJlbGF0ZWQgdG8gdGhlIGJhdWQgcmF0ZSwgb3IgaWYgaXQgc2VlbXMgc29tZXRoaW5nDQpl
bHNlIGlzIGdvaW5nIG9uLg0KDQo+IC0gIHN5c3RlbWQgc3RhcnR1cA0KPiANCj4gKiBzeXN0ZW1k
IGRyb3BzIDIgbG9nIGxpbmVzIHBlciBzdGFydGVkIHVuaXQgdG8gdGhlIGNvbnNvbGUNCj4gDQo+
ICogc2VlbXMgc2VyaWFsIG91dHB1dCBpcyBub3QgaW1wbGVtZW50ZWQgYXN5bmNocm9ub3VzbHkg
KHNlZSBzdGVwcyBvZg0KPiB1bml0cyBpbiBzZCBwbG90LCB+MTBtcyBwZXIgdW5pdCB3LyBiYXVk
IDExNTIwMCwgfjgwbXMgcGVyIHVuaXQgdy8gYmF1ZDk2MDANCg0KSSdtIG5vdCBzdXJlIHdoYXQg
eW91J3JlIHJlZmVycmluZyB0byBoZXJlLiAgSXMgdGhlICd1bml0JyB5b3UgYXJlIHRhbGtpbmcg
YWJvdXQNCnRoZSBncmFwaGluZyBncmlkIHNpemUsIG9yIGFyZSB5b3UgcmVmZXJyaW5nIHRvIHN5
c3RlbWQgdW5pdHM/ICBUaGUgZ3JpZCBzaXplDQpzZWVtcyB0byBiZSAxMG1zIHBlciBtaW5vciBn
cmlkIGxpbmUgaW4gZWFjaCBwbG90Lg0KDQo+IA0KPiBTaWRlIG5vdGVzOg0KPiANCj4gKiBJIHJl
bWVtYmVyIHNpbWlsYXIgYmVoYXZpb3Igdy8gaW14LjYgU29Dcw0KPiANCj4gKiBNYXliZSB0aGlz
IGlzc3VlcyBpcyBub3Qgc2VlbiBvbiBvdGhlciBTb0NzIChtYXliZSB3LyBhbm90aGVyIGh3DQo+
IGltcGxlbWVudGF0aW9uIG9mIHRoZSBVQVJUKQ0KPiANCj4gKiBNYXliZSB0aGlzIGlzc3VlcyBp
cyBvbmx5IHNlZW4gaW4gc2luZ2xlIGNvcmUgbWFjaGluZXMgKEkgY2FuIGRvdWJsZQ0KPiBjaGVj
ayB3LyBhIFBJMyBvciBvcmFuZ2UgcGkgemVybyBvbmNlKQ0KPiANCj4gSG9wZSB0aGlzIGhlbHBz
Lg0KDQpJdCBoZWxwcyBhIGxvdC4gIFRoYW5rcyBmb3IgdGhpcyBkYXRhIQ0KDQpJIHRoaW5rIHRo
ZSAnRGlzYWJsZSBDb25zb2xlJyB0ZWNobmlxdWUgd2lsbCBjb250aW51ZSB0byBzdGF5IGFzIG9u
ZSBvZiB0aGUgZmlyc3QNCnRoaW5ncyB3ZSByZWNvbW1lbmQgZm9yIGRldmVsb3BlcnMgd29ya2lu
ZyBvbiB0aGVpciBib2FyZCdzIGJvb3QgdGltZS4NCg0KVG8gb3RoZXJzIGRldmVsb3BlcnMgLSBJ
J2QgbGlrZSB0byBzZWUgbW9yZSBkYXRhIGxpa2UgdGhpcyBvbiBvdGhlciBzeXN0ZW1zDQphcyB3
ZWxsLiAgU28gcGxlYXNlIGtlZXAgc3VibWl0dGluZyB5b3VyIGRhdGEgdG8gdGhpcyBsaXN0Lg0K
DQpUaGFua3MsDQogLS0gVGltDQoNCg==

