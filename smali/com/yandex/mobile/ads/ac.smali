.class Lcom/yandex/mobile/ads/ac;
.super Lcom/yandex/mobile/ads/t;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/am;


# instance fields
.field h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/InternalAdView;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/t;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/InternalAdView;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/ac;->h:Z

    .line 22
    return-void
.end method


# virtual methods
.method public M()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/ac;->h:Z

    .line 27
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ac;->R()V

    .line 28
    return-void
.end method

.method public N()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/ac;->h:Z

    .line 33
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ac;->R()V

    .line 34
    return-void
.end method

.method O()Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/yandex/mobile/ads/t;->O()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/ac;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Lcom/yandex/mobile/ads/g;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/yandex/mobile/ads/ad;

    invoke-direct {v0, p1, p0}, Lcom/yandex/mobile/ads/ad;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/ac;)V

    return-object v0
.end method

.method i()Lcom/yandex/mobile/ads/HtmlAdWebView;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lcom/yandex/mobile/ads/ah;

    iget-object v1, p0, Lcom/yandex/mobile/ads/ac;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/ac;->f:Lcom/yandex/mobile/ads/n;

    iget-object v3, p0, Lcom/yandex/mobile/ads/ac;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/e;->b()Lcom/yandex/mobile/ads/v;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/ah;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/n;Lcom/yandex/mobile/ads/v;)V

    return-object v0
.end method
