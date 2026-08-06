.class public final Lcom/my/target/core/parsers/rb/e;
.super Ljava/lang/Object;
.source "RBSettingsParser.java"


# direct methods
.method private static a(Lcom/my/target/core/models/l;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 362
    const-string v0, "Parsing video params"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 364
    const-string v0, "allowClose"

    .line 366
    invoke-virtual {p0}, Lcom/my/target/core/models/l;->a()Z

    move-result v1

    .line 365
    invoke-static {p1, v0, v1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 364
    invoke-virtual {p0, v0}, Lcom/my/target/core/models/l;->a(Z)V

    .line 367
    const-string v1, "allowCloseDelay"

    .line 370
    invoke-virtual {p0}, Lcom/my/target/core/models/l;->b()F

    move-result v0

    float-to-double v2, v0

    move-object v0, p1

    move-object v5, p2

    .line 368
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;DZLandroid/content/Context;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 367
    invoke-virtual {p0, v0}, Lcom/my/target/core/models/l;->a(F)V

    .line 371
    const-string v0, "connectionTimeout"

    const/16 v1, 0xa

    .line 372
    invoke-static {p1, v0, v1, v4, p2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v0

    .line 371
    invoke-virtual {p0, v0}, Lcom/my/target/core/models/l;->a(I)V

    .line 375
    const-string v0, "maxBannersShow"

    .line 377
    invoke-virtual {p0}, Lcom/my/target/core/models/l;->d()I

    move-result v1

    .line 375
    invoke-static {p1, v0, v1, v4, p2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/my/target/core/models/l;->b(I)V

    .line 379
    return-void
.end method

.method public static a(Lcom/my/target/core/models/sections/i;Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
    .locals 9

    .prologue
    const v8, -0x99999a

    const/high16 v1, -0x1000000

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 56
    const-string v0, "Parsing section settings"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 57
    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 58
    const-class v0, Lcom/my/target/core/parsers/rb/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/my/target/core/parsers/a$a;->b:Ljava/lang/String;

    .line 60
    const-string v0, "advertisingLabel"

    const-string v3, ""

    .line 61
    invoke-static {p1, v0, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-interface {p0, v0}, Lcom/my/target/core/models/sections/i;->a(Ljava/lang/String;)V

    .line 64
    const-string v0, "standard"

    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    const-string v0, "Parsing standard section settings"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 68
    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/my/target/core/parsers/rb/a;->d(Lcom/my/target/core/models/sections/i;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/models/sections/j;

    move-result-object v0

    .line 71
    if-nez v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v3, "refreshTime"

    const/16 v4, 0x3c

    invoke-static {p1, v3, v4, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v3

    .line 77
    if-lez v3, :cond_2

    .line 78
    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/j;->a(I)V

    .line 80
    :cond_2
    const-string v3, "hasAdditionalAds"

    .line 81
    invoke-static {p1, v3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 80
    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/j;->b(Z)V

    .line 85
    const-string v3, "loopRotation"

    .line 86
    invoke-static {p1, v3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 85
    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/j;->c(Z)V

    .line 89
    const-string v3, "animationType"

    .line 90
    invoke-static {p1, v3, v6, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v3

    .line 89
    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/j;->b(I)V

    .line 93
    const-string v3, "extendedClickArea"

    invoke-static {p1, v3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/j;->a(Z)V

    .line 97
    const-string v3, "view"

    invoke-static {p1, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    .line 99
    if-eqz v3, :cond_0

    .line 1401
    const-string v4, "Parsing section view settings"

    sput-object v4, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 1403
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/j;->i()Lcom/my/target/core/models/j;

    move-result-object v4

    .line 1405
    const-string v0, "type"

    const-string v5, "html"

    .line 1406
    invoke-static {v3, v0, v5, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1405
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->a(Ljava/lang/String;)V

    .line 1409
    const-string v0, "backgroundColor"

    .line 1410
    invoke-static {v3, v0, v7, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1409
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->a(I)V

    .line 1413
    const-string v0, "backgroundTouchColor"

    const v5, -0x3a1508

    .line 1414
    invoke-static {v3, v0, v5, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1413
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->b(I)V

    .line 1417
    const-string v0, "standard_300x250"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1420
    :goto_1
    const-string v5, "titleColor"

    .line 1421
    invoke-static {v3, v5, v0, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1420
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->c(I)V

    .line 1424
    const-string v0, "ageRestrictionsBackgroundColor"

    .line 1425
    invoke-static {v3, v0, v7, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1424
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->d(I)V

    .line 1430
    const-string v0, "ageRestrictionsTextColor"

    .line 1431
    invoke-static {v3, v0, v8, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1430
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->e(I)V

    .line 1434
    const-string v0, "ageRestrictionsBorderColor"

    const v5, -0x4c4c4d

    .line 1435
    invoke-static {v3, v0, v5, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1434
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->f(I)V

    .line 1439
    const-string v0, "descriptionColor"

    .line 1440
    invoke-static {v3, v0, v1, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1439
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->g(I)V

    .line 1443
    const-string v0, "domainColor"

    .line 1444
    invoke-static {v3, v0, v8, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1443
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->h(I)V

    .line 1447
    const-string v0, "votesColor"

    const v1, -0x777778

    .line 1448
    invoke-static {v3, v0, v1, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1447
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->i(I)V

    .line 1451
    const-string v0, "disclaimerColor"

    const v1, -0x777778

    .line 1452
    invoke-static {v3, v0, v1, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1451
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->j(I)V

    .line 1455
    const-string v0, "ctaButtonColor"

    const v1, -0xff5110

    .line 1456
    invoke-static {v3, v0, v1, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1455
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->k(I)V

    .line 1459
    const-string v0, "ctaButtonTouchColor"

    const v1, -0xff8957

    .line 1460
    invoke-static {v3, v0, v1, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1459
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->l(I)V

    .line 1463
    const-string v0, "ctaButtonTextColor"

    .line 1464
    invoke-static {v3, v0, v7, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1463
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->m(I)V

    .line 1468
    const-string v0, "titleBold"

    .line 1469
    invoke-static {v3, v0, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 1468
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->a(Z)V

    .line 1472
    const-string v0, "descriptionBold"

    .line 1473
    invoke-static {v3, v0, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 1472
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->b(Z)V

    .line 1476
    const-string v0, "domainBold"

    .line 1477
    invoke-static {v3, v0, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 1476
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->c(Z)V

    .line 1480
    const-string v0, "votesBold"

    .line 1481
    invoke-static {v3, v0, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 1480
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->d(Z)V

    .line 1484
    const-string v0, "disclaimerBold"

    .line 1485
    invoke-static {v3, v0, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 1484
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->e(Z)V

    .line 1488
    const-string v0, "ctaButtonTextBold"

    .line 1489
    invoke-static {v3, v0, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 1488
    invoke-virtual {v4, v0}, Lcom/my/target/core/models/j;->f(Z)V

    goto/16 :goto_0

    .line 1417
    :cond_3
    const v0, -0xffab5a

    goto/16 :goto_1

    .line 101
    :cond_4
    const-string v0, "instreamads"

    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    const-string v0, "Parsing video section settings"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 106
    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/my/target/core/parsers/rb/a;->b(Lcom/my/target/core/models/sections/i;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/models/sections/f;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/f;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/sections/k;

    .line 110
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/k;->e()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {p1, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    .line 115
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/k;->k()Lcom/my/target/core/models/l;

    move-result-object v0

    .line 116
    invoke-static {v0, v3, p3}, Lcom/my/target/core/parsers/rb/e;->a(Lcom/my/target/core/models/l;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto :goto_2

    .line 119
    :cond_6
    const-string v0, "instreamaudioads"

    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 121
    const-string v0, "Parsing video section settings"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 125
    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {p0, v0, p3}, Lcom/my/target/core/parsers/rb/a;->c(Lcom/my/target/core/models/sections/i;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/models/sections/g;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/g;->i()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/g;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/sections/c;

    .line 133
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 136
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/c;->e()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {p1, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    .line 138
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/c;->k()Lcom/my/target/core/models/f;

    move-result-object v0

    .line 2385
    const-string v4, "Parsing video params"

    sput-object v4, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 2387
    const-string v4, "connectionTimeout"

    const/16 v5, 0xa

    .line 2388
    invoke-static {v3, v4, v5, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v4

    .line 2387
    invoke-virtual {v0, v4}, Lcom/my/target/core/models/f;->a(I)V

    .line 2391
    const-string v4, "maxBannersShow"

    invoke-static {v3, v4, v2, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/my/target/core/models/f;->b(I)V

    goto :goto_3

    .line 143
    :cond_8
    const-string v0, "video"

    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 145
    const-string v0, "Parsing video section settings"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 147
    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/my/target/core/parsers/rb/a;->e(Lcom/my/target/core/models/sections/i;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/models/sections/k;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/k;->k()Lcom/my/target/core/models/l;

    move-result-object v0

    .line 153
    invoke-static {v0, p1, p3}, Lcom/my/target/core/parsers/rb/e;->a(Lcom/my/target/core/models/l;Lorg/json/JSONObject;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 154
    :cond_9
    const-string v0, "fullscreen"

    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 156
    const-string v0, "Parsing fullscreen section settings"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 158
    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/my/target/core/parsers/rb/a;->f(Lcom/my/target/core/models/sections/i;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/models/sections/d;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 164
    const-string v1, "close_icon_hd"

    const-string v3, ""

    invoke-static {p1, v1, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 169
    new-instance v3, Lcom/my/target/nativeads/models/ImageData;

    invoke-direct {v3, v1, v2, v2}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;II)V

    .line 170
    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/d;->a(Lcom/my/target/nativeads/models/ImageData;)V

    .line 173
    :cond_a
    const-string v1, "play_icon_hd"

    const-string v3, ""

    invoke-static {p1, v1, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 177
    new-instance v3, Lcom/my/target/nativeads/models/ImageData;

    invoke-direct {v3, v1, v2, v2}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;II)V

    .line 178
    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/d;->b(Lcom/my/target/nativeads/models/ImageData;)V

    .line 181
    :cond_b
    const-string v1, "store_icon_hd"

    const-string v3, ""

    invoke-static {p1, v1, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 185
    new-instance v3, Lcom/my/target/nativeads/models/ImageData;

    invoke-direct {v3, v1, v2, v2}, Lcom/my/target/nativeads/models/ImageData;-><init>(Ljava/lang/String;II)V

    .line 186
    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/d;->c(Lcom/my/target/nativeads/models/ImageData;)V

    .line 189
    :cond_c
    const-string v1, "extendedClickArea"

    invoke-static {p1, v1, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/d;->e(Z)V

    .line 192
    const-string v1, "closeOnClick"

    invoke-static {p1, v1, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/d;->d(Z)V

    .line 195
    const-string v1, "allowCloseDelay"

    invoke-static {p1, v1, v2, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/d;->a(F)V

    .line 198
    const-string v1, "style"

    invoke-static {p1, v1, v2, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/d;->a(I)V

    .line 202
    const-string v1, "video"

    invoke-static {p1, v1, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/d;->p()Lcom/my/target/core/models/l;

    move-result-object v3

    const-string v4, "allowClose"

    invoke-static {v1, v4, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/my/target/core/models/l;->a(Z)V

    .line 209
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/d;->p()Lcom/my/target/core/models/l;

    move-result-object v3

    const-string v4, "allowCloseDelay"

    invoke-static {v1, v4, v2, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;IZLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/my/target/core/models/l;->a(F)V

    .line 212
    const-string v3, "showPlayerControls"

    invoke-static {v1, v3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/d;->f(Z)V

    .line 215
    const-string v3, "replayActionText"

    const-string v4, "Replay"

    invoke-static {v1, v3, v4, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/d;->d(Ljava/lang/String;)V

    .line 218
    const-string v3, "closeActionText"

    const-string v4, "Close"

    invoke-static {v1, v3, v4, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/d;->c(Ljava/lang/String;)V

    .line 221
    const-string v3, "allowBackButton"

    invoke-static {v1, v3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/d;->b(Z)V

    .line 224
    const-string v3, "allowReplay"

    invoke-static {v1, v3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/d;->c(Z)V

    .line 227
    const-string v3, "automute"

    invoke-static {v1, v3, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/d;->a(Z)V

    goto/16 :goto_0

    .line 231
    :cond_d
    const-string v0, "appwall"

    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 233
    const-string v0, "Parsing appwall section settings"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 235
    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/my/target/core/parsers/rb/a;->h(Lcom/my/target/core/models/sections/i;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/models/sections/b;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_0

    .line 239
    const-string v0, "title"

    const-string v3, ""

    .line 240
    invoke-static {p1, v0, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/sections/b;->c(Ljava/lang/String;)V

    .line 242
    const-string v0, "icon"

    const-string v3, ""

    .line 243
    invoke-static {p1, v0, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/sections/b;->d(Ljava/lang/String;)V

    .line 245
    const-string v0, "icon_hd"

    const-string v3, ""

    .line 246
    invoke-static {p1, v0, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/sections/b;->e(Ljava/lang/String;)V

    .line 248
    const-string v0, "bubble_icon"

    const-string v3, ""

    .line 249
    invoke-static {p1, v0, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/sections/b;->f(Ljava/lang/String;)V

    .line 251
    const-string v0, "bubble_icon_hd"

    const-string v3, ""

    .line 252
    invoke-static {p1, v0, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/sections/b;->g(Ljava/lang/String;)V

    .line 254
    const-string v0, "label_icon"

    const-string v3, ""

    .line 255
    invoke-static {p1, v0, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/sections/b;->h(Ljava/lang/String;)V

    .line 257
    const-string v0, "label_icon_hd"

    const-string v3, ""

    .line 258
    invoke-static {p1, v0, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/sections/b;->i(Ljava/lang/String;)V

    .line 260
    const-string v0, "goto_app_icon"

    const-string v3, ""

    .line 261
    invoke-static {p1, v0, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/sections/b;->j(Ljava/lang/String;)V

    .line 263
    const-string v0, "goto_app_icon_hd"

    const-string v3, ""

    .line 264
    invoke-static {p1, v0, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/sections/b;->k(Ljava/lang/String;)V

    .line 266
    const-string v0, "item_highlight_icon"

    const-string v3, ""

    .line 267
    invoke-static {p1, v0, v3, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-virtual {v1, v0}, Lcom/my/target/core/models/sections/b;->l(Ljava/lang/String;)V

    .line 270
    const-string v0, "icon_status"

    invoke-static {p1, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 3333
    const-string v0, "Parsing icon statuses"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 3335
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v0, v2

    .line 3337
    :goto_4
    if-ge v0, v4, :cond_0

    .line 3339
    const-string v5, "icon_status"

    invoke-static {v0, v3, v5, p3}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    .line 3342
    const-string v6, "value"

    const-string v7, ""

    invoke-static {v5, v6, v7, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 3345
    new-instance v7, Lcom/my/target/core/models/g;

    invoke-direct {v7, v6}, Lcom/my/target/core/models/g;-><init>(Ljava/lang/String;)V

    .line 3347
    const-string v6, "icon"

    const-string v8, ""

    .line 3348
    invoke-static {v5, v6, v8, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 3347
    invoke-virtual {v7, v6}, Lcom/my/target/core/models/g;->a(Ljava/lang/String;)V

    .line 3350
    const-string v6, "icon_hd"

    const-string v8, ""

    .line 3351
    invoke-static {v5, v6, v8, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 3350
    invoke-virtual {v7, v5}, Lcom/my/target/core/models/g;->b(Ljava/lang/String;)V

    .line 3354
    invoke-virtual {v1, v7}, Lcom/my/target/core/models/sections/b;->a(Lcom/my/target/core/models/g;)Z

    .line 3337
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 274
    :cond_e
    const-string v0, "nativeads"

    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 276
    const-string v0, "Parsing native section settings"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 278
    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lcom/my/target/core/models/sections/i;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/models/sections/h;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    .line 283
    const-string v1, "video"

    invoke-static {p1, v1, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_0

    .line 287
    const-string v3, "showPlayerControls"

    invoke-static {v1, v3, v6}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/h;->b(Z)V

    .line 290
    const-string v3, "replayActionText"

    const-string v4, "Replay"

    invoke-static {v1, v3, v4, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/h;->d(Ljava/lang/String;)V

    .line 293
    const-string v3, "closeActionText"

    const-string v4, "Close"

    invoke-static {v1, v3, v4, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/my/target/core/models/sections/h;->c(Ljava/lang/String;)V

    .line 296
    const-string v3, "automute"

    invoke-static {v1, v3, v2}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/h;->a(Z)V

    goto/16 :goto_0

    .line 300
    :cond_f
    const-string v0, "fullscreenslider"

    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "Parsing fullscreen slider section settings"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 304
    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/my/target/core/parsers/rb/a;->g(Lcom/my/target/core/models/sections/i;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/models/sections/e;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    .line 308
    const-string v2, "close_icon_hd"

    invoke-static {p1, v2, p3}, Lcom/my/target/core/parsers/rb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/sections/e;->a(Lcom/my/target/nativeads/models/ImageData;)V

    .line 311
    const-string v2, "backgroundColor"

    const v3, -0xf9c399

    invoke-static {p1, v2, v3, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v2

    .line 315
    or-int/2addr v1, v2

    .line 316
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/e;->b(I)V

    .line 317
    const-string v1, "markerColor"

    invoke-static {p1, v1, v7, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/e;->c(I)V

    .line 321
    const-string v1, "activeMarkerColor"

    const v2, -0xe0414d

    invoke-static {p1, v1, v2, p3}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/e;->a(I)V

    goto/16 :goto_0
.end method
