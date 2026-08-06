.class public final Lcom/yandex/mobile/ads/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/q$a;,
        Lcom/yandex/mobile/ads/q$c;,
        Lcom/yandex/mobile/ads/q$b;,
        Lcom/yandex/mobile/ads/q$d;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/q$b;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/q$b;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/q;->a(Ljava/util/Collection;Lcom/yandex/mobile/ads/q$d;)V

    .line 52
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/n;ZLandroid/os/ResultReceiver;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/yandex/mobile/ads/q;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/n;ZLandroid/os/ResultReceiver;Lcom/yandex/mobile/ads/nativeads/b;Lcom/yandex/mobile/ads/report/b$a;)V

    .line 63
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/n;ZLandroid/os/ResultReceiver;Lcom/yandex/mobile/ads/nativeads/b;Lcom/yandex/mobile/ads/report/b$a;)V
    .locals 7

    .prologue
    .line 70
    new-instance v0, Lcom/yandex/mobile/ads/q$c;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/q$c;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/n;ZLandroid/os/ResultReceiver;Lcom/yandex/mobile/ads/nativeads/b;Lcom/yandex/mobile/ads/report/b$a;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/q;->a(Ljava/util/Collection;Lcom/yandex/mobile/ads/q$d;)V

    .line 71
    return-void
.end method

.method public static a(Ljava/util/Collection;Lcom/yandex/mobile/ads/q$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/q$d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->a([Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/yandex/mobile/ads/q$a;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/q$a;-><init>(Ljava/util/Collection;Lcom/yandex/mobile/ads/q$d;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/q$a;->start()V

    .line 85
    :cond_0
    return-void
.end method
