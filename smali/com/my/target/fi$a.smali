.class Lcom/my/target/fi$a;
.super Ljava/lang/Object;
.source "EnvironmentParamsDataProvider.java"


# instance fields
.field private hc:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/my/target/fi$a;->hc:Ljava/util/ArrayList;

    const-string v0, "phone"

    .line 303
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x11

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    const/16 v4, 0x1d

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    if-lt v1, v2, :cond_1

    if-ge v1, v4, :cond_1

    :try_start_1
    invoke-static {v3, p1}, Lcom/my/target/fi;->i(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 312
    :cond_1
    invoke-static {v5, p1}, Lcom/my/target/fi;->i(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 314
    :cond_2
    invoke-direct {p0, v0}, Lcom/my/target/fi$a;->b(Landroid/telephony/TelephonyManager;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/fi$a;->hc:Ljava/util/ArrayList;

    .line 317
    :cond_3
    iget-object v2, p0, Lcom/my/target/fi$a;->hc:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    if-ge v1, v4, :cond_5

    .line 319
    invoke-static {v3, p1}, Lcom/my/target/fi;->i(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 320
    :cond_5
    invoke-static {v5, p1}, Lcom/my/target/fi;->i(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 322
    :cond_6
    invoke-direct {p0, v0}, Lcom/my/target/fi$a;->a(Landroid/telephony/TelephonyManager;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/fi$a;->hc:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Environment provider exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private a(Landroid/telephony/TelephonyManager;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 335
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 337
    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_1

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 341
    new-instance v2, Lcom/my/target/fi$b;

    const-string v3, "gsm"

    invoke-direct {v2, v3}, Lcom/my/target/fi$b;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    iput v3, v2, Lcom/my/target/fi$b;->hd:I

    .line 344
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, v2, Lcom/my/target/fi$b;->he:I

    .line 346
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 348
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x3

    .line 352
    :try_start_0
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/my/target/fi$b;->mcc:I

    .line 353
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/my/target/fi$b;->mnc:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to substring network operator "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 360
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current cell: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/my/target/fi$b;->hd:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/my/target/fi$b;->he:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/my/target/fi$b;->mcc:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/my/target/fi$b;->mnc:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method static synthetic a(Lcom/my/target/fi$a;)Ljava/util/ArrayList;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/my/target/fi$a;->hc:Ljava/util/ArrayList;

    return-object p0
.end method

.method private b(Landroid/telephony/TelephonyManager;)Ljava/util/ArrayList;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 370
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 376
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    instance-of v2, v1, Landroid/telephony/CellInfoLte;

    const/16 v3, 0x18

    const v4, 0x7fffffff

    if-eqz v2, :cond_2

    .line 381
    new-instance v2, Lcom/my/target/fi$b;

    const-string v5, "lte"

    invoke-direct {v2, v5}, Lcom/my/target/fi$b;-><init>(Ljava/lang/String;)V

    .line 382
    check-cast v1, Landroid/telephony/CellInfoLte;

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    .line 383
    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    .line 384
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v6

    iput v6, v2, Lcom/my/target/fi$b;->hd:I

    .line 385
    iput v4, v2, Lcom/my/target/fi$b;->he:I

    .line 386
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v6

    iput v6, v2, Lcom/my/target/fi$b;->mcc:I

    .line 387
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v6

    iput v6, v2, Lcom/my/target/fi$b;->mnc:I

    .line 388
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v6

    iput v6, v2, Lcom/my/target/fi$b;->level:I

    .line 389
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v6

    iput v6, v2, Lcom/my/target/fi$b;->hf:I

    .line 390
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v6

    iput v6, v2, Lcom/my/target/fi$b;->hg:I

    .line 391
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result v1

    iput v1, v2, Lcom/my/target/fi$b;->hh:I

    .line 392
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    .line 394
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v1

    iput v1, v2, Lcom/my/target/fi$b;->hi:I

    .line 396
    :cond_1
    iput v4, v2, Lcom/my/target/fi$b;->hj:I

    .line 397
    iput v4, v2, Lcom/my/target/fi$b;->hk:I

    .line 398
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    iput v1, v2, Lcom/my/target/fi$b;->hl:I

    goto/16 :goto_2

    .line 400
    :cond_2
    instance-of v2, v1, Landroid/telephony/CellInfoGsm;

    if-eqz v2, :cond_5

    .line 402
    new-instance v2, Lcom/my/target/fi$b;

    const-string v5, "gsm"

    invoke-direct {v2, v5}, Lcom/my/target/fi$b;-><init>(Ljava/lang/String;)V

    .line 403
    check-cast v1, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    .line 404
    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    .line 405
    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v6

    iput v6, v2, Lcom/my/target/fi$b;->hd:I

    .line 406
    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v6

    iput v6, v2, Lcom/my/target/fi$b;->he:I

    .line 407
    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v6

    iput v6, v2, Lcom/my/target/fi$b;->mcc:I

    .line 408
    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v6

    iput v6, v2, Lcom/my/target/fi$b;->mnc:I

    .line 409
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v6

    iput v6, v2, Lcom/my/target/fi$b;->level:I

    .line 410
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v6

    iput v6, v2, Lcom/my/target/fi$b;->hf:I

    .line 411
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v6

    iput v6, v2, Lcom/my/target/fi$b;->hg:I

    .line 412
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_3

    .line 414
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getTimingAdvance()I

    move-result v1

    iput v1, v2, Lcom/my/target/fi$b;->hh:I

    goto :goto_1

    .line 418
    :cond_3
    iput v4, v2, Lcom/my/target/fi$b;->hh:I

    .line 420
    :goto_1
    iput v4, v2, Lcom/my/target/fi$b;->hi:I

    if-lt v6, v3, :cond_4

    .line 423
    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result v1

    iput v1, v2, Lcom/my/target/fi$b;->hj:I

    .line 425
    :cond_4
    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    move-result v1

    iput v1, v2, Lcom/my/target/fi$b;->hk:I

    .line 426
    iput v4, v2, Lcom/my/target/fi$b;->hl:I

    goto/16 :goto_2

    .line 428
    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v2, v5, :cond_7

    instance-of v5, v1, Landroid/telephony/CellInfoWcdma;

    if-eqz v5, :cond_7

    .line 430
    new-instance v5, Lcom/my/target/fi$b;

    const-string v6, "wcdma"

    invoke-direct {v5, v6}, Lcom/my/target/fi$b;-><init>(Ljava/lang/String;)V

    .line 431
    check-cast v1, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v6

    .line 432
    invoke-virtual {v1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    .line 433
    invoke-virtual {v6}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v7

    iput v7, v5, Lcom/my/target/fi$b;->hd:I

    .line 434
    invoke-virtual {v6}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v7

    iput v7, v5, Lcom/my/target/fi$b;->he:I

    .line 435
    invoke-virtual {v6}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v7

    iput v7, v5, Lcom/my/target/fi$b;->mcc:I

    .line 436
    invoke-virtual {v6}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v7

    iput v7, v5, Lcom/my/target/fi$b;->mnc:I

    .line 437
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v7

    iput v7, v5, Lcom/my/target/fi$b;->level:I

    .line 438
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v7

    iput v7, v5, Lcom/my/target/fi$b;->hf:I

    .line 439
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v1

    iput v1, v5, Lcom/my/target/fi$b;->hg:I

    .line 440
    iput v4, v5, Lcom/my/target/fi$b;->hh:I

    if-lt v2, v3, :cond_6

    .line 443
    invoke-virtual {v6}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result v1

    iput v1, v5, Lcom/my/target/fi$b;->hi:I

    .line 445
    :cond_6
    iput v4, v5, Lcom/my/target/fi$b;->hj:I

    .line 446
    invoke-virtual {v6}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v1

    iput v1, v5, Lcom/my/target/fi$b;->hk:I

    .line 447
    iput v4, v5, Lcom/my/target/fi$b;->hl:I

    move-object v2, v5

    goto :goto_2

    .line 449
    :cond_7
    instance-of v2, v1, Landroid/telephony/CellInfoCdma;

    if-eqz v2, :cond_0

    .line 451
    new-instance v2, Lcom/my/target/fi$b;

    const-string v3, "cdma"

    invoke-direct {v2, v3}, Lcom/my/target/fi$b;-><init>(Ljava/lang/String;)V

    .line 452
    check-cast v1, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 453
    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    .line 454
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v4

    iput v4, v2, Lcom/my/target/fi$b;->hm:I

    .line 455
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v4

    iput v4, v2, Lcom/my/target/fi$b;->hn:I

    .line 456
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v4

    iput v4, v2, Lcom/my/target/fi$b;->ho:I

    .line 457
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v4

    iput v4, v2, Lcom/my/target/fi$b;->hp:I

    .line 458
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v3

    iput v3, v2, Lcom/my/target/fi$b;->hq:I

    .line 460
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v3

    iput v3, v2, Lcom/my/target/fi$b;->hr:I

    .line 461
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v3

    iput v3, v2, Lcom/my/target/fi$b;->level:I

    .line 462
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v3

    iput v3, v2, Lcom/my/target/fi$b;->hs:I

    .line 463
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    move-result v3

    iput v3, v2, Lcom/my/target/fi$b;->hg:I

    .line 465
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v3

    iput v3, v2, Lcom/my/target/fi$b;->ht:I

    .line 466
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v3

    iput v3, v2, Lcom/my/target/fi$b;->hf:I

    .line 467
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v3

    iput v3, v2, Lcom/my/target/fi$b;->hu:I

    .line 469
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result v3

    iput v3, v2, Lcom/my/target/fi$b;->hv:I

    .line 470
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v3

    iput v3, v2, Lcom/my/target/fi$b;->hw:I

    .line 472
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v1

    iput v1, v2, Lcom/my/target/fi$b;->hx:I

    .line 478
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    :cond_9
    return-object v0
.end method
