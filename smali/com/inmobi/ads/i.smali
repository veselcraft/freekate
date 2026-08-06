.class public final Lcom/inmobi/ads/i;
.super Ljava/lang/Object;
.source "AdUnitCache.java"

# interfaces
.implements Lcom/inmobi/commons/core/configs/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/inmobi/ads/i;

.field private static d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/inmobi/ads/ak;",
            "Lcom/inmobi/ads/AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/inmobi/ads/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/inmobi/ads/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/i;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/inmobi/ads/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    new-instance v0, Lcom/inmobi/ads/b;

    invoke-direct {v0}, Lcom/inmobi/ads/b;-><init>()V

    sput-object v0, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    .line 55
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 56
    invoke-direct {p0}, Lcom/inmobi/ads/i;->f()V

    .line 57
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    invoke-virtual {v2}, Lcom/inmobi/ads/b;->m()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 58
    return-void
.end method

.method public static a()Lcom/inmobi/ads/i;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/inmobi/ads/i;->c:Lcom/inmobi/ads/i;

    .line 38
    if-nez v0, :cond_1

    .line 39
    sget-object v1, Lcom/inmobi/ads/i;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/i;->c:Lcom/inmobi/ads/i;

    .line 41
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/inmobi/ads/i;

    invoke-direct {v0}, Lcom/inmobi/ads/i;-><init>()V

    .line 43
    sput-object v0, Lcom/inmobi/ads/i;->c:Lcom/inmobi/ads/i;

    .line 45
    :cond_0
    monitor-exit v1

    .line 47
    :cond_1
    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 287
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tp"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/ads/i;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/inmobi/ads/i;->g()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    const-string v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "PreLoadCacheHit"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 167
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "type"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "PreLoadCacheMiss"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 174
    return-void
.end method

