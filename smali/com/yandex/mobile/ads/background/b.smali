.class public final Lcom/yandex/mobile/ads/background/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/yandex/mobile/ads/background/a;
    .locals 2

    .prologue
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 20
    new-instance v0, Lcom/yandex/mobile/ads/background/c;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/background/c;-><init>(Landroid/content/Context;)V

    .line 25
    :goto_0
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/background/e;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/background/e;-><init>()V

    goto :goto_0
.end method
