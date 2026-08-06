.class final Lcom/inmobi/ads/q;
.super Ljava/lang/Object;
.source "NativeStrandAd.java"

# interfaces
.implements Lcom/inmobi/ads/ac$a;
.implements Lcom/inmobi/ads/ac$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/q$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final k:Lcom/inmobi/ads/ab;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/inmobi/ads/x;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/inmobi/ads/ac;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeStrandAsset;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Lcom/inmobi/ads/q$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/inmobi/ads/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/q;->a:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/inmobi/ads/ab;

    invoke-direct {v0}, Lcom/inmobi/ads/ab;-><init>()V

    sput-object v0, Lcom/inmobi/ads/q;->k:Lcom/inmobi/ads/ab;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/x;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/q;->f:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/q;->g:Ljava/util/List;

    .line 82
    iput-boolean v1, p0, Lcom/inmobi/ads/q;->i:Z

    .line 93
    iput-object p1, p0, Lcom/inmobi/ads/q;->b:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/inmobi/ads/q;->c:Lcom/inmobi/ads/x;

    .line 95
    iput-object p3, p0, Lcom/inmobi/ads/q;->d:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/inmobi/ads/ac;

    invoke-direct {v0, p1, p2, p0, p0}, Lcom/inmobi/ads/ac;-><init>(Landroid/content/Context;Lcom/inmobi/ads/x;Lcom/inmobi/ads/ac$b;Lcom/inmobi/ads/ac$a;)V

    iput-object v0, p0, Lcom/inmobi/ads/q;->e:Lcom/inmobi/ads/ac;

    .line 97
    iput-boolean v1, p0, Lcom/inmobi/ads/q;->h:Z

    .line 98
    iput-boolean v1, p0, Lcom/inmobi/ads/q;->i:Z

    .line 100
    iget-object v0, p0, Lcom/inmobi/ads/q;->c:Lcom/inmobi/ads/x;

    invoke-virtual {v0}, Lcom/inmobi/ads/x;->a()Lcom/inmobi/ads/v;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/ads/v;->a(J)V

    .line 102
    iget-object v0, p0, Lcom/inmobi/ads/q;->c:Lcom/inmobi/ads/x;

    invoke-virtual {v0}, Lcom/inmobi/ads/x;->a()Lcom/inmobi/ads/v;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/ads/q;->b(Lcom/inmobi/ads/NativeStrandAsset;)Ljava/util/Map;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/inmobi/ads/q;->c:Lcom/inmobi/ads/x;

    invoke-virtual {v1}, Lcom/inmobi/ads/x;->a()Lcom/inmobi/ads/v;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/inmobi/ads/q;->c(Lcom/inmobi/ads/NativeStrandAsset;Ljava/util/Map;)V

    .line 104
    iget-object v1, p0, Lcom/inmobi/ads/q;->c:Lcom/inmobi/ads/x;

    invoke-virtual {v1}, Lcom/inmobi/ads/x;->a()Lcom/inmobi/ads/v;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/inmobi/ads/q;->d(Lcom/inmobi/ads/NativeStrandAsset;Ljava/util/Map;)V

    .line 105
    return-void
.end method

.method private a(ILcom/inmobi/ads/v;)V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/inmobi/ads/v;->a(J)V

    .line 137
    iget-boolean v0, p0, Lcom/inmobi/ads/q;->h:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0, p2}, Lcom/inmobi/ads/q;->b(Lcom/inmobi/ads/NativeStrandAsset;)Ljava/util/Map;

    move-result-object v0

    .line 138
    invoke-direct {p0, p2, v0}, Lcom/inmobi/ads/q;->e(Lcom/inmobi/ads/NativeStrandAsset;Ljava/util/Map;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/inmobi/ads/NativeStrandAsset;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeStrandAsset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 231
    const-string v1, "type"

    const-string v2, "inlban"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "impId"

    iget-object v2, p0, Lcom/inmobi/ads/q;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "AdRendered"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 235
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/q;->a:Ljava/lang/String;

    const-string v2, "Impression record requested"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/inmobi/ads/ai$a;->d:Lcom/inmobi/ads/ai$a;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeStrandAsset;->a(Lcom/inmobi/ads/ai$a;Ljava/util/Map;)V

    .line 237
    iget-object v0, p0, Lcom/inmobi/ads/q;->j:Lcom/inmobi/ads/q$a;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/inmobi/ads/q;->j:Lcom/inmobi/ads/q$a;

    invoke-interface {v0}, Lcom/inmobi/ads/q$a;->a()V

    .line 240
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 380
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 381
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 382
    iget-object v1, p0, Lcom/inmobi/ads/q;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 385
    :catch_1
    move-exception v0

    .line 386
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/q;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deep linking failed for url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    invoke-direct {p0, p2}, Lcom/inmobi/ads/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/inmobi/ads/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/inmobi/ads/ag;)Z
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/inmobi/ads/ag;->a()Lcom/inmobi/ads/q;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 360
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/inmobi/ads/NativeStrandAsset;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeStrandAsset;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 282
    const-string v0, "$LTS"

    iget-object v1, p0, Lcom/inmobi/ads/q;->c:Lcom/inmobi/ads/x;

    .line 283
    invoke-virtual {v1}, Lcom/inmobi/ads/x;->a()Lcom/inmobi/ads/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/v;->m()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/inmobi/ads/q;->c:Lcom/inmobi/ads/x;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/x;->a(Lcom/inmobi/ads/NativeStrandAsset;)Lcom/inmobi/ads/v;

    move-result-object v3

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 290
    if-eqz v3, :cond_0

    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Lcom/inmobi/ads/v;->m()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 291
    invoke-virtual {v3}, Lcom/inmobi/ads/v;->m()J

    move-result-wide v0

    .line 293
    :cond_0
    const-string v3, "$STS"

    .line 294
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v0, "$TS"

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    return-object v2
.end method

