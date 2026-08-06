.class public abstract Lcom/yandex/mobile/ads/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/AdEventListener;
.implements Lcom/yandex/mobile/ads/PhoneStateTracker$b;
.implements Lcom/yandex/mobile/ads/aa;
.implements Lcom/yandex/mobile/ads/an$a;
.implements Lcom/yandex/mobile/ads/network/request/c$a;
.implements Lcom/yandex/mobile/ads/o$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/AdEventListener;",
        "Lcom/yandex/mobile/ads/PhoneStateTracker$b;",
        "Lcom/yandex/mobile/ads/aa;",
        "Lcom/yandex/mobile/ads/an$a;",
        "Lcom/yandex/mobile/ads/network/request/c$a",
        "<",
        "Lcom/yandex/mobile/ads/n",
        "<TT;>;>;",
        "Lcom/yandex/mobile/ads/o$a;"
    }
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroid/content/Context;

.field final c:Lcom/yandex/mobile/ads/h;

.field final d:Lcom/yandex/mobile/ads/o;

.field e:Lcom/yandex/mobile/ads/AdEventListener;

.field f:Lcom/yandex/mobile/ads/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/n",
            "<TT;>;"
        }
    .end annotation
.end field

.field g:Lcom/yandex/mobile/ads/e;

.field private final h:Lcom/yandex/mobile/ads/PhoneStateTracker;

.field private i:Lcom/yandex/mobile/ads/k;

.field private j:Z

