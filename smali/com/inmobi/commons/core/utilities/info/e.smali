.class public Lcom/inmobi/commons/core/utilities/info/e;
.super Ljava/lang/Object;
.source "PublisherProvidedUserInfoDao.java"


# static fields
.field private static a:I

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:I

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 42
    sput v0, Lcom/inmobi/commons/core/utilities/info/e;->a:I

    .line 49
    sput v0, Lcom/inmobi/commons/core/utilities/info/e;->h:I

    .line 54
    sput v0, Lcom/inmobi/commons/core/utilities/info/e;->m:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 468
    const-string v0, ""

    .line 470
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 473
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_2
    return-object v0
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    .line 91
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_age"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;I)V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    sput p0, Lcom/inmobi/commons/core/utilities/info/e;->a:I

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 387
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 388
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->b(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 389
    const-string v1, "user_info_store"

    invoke-static {v1}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v1

    const-string v2, "user_location"

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->s:Landroid/location/Location;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 106
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_age_group"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private static b(Landroid/location/Location;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 487
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 489
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->a:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->a(I)V

    .line 69
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->a(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->b(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->c(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->d(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->e(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->f(Ljava/lang/String;)V

    .line 75
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->h:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->b(I)V

    .line 76
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->g(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->h(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->i(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->j(Ljava/lang/String;)V

    .line 80
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->m:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->c(I)V

    .line 81
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->k(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->l(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->m(Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->n(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->e(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->s:Landroid/location/Location;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->a(Landroid/location/Location;)V

    .line 87
    return-void
.end method

.method public static b(I)V
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    .line 196
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_yob"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;I)V

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    sput p0, Lcom/inmobi/commons/core/utilities/info/e;->h:I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 121
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_area_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->d:Ljava/lang/String;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_post_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(I)V
    .locals 2

    .prologue
    .line 271
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    .line 272
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_income"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;I)V

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    sput p0, Lcom/inmobi/commons/core/utilities/info/e;->m:I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 136
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_post_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->q:Ljava/lang/String;

    .line 335
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_login_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 151
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_city_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->r:Ljava/lang/String;

    .line 350
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_session_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 173
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_state_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public static f()Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 362
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->s:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 363
    sget-object v1, Lcom/inmobi/commons/core/utilities/info/e;->s:Landroid/location/Location;

    .line 383
    :cond_0
    :goto_0
    return-object v1

    .line 365
    :cond_1
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v2, "user_location"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    if-eqz v2, :cond_0

    .line 369
    new-instance v0, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 371
    :try_start_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 372
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 373
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 374
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/location/Location;->setAccuracy(F)V

    .line 375
    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v1, v0

    .line 383
    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move-object v0, v1

    .line 382
    goto :goto_1

    .line 379
    :catch_1
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move-object v0, v1

    .line 381
    goto :goto_1
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 181
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_country_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public static g()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v3, -0x80000000

    .line 397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 399
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->h()I

    move-result v1

    .line 400
    if-eq v1, v3, :cond_0

    if-lez v1, :cond_0

    .line 401
    const-string v2, "u-age"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->n()I

    move-result v1

    .line 405
    if-eq v1, v3, :cond_1

    if-lez v1, :cond_1

    .line 406
    const-string v2, "u-yearofbirth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->s()I

    move-result v1

    .line 410
    if-eq v1, v3, :cond_2

    if-lez v1, :cond_2

    .line 411
    const-string v2, "u-income"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_2
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/info/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 416
    const-string v2, "u-location"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_3
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->i()Ljava/lang/String;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_4

    .line 421
    const-string v2, "u-agegroup"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_4
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->j()Ljava/lang/String;

    move-result-object v1

    .line 425
    if-eqz v1, :cond_5

    .line 426
    const-string v2, "u-areacode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_5
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->c()Ljava/lang/String;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_6

    .line 431
    const-string v2, "u-postalcode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_6
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->o()Ljava/lang/String;

    move-result-object v1

    .line 435
    if-eqz v1, :cond_7

    .line 436
    const-string v2, "u-gender"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_7
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->p()Ljava/lang/String;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_8

    .line 441
    const-string v2, "u-ethnicity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_8
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->q()Ljava/lang/String;

    move-result-object v1

    .line 445
    if-eqz v1, :cond_9

    .line 446
    const-string v2, "u-education"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :cond_9
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->r()Ljava/lang/String;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_a

    .line 450
    const-string v2, "u-language"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_a
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->t()Ljava/lang/String;

    move-result-object v1

    .line 453
    if-eqz v1, :cond_b

    .line 454
    const-string v2, "u-householdincome"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_b
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->u()Ljava/lang/String;

    move-result-object v1

    .line 457
    if-eqz v1, :cond_c

    .line 458
    const-string v2, "u-interests"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_c
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->v()Ljava/lang/String;

    move-result-object v1

    .line 461
    if-eqz v1, :cond_d

    .line 462
    const-string v2, "u-nationality"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_d
    return-object v0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 210
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 211
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_gender"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method private static h()I
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 98
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->a:I

    if-eq v0, v2, :cond_0

    .line 99
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->a:I

    .line 101
    :goto_0
    return v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_age"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 226
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_ethnicity"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method private static i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->b:Ljava/lang/String;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_age_group"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 241
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 242
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_education"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method private static j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->c:Ljava/lang/String;

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_area_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 263
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 264
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_language"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method private static k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->e:Ljava/lang/String;

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_city_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 286
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 287
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_house_income"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 290
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method private static l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->f:Ljava/lang/String;

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_state_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 301
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 302
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_interest"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 305
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method private static m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->g:Ljava/lang/String;

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_country_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 316
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 317
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_nationality"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 320
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method private static n()I
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 203
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->h:I

    if-eq v0, v2, :cond_0

    .line 204
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->h:I

    .line 206
    :goto_0
    return v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_yob"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 339
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 340
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_login_id"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 343
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method private static o()Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->i:Ljava/lang/String;

    .line 221
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_gender"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static o(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 354
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 355
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_session_id"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method private static p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->j:Ljava/lang/String;

    .line 236
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_ethnicity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 249
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->k:Ljava/lang/String;

    .line 252
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_education"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static r()Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->l:Ljava/lang/String;

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_language"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static s()I
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 279
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->m:I

    if-eq v0, v2, :cond_0

    .line 280
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->m:I

    .line 282
    :goto_0
    return v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_income"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private static t()Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->n:Ljava/lang/String;

    .line 297
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_house_income"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 309
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 310
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->o:Ljava/lang/String;

    .line 312
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_interest"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static v()Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->p:Ljava/lang/String;

    .line 327
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/b/c;

    move-result-object v0

    const-string v1, "user_nationality"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