.method private b(Lcom/inmobi/ads/NativeStrandAsset;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeStrandAsset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "ReportClick"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 263
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/q;->a:Ljava/lang/String;

    const-string v2, "Click impression record requested"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/inmobi/ads/ai$a;->f:Lcom/inmobi/ads/ai$a;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeStrandAsset;->a(Lcom/inmobi/ads/ai$a;Ljava/util/Map;)V

    .line 265
    iget-object v0, p0, Lcom/inmobi/ads/q;->j:Lcom/inmobi/ads/q$a;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/inmobi/ads/q;->j:Lcom/inmobi/ads/q$a;

    invoke-interface {v0}, Lcom/inmobi/ads/q$a;->b()V

    .line 268
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/rendering/InMobiAdActivity;->c(Lcom/inmobi/rendering/RenderView;)V

    .line 365
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/inmobi/ads/q;->b:Landroid/content/Context;

    const-class v2, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    iget-object v1, p0, Lcom/inmobi/ads/q;->b:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 372
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 374
    :cond_0
    const-string v1, "com.inmobi.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget-object v1, p0, Lcom/inmobi/ads/q;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 376
    return-void
.end method

.method static b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 225
    instance-of v0, p0, Lcom/inmobi/ads/ag;

    return v0
.end method

.method private c(Lcom/inmobi/ads/NativeStrandAsset;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeStrandAsset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    sget-object v0, Lcom/inmobi/ads/ai$a;->b:Lcom/inmobi/ads/ai$a;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeStrandAsset;->a(Lcom/inmobi/ads/ai$a;Ljava/util/Map;)V

    .line 273
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Lcom/inmobi/ads/q;->c:Lcom/inmobi/ads/x;

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/x;->a(I)Lcom/inmobi/ads/v;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/inmobi/ads/q;->f:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0, v3, v0}, Lcom/inmobi/ads/q;->a(ILcom/inmobi/ads/v;)V

    .line 207
    :cond_0
    return-void
.end method

.method private d(Lcom/inmobi/ads/NativeStrandAsset;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeStrandAsset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    sget-object v0, Lcom/inmobi/ads/ai$a;->c:Lcom/inmobi/ads/ai$a;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeStrandAsset;->a(Lcom/inmobi/ads/ai$a;Ljava/util/Map;)V

    .line 278
    return-void
.end method

.method private e(Lcom/inmobi/ads/NativeStrandAsset;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeStrandAsset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/q;->a:Ljava/lang/String;

    const-string v2, "Cannot report page view impression on null page container! Ignoring ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 308
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 310
    :try_start_0
    const-string v0, "id"

    .line 311
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAsset;->f()Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v0, "asset"

    .line 313
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAsset;->e()Lorg/json/JSONObject;

    move-result-object v2

    .line 312
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 319
    const-string v2, "type"

    const-string v3, "inlban"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v2, "impId"

    iget-object v3, p0, Lcom/inmobi/ads/q;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v2, "pageJson"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "PageRendered"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 324
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/q;->a:Ljava/lang/String;

    const-string v2, "Page-view impression record request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/inmobi/ads/ai$a;->e:Lcom/inmobi/ads/ai$a;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeStrandAsset;->a(Lcom/inmobi/ads/ai$a;Ljava/util/Map;)V

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private f(Lcom/inmobi/ads/NativeStrandAsset;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeStrandAsset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 329
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAsset;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/q;->a:Ljava/lang/String;

    const-string v2, "Asset interaction requested"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAsset;->h()Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    move-result-object v0

    .line 333
    sget-object v1, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_NO_ACTION:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    if-eq v1, v0, :cond_0

    .line 336
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAsset;->i()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-direct {p0, v1}, Lcom/inmobi/ads/q;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 338
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/q;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-static {v1, p2}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 342
    sget-object v2, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_IN_APP:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    if-ne v2, v0, :cond_4

    .line 343
    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "play.google.com"

    .line 344
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "market.android.com"

    .line 345
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "market%3A%2F%2F"

    .line 346
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 347
    invoke-direct {p0, v1}, Lcom/inmobi/ads/q;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/inmobi/ads/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_4
    sget-object v2, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_BROWSER:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    if-ne v2, v0, :cond_5

    .line 352
    invoke-direct {p0, v1, v3}, Lcom/inmobi/ads/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_5
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAsset;->j()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-direct {p0, v1, v0}, Lcom/inmobi/ads/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/inmobi/ads/b$f;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/q;->a:Ljava/lang/String;

    const-string v2, "Creating ad-view from data model"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-nez p1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/inmobi/ads/q;->e:Lcom/inmobi/ads/ac;

    invoke-virtual {v0, v3, p2}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;

    move-result-object p1

    .line 168
    :goto_0
    invoke-virtual {p1, p0}, Lcom/inmobi/ads/ag;->a(Lcom/inmobi/ads/q;)V

    .line 170
    iget-boolean v0, p0, Lcom/inmobi/ads/q;->h:Z

    if-nez v0, :cond_0

    .line 171
    sget-object v1, Lcom/inmobi/ads/q;->k:Lcom/inmobi/ads/ab;

    iget-object v0, p0, Lcom/inmobi/ads/q;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0, p3, p1, p0}, Lcom/inmobi/ads/ab;->a(Landroid/app/Activity;Lcom/inmobi/ads/b$f;Landroid/view/View;Lcom/inmobi/ads/q;)V

    .line 173
    :cond_0
    return-object p1

    .line 153
    :cond_1
    invoke-static {p1}, Lcom/inmobi/ads/q;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    check-cast p1, Lcom/inmobi/ads/ag;

    .line 157
    invoke-direct {p0, p1}, Lcom/inmobi/ads/q;->a(Lcom/inmobi/ads/ag;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/inmobi/ads/q;->e:Lcom/inmobi/ads/ac;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;

    move-result-object p1

    goto :goto_0

    .line 160
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/q;->a:Ljava/lang/String;

    const-string v2, "Already showing same ad, ignoring getAdView"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/q;->a:Ljava/lang/String;

    const-string v2, "InMobiNativeStrand.getStrandView called with Non Strand View."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/inmobi/ads/q;->e:Lcom/inmobi/ads/ac;

    invoke-virtual {v0, v3, p2}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;

    move-result-object p1

    goto :goto_0
.end method

.method public a()Lcom/inmobi/ads/x;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/inmobi/ads/q;->c:Lcom/inmobi/ads/x;

    return-object v0
.end method

.method public a(ILcom/inmobi/ads/NativeStrandAsset;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/ads/q;->d()V

    .line 129
    check-cast p2, Lcom/inmobi/ads/v;

    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/q;->a(ILcom/inmobi/ads/v;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method

.method public a(Lcom/inmobi/ads/NativeStrandAsset;)V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/inmobi/ads/q;->d()V

    .line 117
    invoke-direct {p0, p1}, Lcom/inmobi/ads/q;->b(Lcom/inmobi/ads/NativeStrandAsset;)Ljava/util/Map;

    move-result-object v0

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/inmobi/ads/q;->b(Lcom/inmobi/ads/NativeStrandAsset;Ljava/util/Map;)V

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/inmobi/ads/q;->f(Lcom/inmobi/ads/NativeStrandAsset;Ljava/util/Map;)V

    .line 120
    return-void
.end method

.method public a(Lcom/inmobi/ads/q$a;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/inmobi/ads/q;->j:Lcom/inmobi/ads/q$a;

    .line 109
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/inmobi/ads/q;->i:Z

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/inmobi/ads/q;->i:Z

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/q;->j:Lcom/inmobi/ads/q$a;

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/q;->i:Z

    .line 196
    iget-object v0, p0, Lcom/inmobi/ads/q;->e:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->b()V

    .line 197
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    sget-object v1, Lcom/inmobi/ads/q;->k:Lcom/inmobi/ads/ab;

    iget-object v0, p0, Lcom/inmobi/ads/q;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0, p0}, Lcom/inmobi/ads/ab;->a(Landroid/app/Activity;Lcom/inmobi/ads/q;)V

    goto :goto_0
.end method

.method c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/inmobi/ads/q;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/q;->h:Z

    .line 248
    iget-object v0, p0, Lcom/inmobi/ads/q;->c:Lcom/inmobi/ads/x;

    invoke-virtual {v0}, Lcom/inmobi/ads/x;->a()Lcom/inmobi/ads/v;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/q;->c:Lcom/inmobi/ads/x;

    .line 249
    invoke-virtual {v1}, Lcom/inmobi/ads/x;->a()Lcom/inmobi/ads/v;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inmobi/ads/q;->b(Lcom/inmobi/ads/NativeStrandAsset;)Ljava/util/Map;

    move-result-object v1

    .line 248
    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/q;->a(Lcom/inmobi/ads/NativeStrandAsset;Ljava/util/Map;)V

    .line 251
    invoke-direct {p0}, Lcom/inmobi/ads/q;->d()V

    .line 252
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandAsset;

    .line 254
    invoke-direct {p0, v0}, Lcom/inmobi/ads/q;->b(Lcom/inmobi/ads/NativeStrandAsset;)Ljava/util/Map;

    move-result-object v2

    .line 253
    invoke-direct {p0, v0, v2}, Lcom/inmobi/ads/q;->e(Lcom/inmobi/ads/NativeStrandAsset;Ljava/util/Map;)V

    goto :goto_1

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
