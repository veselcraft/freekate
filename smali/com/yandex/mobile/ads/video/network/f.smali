.class public Lcom/yandex/mobile/ads/video/network/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/video/network/f$a;,
        Lcom/yandex/mobile/ads/video/network/f$b;,
        Lcom/yandex/mobile/ads/video/network/f$c;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Random;

.field private static b:Lcom/yandex/mobile/ads/video/network/d;


# direct methods
.method static a()Ljava/util/Random;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/yandex/mobile/ads/video/network/f;->a:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 285
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yandex/mobile/ads/video/network/f;->a:Ljava/util/Random;

    goto :goto_0
.end method

.method static b()Lcom/yandex/mobile/ads/video/network/d;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/yandex/mobile/ads/video/network/f;->b:Lcom/yandex/mobile/ads/video/network/d;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lcom/yandex/mobile/ads/video/network/f$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/video/network/f$1;-><init>()V

    .line 310
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yandex/mobile/ads/video/network/f;->b:Lcom/yandex/mobile/ads/video/network/d;

    goto :goto_0
.end method