.method private a(Lcom/inmobi/ads/AdUnit;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v1, v2, :cond_1

    .line 220
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    const-string v3, "hasAdUnitExpired. Ad unit in loading state."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->i()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v1, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/inmobi/ads/b;->a(Ljava/lang/String;)Lcom/inmobi/ads/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b$a;->e()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 225
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Lcom/inmobi/ads/ak;)V
    .locals 4

    .prologue
    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {}, Lcom/inmobi/ads/al;->a()Lcom/inmobi/ads/al;

    move-result-object v1

    sget-object v2, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    invoke-virtual {v2}, Lcom/inmobi/ads/b;->n()Lcom/inmobi/ads/b$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/b$d;->c()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/ads/al;->a(Ljava/util/List;I)I

    move-result v0

    .line 181
    if-lez v0, :cond_0

    .line 182
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 183
    const-string v2, "count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v2, "ads"

    const-string v3, "PreLoadPidOverflow"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 186
    :cond_0
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/inmobi/ads/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 65
    new-instance v1, Lcom/inmobi/ads/i$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/i$1;-><init>(Lcom/inmobi/ads/i;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v1, Lcom/inmobi/ads/i$2;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/i$2;-><init>(Lcom/inmobi/ads/i;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/ads/i$3;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/i$3;-><init>(Lcom/inmobi/ads/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 189
    sget-object v0, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->n()Lcom/inmobi/ads/b$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/b$d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {}, Lcom/inmobi/ads/al;->a()Lcom/inmobi/ads/al;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->n()Lcom/inmobi/ads/b$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b$d;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/ads/al;->a(J)I

    move-result v0

    .line 194
    if-lez v0, :cond_0

    .line 195
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 196
    const-string v2, "count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v2, "ads"

    const-string v3, "PreLoadPidExpiry"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private i()V
    .locals 10

    .prologue
    .line 202
    sget-object v0, Lcom/inmobi/ads/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 204
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/AdUnit;

    .line 208
    invoke-direct {p0, v1}, Lcom/inmobi/ads/i;->a(Lcom/inmobi/ads/AdUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpExpiredCachedAdUnits. pid:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/ak;

    invoke-virtual {v2}, Lcom/inmobi/ads/ak;->c()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " tp:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ak;

    invoke-virtual {v0}, Lcom/inmobi/ads/ak;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit;->t()V

    .line 211
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 214
    :cond_1
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 231
    sget-object v0, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->n()Lcom/inmobi/ads/b$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/b$d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    :cond_0
    return-void

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/ads/i;->l()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 237
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 238
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ak;

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/i;->b(Lcom/inmobi/ads/ak;)V

    .line 237
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private k()V
    .locals 10

    .prologue
    .line 270
    sget-object v0, Lcom/inmobi/ads/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sget-object v1, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->n()Lcom/inmobi/ads/b$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b$d;->c()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 271
    invoke-static {}, Lcom/inmobi/ads/al;->a()Lcom/inmobi/ads/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/al;->b()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 272
    sget-object v1, Lcom/inmobi/ads/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 274
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 277
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v2}, Lcom/inmobi/ads/AdUnit;->t()V

    .line 279
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 280
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing extra ad unit from ad unit cache. Pid:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/ak;

    invoke-virtual {v2}, Lcom/inmobi/ads/ak;->c()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " tp:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ak;

    invoke-virtual {v1}, Lcom/inmobi/ads/ak;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_1
    return-void
.end method

.method private l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/ak;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-static {}, Lcom/inmobi/ads/al;->a()Lcom/inmobi/ads/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/al;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/inmobi/ads/ak;)Lcom/inmobi/ads/AdUnit;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 135
    sget-object v0, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->n()Lcom/inmobi/ads/b$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/b$d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No cached ad unit found as config is disabled. pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 158
    :goto_0
    return-object v0

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/i;->c(Lcom/inmobi/ads/ak;)V

    .line 141
    sget-object v0, Lcom/inmobi/ads/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit;

    .line 142
    if-nez v0, :cond_1

    .line 143
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No cached ad unit found for pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "Other"

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/inmobi/ads/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 145
    goto :goto_0

    .line 148
    :cond_1
    invoke-direct {p0, v0}, Lcom/inmobi/ads/i;->a(Lcom/inmobi/ads/AdUnit;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expired cached ad unit found for pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->c()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->t()V

    .line 151
    sget-object v0, Lcom/inmobi/ads/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "AdUnitExpired"

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/inmobi/ads/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 153
    goto/16 :goto_0

    .line 155
    :cond_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cached ad unit found for pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v1, Lcom/inmobi/ads/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inmobi/ads/i;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 3

    .prologue
    .line 118
    check-cast p1, Lcom/inmobi/ads/b;

    sput-object p1, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    .line 119
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    .line 120
    invoke-virtual {v2}, Lcom/inmobi/ads/b;->m()Lorg/json/JSONObject;

    move-result-object v2

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 121
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/inmobi/ads/i;->h()V

    .line 125
    invoke-direct {p0}, Lcom/inmobi/ads/i;->i()V

    .line 126
    invoke-direct {p0}, Lcom/inmobi/ads/i;->j()V

    .line 127
    return-void
.end method

.method public b(Lcom/inmobi/ads/ak;)V
    .locals 6

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/inmobi/ads/i;->k()V

    .line 245
    sget-object v0, Lcom/inmobi/ads/i;->e:Lcom/inmobi/ads/b;

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->n()Lcom/inmobi/ads/b$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/b$d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/ads/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preLoadAdUnit. pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->a()Ljava/util/Map;

    move-result-object v0

    .line 250
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 252
    const-string v1, "tp"

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {p1, v0}, Lcom/inmobi/ads/ak;->a(Ljava/util/Map;)V

    .line 256
    :cond_0
    new-instance v0, Lcom/inmobi/ads/o;

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->c()J

    move-result-wide v2

    new-instance v4, Lcom/inmobi/ads/i$a;

    invoke-direct {v4, p0, p1}, Lcom/inmobi/ads/i$a;-><init>(Lcom/inmobi/ads/i;Lcom/inmobi/ads/ak;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/ads/o;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V

    .line 257
    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/o;->a(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Lcom/inmobi/ads/ak;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/o;->a(Ljava/util/Map;)V

    .line 259
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/o;->a(Z)V

    .line 260
    sget-object v1, Lcom/inmobi/ads/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {v0}, Lcom/inmobi/ads/o;->o()V

    .line 263
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 264
    const-string v2, "type"

    invoke-virtual {v0}, Lcom/inmobi/ads/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v2, "ads"

    const-string v3, "AdPreLoadRequested"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 267
    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/inmobi/ads/i;->h()V

    .line 131
    invoke-direct {p0}, Lcom/inmobi/ads/i;->i()V

    .line 132
    return-void
.end method
