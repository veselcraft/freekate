.class public final Lcom/my/target/core/models/c;
.super Lcom/my/target/core/models/b;
.source "AdData.java"


# static fields
.field private static final a:Lcom/my/target/core/utils/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/my/target/core/utils/i",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/my/target/core/utils/j;

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;

.field private e:Ljava/lang/String;

.field private final f:J

.field private final g:J

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/sections/i;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/my/target/core/utils/i;

    invoke-direct {v0}, Lcom/my/target/core/utils/i;-><init>()V

    sput-object v0, Lcom/my/target/core/models/c;->a:Lcom/my/target/core/utils/i;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/my/target/core/models/b;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/c;->h:Ljava/util/ArrayList;

    .line 72
    iput-wide p1, p0, Lcom/my/target/core/models/c;->g:J

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/my/target/core/models/c;->f:J

    .line 74
    new-instance v0, Lcom/my/target/core/utils/j;

    invoke-direct {v0}, Lcom/my/target/core/utils/j;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/c;->b:Lcom/my/target/core/utils/j;

    .line 75
    return-void
.end method

.method public static a()Lcom/my/target/core/utils/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/my/target/core/utils/i",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/my/target/core/models/c;->a:Lcom/my/target/core/utils/i;

    return-object v0
.end method

.method public static a(Lcom/my/target/core/models/banners/d;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 276
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_4

    .line 278
    :cond_0
    const-string v0, "unable to send stat playbackStarted"

    .line 279
    if-nez p0, :cond_1

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": banner is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_1
    if-nez p2, :cond_2

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_2
    if-nez p1, :cond_3

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": section is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_3
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 289
    :cond_4
    invoke-interface {p1}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad shows. adId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in section "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 293
    :goto_1
    invoke-interface {p0}, Lcom/my/target/core/models/banners/d;->getStats()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "playbackStarted"

    invoke-static {v0, v1, p2}, Lcom/my/target/core/async/b;->a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 291
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad shows. adId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 323
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to send stat "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    if-nez p0, :cond_1

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": banner is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    :cond_1
    if-nez p2, :cond_2

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": stat is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_3
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_4
    invoke-interface {p0}, Lcom/my/target/core/models/banners/d;->getStats()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/my/target/core/async/b;->a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Lcom/my/target/core/models/sections/i;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 341
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to send stat "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    if-nez p0, :cond_1

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": section is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :cond_1
    if-nez p2, :cond_2

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": stat is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_3
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 354
    :goto_0
    return-void

    .line 353
    :cond_4
    invoke-interface {p0}, Lcom/my/target/core/models/sections/i;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/my/target/core/async/b;->a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Set;FLandroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;F",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 298
    if-eqz p0, :cond_0

    if-nez p2, :cond_4

    .line 300
    :cond_0
    const-string v0, "unable to send progress stat "

    .line 301
    if-nez p0, :cond_1

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": stats array is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    :cond_1
    if-nez p2, :cond_2

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_2
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 319
    :cond_3
    return-void

    .line 308
    :cond_4
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 309
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/i;

    .line 313
    invoke-virtual {v0}, Lcom/my/target/core/models/i;->a()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_5

    .line 315
    invoke-static {v0, p2}, Lcom/my/target/core/async/b;->a(Lcom/my/target/core/models/k;Landroid/content/Context;)V

    .line 316
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static b(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 192
    :cond_0
    const-string v0, "unable to send stat playbackStarted"

    .line 193
    if-nez p0, :cond_1

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": banner is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_1
    if-nez p1, :cond_2

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_2
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 198
    const-string v0, ""

    .line 201
    :goto_0
    return-object v0

    .line 200
    :cond_3
    invoke-interface {p0}, Lcom/my/target/core/models/banners/d;->getStats()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "click"

    invoke-static {v0, v1, p1}, Lcom/my/target/core/async/b;->a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)V

    .line 201
    invoke-interface {p0}, Lcom/my/target/core/models/banners/d;->getTrackingLink()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 358
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 360
    :cond_0
    const-string v0, "unable to send stat playbackStarted"

    .line 361
    if-nez p0, :cond_1

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": banner is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    :cond_1
    if-nez p1, :cond_2

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_2
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad shows. adId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 369
    invoke-interface {p0}, Lcom/my/target/core/models/banners/d;->getStats()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "playbackStarted"

    invoke-static {v0, v1, p1}, Lcom/my/target/core/async/b;->a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/my/target/core/models/c;->b:Lcom/my/target/core/utils/j;

    invoke-virtual {v0, p1, p2}, Lcom/my/target/core/utils/j;->a(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/my/target/core/models/c;->c:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/my/target/core/models/c;->d:Lorg/json/JSONObject;

    .line 98
    return-void
.end method

.method public final a(Lcom/my/target/core/a;Lcom/my/target/core/models/sections/b;Lcom/my/target/core/models/banners/d;Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-interface {p3}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-virtual {p2, v3}, Lcom/my/target/core/models/sections/b;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    invoke-virtual {p2, v3}, Lcom/my/target/core/models/sections/b;->n(Ljava/lang/String;)Z

    move-result v1

    .line 1232
    :try_start_0
    iget-object v2, p0, Lcom/my/target/core/models/c;->d:Lorg/json/JSONObject;

    invoke-interface {p2}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1233
    const-string v4, "banners"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1234
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v2, v0

    .line 1236
    :goto_0
    if-ge v2, v5, :cond_1

    .line 1238
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1240
    const-string v6, "bannerID"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1241
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1243
    const-string v6, "hasNotification"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Changed notification in raw data for banner "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1247
    :catch_0
    move-exception v0

    .line 1249
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error updating cache notification for section="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and bannerId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 214
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/my/target/core/models/c;->d:Lorg/json/JSONObject;

    const-string v2, "html_wrapper"

    iget-object v3, p0, Lcom/my/target/core/models/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    iget-object v0, p0, Lcom/my/target/core/models/c;->d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v2, p0, Lcom/my/target/core/models/c;->d:Lorg/json/JSONObject;

    const-string v3, "html_wrapper"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    iget-wide v2, p0, Lcom/my/target/core/models/c;->g:J

    invoke-virtual {p1}, Lcom/my/target/core/a;->d()I

    move-result v4

    invoke-static {v2, v3, v4, v0, p4}, Lcom/my/target/core/factories/b;->a(JILjava/lang/String;Landroid/content/Context;)Lcom/my/target/core/async/commands/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/async/commands/b;->b()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v0, v1

    .line 225
    :cond_2
    return v0

    .line 220
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Lcom/my/target/core/models/sections/i;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/my/target/core/models/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return v2

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/models/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/my/target/core/models/sections/i;->d()I

    move-result v0

    if-ne v0, v7, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/my/target/core/models/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    move v2, v3

    .line 140
    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/models/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/sections/i;

    .line 130
    invoke-interface {v0}, Lcom/my/target/core/models/sections/i;->d()I

    move-result v5

    invoke-interface {p1}, Lcom/my/target/core/models/sections/i;->d()I

    move-result v6

    if-gt v5, v6, :cond_4

    invoke-interface {v0}, Lcom/my/target/core/models/sections/i;->d()I

    move-result v0

    if-ne v0, v7, :cond_6

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/models/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v2, v3

    .line 138
    :cond_5
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/my/target/core/models/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 137
    goto :goto_2
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/my/target/core/models/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/my/target/core/models/c;->e:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/my/target/core/models/sections/i;
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/my/target/core/models/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/sections/i;

    .line 163
    invoke-interface {v0}, Lcom/my/target/core/models/sections/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/my/target/core/models/c;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/my/target/core/models/c;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/my/target/core/models/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/sections/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/my/target/core/models/c;->h:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/my/target/core/models/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/sections/i;

    .line 177
    invoke-interface {v0}, Lcom/my/target/core/models/sections/i;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 4

    .prologue
    .line 374
    const-string v0, "nativeads"

    invoke-virtual {p0, v0}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/i;

    move-result-object v0

    .line 376
    instance-of v1, v0, Lcom/my/target/core/models/sections/h;

    if-eqz v1, :cond_0

    .line 378
    check-cast v0, Lcom/my/target/core/models/sections/h;

    .line 380
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/h;->b()I

    move-result v1

    if-lez v1, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/h;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/h;

    .line 384
    sget-object v2, Lcom/my/target/core/models/c;->a:Lcom/my/target/core/utils/i;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/my/target/core/utils/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 388
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/models/c;->i:Z

    .line 393
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/my/target/core/models/c;->i:Z

    return v0
.end method