.field private k:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/r;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/yandex/mobile/ads/w;->b:Landroid/content/Context;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/w;->a:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/yandex/mobile/ads/h;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/h;-><init>(Lcom/yandex/mobile/ads/w;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/w;->c:Lcom/yandex/mobile/ads/h;

    .line 61
    new-instance v0, Lcom/yandex/mobile/ads/o;

    iget-object v1, p0, Lcom/yandex/mobile/ads/w;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/o;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/w;->d:Lcom/yandex/mobile/ads/o;

    .line 62
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->d:Lcom/yandex/mobile/ads/o;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/o;->a(Lcom/yandex/mobile/ads/o$a;)V

    .line 64
    sget-object v0, Lcom/yandex/mobile/ads/k;->a:Lcom/yandex/mobile/ads/k;

    iput-object v0, p0, Lcom/yandex/mobile/ads/w;->i:Lcom/yandex/mobile/ads/k;

    .line 65
    invoke-static {}, Lcom/yandex/mobile/ads/PhoneStateTracker;->a()Lcom/yandex/mobile/ads/PhoneStateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/w;->h:Lcom/yandex/mobile/ads/PhoneStateTracker;

    .line 67
    new-instance v0, Lcom/yandex/mobile/ads/e;

    invoke-direct {v0, p2}, Lcom/yandex/mobile/ads/e;-><init>(Lcom/yandex/mobile/ads/r;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    .line 68
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/e;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method B()Lcom/yandex/mobile/ads/AdEventListener;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->e:Lcom/yandex/mobile/ads/AdEventListener;

    return-object v0
.end method

.method C()Lcom/yandex/mobile/ads/v;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/e;->b()Lcom/yandex/mobile/ads/v;

    move-result-object v0

    return-object v0
.end method

.method public D()Lcom/yandex/mobile/ads/e;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    return-object v0
.end method

.method protected E()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->e:Lcom/yandex/mobile/ads/AdEventListener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->e:Lcom/yandex/mobile/ads/AdEventListener;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/AdEventListener;->onAdLoaded()V

    .line 305
    :cond_0
    return-void
.end method

.method F()V
    .locals 2

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->h()V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroy(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    return-void
.end method

.method G()V
    .locals 2

    .prologue
    .line 391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/w;->k:J

    .line 392
    return-void
.end method

.method public H()V
    .locals 2

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerPhoneStateTracker(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->h:Lcom/yandex/mobile/ads/PhoneStateTracker;

    iget-object v1, p0, Lcom/yandex/mobile/ads/w;->b:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/PhoneStateTracker;->a(Lcom/yandex/mobile/ads/PhoneStateTracker$b;Landroid/content/Context;)V

    .line 409
    return-void
.end method

.method public I()V
    .locals 2

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregisterPhoneStateTracker(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->h:Lcom/yandex/mobile/ads/PhoneStateTracker;

    iget-object v1, p0, Lcom/yandex/mobile/ads/w;->b:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/PhoneStateTracker;->b(Lcom/yandex/mobile/ads/PhoneStateTracker$b;Landroid/content/Context;)V

    .line 414
    return-void
.end method

.method public J()V
    .locals 2

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregisterIdentifierCallbackListener(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {}, Lcom/yandex/mobile/ads/an;->a()Lcom/yandex/mobile/ads/an;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/an;->b(Lcom/yandex/mobile/ads/an$a;)V

    .line 419
    return-void
.end method

.method public K()Z
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->h:Lcom/yandex/mobile/ads/PhoneStateTracker;

    iget-object v1, p0, Lcom/yandex/mobile/ads/w;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/PhoneStateTracker;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public L()Lcom/yandex/mobile/ads/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/n",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->f:Lcom/yandex/mobile/ads/n;

    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/network/request/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yandex/mobile/ads/network/request/b",
            "<TT;>;"
        }
    .end annotation
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 351
    packed-switch p1, :pswitch_data_0

    .line 363
    :goto_0
    return-void

    .line 354
    :pswitch_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->onAdOpened()V

    goto :goto_0

    .line 358
    :pswitch_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->onAdClosed()V

    goto :goto_0

    .line 362
    :pswitch_2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->onAdLeftApplication()V

    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    return-void
.end method

.method a(Lcom/yandex/mobile/ads/AdEventListener;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/yandex/mobile/ads/w;->e:Lcom/yandex/mobile/ads/AdEventListener;

    .line 254
    return-void
.end method

.method declared-synchronized a(Lcom/yandex/mobile/ads/AdRequest;)V
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/w;->c(Lcom/yandex/mobile/ads/AdRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lcom/yandex/mobile/ads/k;->a:Lcom/yandex/mobile/ads/k;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/k;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/w;->b(Lcom/yandex/mobile/ads/AdRequest;)V

    .line 76
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/yandex/mobile/ads/k;->b:Lcom/yandex/mobile/ads/k;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/k;)V

    .line 78
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->E()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/yandex/mobile/ads/AdRequestError;)V
    .locals 0

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/w;->onAdFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 234
    return-void
.end method

.method declared-synchronized a(Lcom/yandex/mobile/ads/k;)V
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/w;->i:Lcom/yandex/mobile/ads/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/yandex/mobile/ads/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 435
    iput-object p1, p0, Lcom/yandex/mobile/ads/w;->f:Lcom/yandex/mobile/ads/n;

    .line 436
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/network/core/error/h;)V
    .locals 1

    .prologue
    .line 440
    instance-of v0, p1, Lcom/yandex/mobile/ads/f;

    if-eqz v0, :cond_0

    .line 441
    check-cast p1, Lcom/yandex/mobile/ads/f;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/f;->a()I

    move-result v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/h;->a(I)Lcom/yandex/mobile/ads/AdRequestError;

    move-result-object v0

    .line 442
    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 444
    :cond_0
    return-void
.end method

.method a(Lcom/yandex/mobile/ads/v;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/e;->a(Lcom/yandex/mobile/ads/v;)V

    .line 262
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/yandex/mobile/ads/n;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/n;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 272
    iget-object v1, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    const-string v0, "yandex_mobile_metrica_uuid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/e;->a(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    const-string v0, "yandex_mobile_metrica_get_ad_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/e;->c(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/e;->a(Z)V

    .line 427
    return-void
.end method

.method declared-synchronized b(Lcom/yandex/mobile/ads/AdRequest;)V
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/e;->a(Lcom/yandex/mobile/ads/AdRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/e;->b(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method protected b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/yandex/mobile/ads/w;->b:Landroid/content/Context;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->f:Lcom/yandex/mobile/ads/n;

    iget-object v1, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    .line 374
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/e;->i()Z

    move-result v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/w;->d:Lcom/yandex/mobile/ads/o;

    .line 373
    invoke-static {p2, p1, v0, v1, v2}, Lcom/yandex/mobile/ads/q;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/n;ZLandroid/os/ResultReceiver;)V

    .line 375
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/w;->j:Z

    return v0
.end method

.method c(Lcom/yandex/mobile/ads/AdRequest;)Z
    .locals 4

    .prologue
    .line 395
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->f:Lcom/yandex/mobile/ads/n;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/yandex/mobile/ads/w;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 396
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yandex/mobile/ads/w;->k:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/yandex/mobile/ads/w;->f:Lcom/yandex/mobile/ads/n;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/n;->k()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    .line 397
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/e;->d()Lcom/yandex/mobile/ads/AdRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/AdRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 330
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/w;->j:Z

    if-eq v0, v2, :cond_0

    .line 331
    iput-boolean v2, p0, Lcom/yandex/mobile/ads/w;->j:Z

    .line 332
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->I()V

    .line 333
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->J()V

    .line 334
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->d:Lcom/yandex/mobile/ads/o;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/o;->a(Lcom/yandex/mobile/ads/o$a;)V

    .line 335
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->c:Lcom/yandex/mobile/ads/h;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/h;->c()V

    .line 336
    iput-object v1, p0, Lcom/yandex/mobile/ads/w;->f:Lcom/yandex/mobile/ads/n;

    .line 337
    iput-object v1, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    .line 338
    iput-object v1, p0, Lcom/yandex/mobile/ads/w;->e:Lcom/yandex/mobile/ads/AdEventListener;

    .line 340
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 342
    :cond_0
    return-void
.end method

.method protected j()V
    .locals 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "v3/ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/w;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    new-instance v3, Lcom/yandex/mobile/ads/ae$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/yandex/mobile/ads/ae$b;-><init>(B)V

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/e;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/ae$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/e;->b()Lcom/yandex/mobile/ads/v;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/yandex/mobile/ads/ae$a;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/v;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/e;->a()Lcom/yandex/mobile/ads/r;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/ae$a;->a(Lcom/yandex/mobile/ads/r;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v3

    invoke-static {v1}, Lcom/yandex/metrica/p;->glkl(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/ae$a;->a(Landroid/location/Location;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/ae$a;->b(Ljava/lang/String;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/e;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/ae$a;->c(Ljava/lang/String;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/ae$a;->b(Landroid/content/Context;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/ae$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/ae$a;->c(Landroid/content/Context;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/ae$a;->d(Landroid/content/Context;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/ae$a;->e(Landroid/content/Context;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/e;->d()Lcom/yandex/mobile/ads/AdRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/ae$a;->a(Lcom/yandex/mobile/ads/AdRequest;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/e;->o()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/ae$a;->a([Ljava/lang/String;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/e;->p()Lcom/yandex/mobile/ads/nativeads/ar;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/ae$a;->a(Lcom/yandex/mobile/ads/nativeads/ar;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v2

    invoke-static {}, Lcom/yandex/metrica/p;->plat()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {}, Lcom/yandex/metrica/p;->pgai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/yandex/mobile/ads/ae$a;->a(Ljava/lang/Boolean;Ljava/lang/String;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v2

    invoke-static {v1}, Lcom/yandex/mobile/ads/utils/f;->h(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/ae$a;->a(Ljava/lang/Integer;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/ae$a;->d(Ljava/lang/String;)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v1

    sget-wide v2, Lcom/yandex/mobile/ads/s;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/yandex/mobile/ads/ae$a;->a(J)Lcom/yandex/mobile/ads/ae$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/ae$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/network/request/b;

    move-result-object v0

    .line 91
    invoke-static {p0}, Lcom/yandex/mobile/ads/s;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/network/request/b;->b(Ljava/lang/Object;)Lcom/yandex/mobile/ads/network/core/q;

    .line 93
    iget-object v1, p0, Lcom/yandex/mobile/ads/w;->c:Lcom/yandex/mobile/ads/h;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/h;->a(Lcom/yandex/mobile/ads/network/request/b;)V

    .line 97
    :goto_2
    return-void

    .line 87
    :cond_0
    const-string v0, "/"

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 95
    :cond_2
    sget-object v0, Lcom/yandex/mobile/ads/AdRequestError;->l:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    goto :goto_2
.end method

.method declared-synchronized k()Lcom/yandex/mobile/ads/AdRequest;
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/e;->d()Lcom/yandex/mobile/ads/AdRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized l()Z
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->i:Lcom/yandex/mobile/ads/k;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/k;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized m()Z
    .locals 1

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->i:Lcom/yandex/mobile/ads/k;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/k;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized n()Z
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->i:Lcom/yandex/mobile/ads/k;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/k;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()Landroid/content/Context;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->b:Landroid/content/Context;

    return-object v0
.end method

.method public onAdClosed()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->e:Lcom/yandex/mobile/ads/AdEventListener;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->e:Lcom/yandex/mobile/ads/AdEventListener;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/AdEventListener;->onAdClosed()V

    .line 312
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V
    .locals 2
    .param p1, "error"    # Lcom/yandex/mobile/ads/AdRequestError;

    .prologue
    .line 286
    .local p0, "this":Lcom/yandex/mobile/ads/w;, "Lcom/yandex/mobile/ads/w<TT;>;"
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/AdRequestError;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/logger/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    sget-object v0, Lcom/yandex/mobile/ads/k;->d:Lcom/yandex/mobile/ads/k;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/k;)V

    .line 288
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->e:Lcom/yandex/mobile/ads/AdEventListener;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->e:Lcom/yandex/mobile/ads/AdEventListener;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/AdEventListener;->onAdFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 291
    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->e:Lcom/yandex/mobile/ads/AdEventListener;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->e:Lcom/yandex/mobile/ads/AdEventListener;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/AdEventListener;->onAdLeftApplication()V

    .line 326
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/yandex/mobile/ads/k;->c:Lcom/yandex/mobile/ads/k;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/k;)V

    .line 296
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->G()V

    .line 297
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->E()V

    .line 298
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->e:Lcom/yandex/mobile/ads/AdEventListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->e:Lcom/yandex/mobile/ads/AdEventListener;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/AdEventListener;->onAdOpened()V

    .line 319
    :cond_0
    return-void
.end method

.method p()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected q()Z
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method r()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 142
    :try_start_0
    invoke-static {}, Lcom/yandex/mobile/ads/utils/d;->a()Lcom/yandex/mobile/ads/utils/d;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/w;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/utils/d;->a(Landroid/content/Context;)Z
    :try_end_0
    .catch Lcom/yandex/mobile/ads/utils/d$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return v0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    new-instance v2, Lcom/yandex/mobile/ads/AdRequestError;

    .line 145
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/utils/d$a;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/yandex/mobile/ads/AdRequestError;-><init>(ILjava/lang/String;)V

    .line 144
    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 147
    const/4 v0, 0x0

    goto :goto_0
.end method

.method s()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 155
    iget-object v1, p0, Lcom/yandex/mobile/ads/w;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/mobile/ads/s;->d(Landroid/content/Context;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 156
    sget-object v0, Lcom/yandex/mobile/ads/AdRequestError;->a:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 157
    const/4 v0, 0x0

    .line 160
    :cond_0
    return v0
.end method

.method t()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/e;->b()Lcom/yandex/mobile/ads/v;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lcom/yandex/mobile/ads/AdRequestError;->n:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 167
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method u()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/e;->d()Lcom/yandex/mobile/ads/AdRequest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    sget-object v0, Lcom/yandex/mobile/ads/AdRequestError;->l:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 177
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method v()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 183
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->w()Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 184
    sget-object v1, Lcom/yandex/mobile/ads/AdRequestError;->q:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    invoke-static {}, Lcom/yandex/metrica/p;->iifa()Z

    move-result v2

    if-eq v2, v1, :cond_2

    .line 189
    sget-object v1, Lcom/yandex/mobile/ads/AdRequestError;->o:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    goto :goto_0

    .line 193
    :cond_2
    invoke-static {}, Lcom/yandex/mobile/ads/utils/a;->a()Z

    move-result v2

    if-eq v2, v1, :cond_3

    .line 194
    sget-object v1, Lcom/yandex/mobile/ads/AdRequestError;->p:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v2, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/e;->m()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/e;->n()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    :goto_1
    if-eq v2, v1, :cond_6

    .line 200
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/w;->z()V

    .line 202
    iget-object v2, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/e;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/e;->n()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 203
    :cond_4
    if-nez v0, :cond_0

    .line 204
    sget-object v1, Lcom/yandex/mobile/ads/AdRequestError;->c:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    goto :goto_0

    :cond_5
    move v2, v0

    .line 199
    goto :goto_1

    :cond_6
    move v0, v1

    .line 209
    goto :goto_0
.end method

.method w()Z
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/yandex/mobile/ads/utils/d;->b()Z

    move-result v0

    return v0
.end method

.method x()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 217
    iget-object v1, p0, Lcom/yandex/mobile/ads/w;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/mobile/ads/s;->a(Landroid/content/Context;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 218
    sget-object v0, Lcom/yandex/mobile/ads/AdRequestError;->i:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 219
    const/4 v0, 0x0

    .line 221
    :cond_0
    return v0
.end method

.method y()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 225
    iget-object v1, p0, Lcom/yandex/mobile/ads/w;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/e;->l()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 226
    sget-object v0, Lcom/yandex/mobile/ads/AdRequestError;->m:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 227
    const/4 v0, 0x0

    .line 229
    :cond_0
    return v0
.end method

.method z()V
    .locals 1

    .prologue
    .line 238
    :try_start_0
    invoke-static {}, Lcom/yandex/mobile/ads/an;->a()Lcom/yandex/mobile/ads/an;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/an;->a(Lcom/yandex/mobile/ads/an$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    sget-object v0, Lcom/yandex/mobile/ads/AdRequestError;->p:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    goto :goto_0
.end method
