.class public abstract Lcom/yandex/mobile/ads/af;
.super Lcom/yandex/mobile/ads/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/w",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field i:Lcom/yandex/mobile/ads/g;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/r;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/w;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/r;)V

    .line 24
    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/String;)Lcom/yandex/mobile/ads/g;
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/network/request/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yandex/mobile/ads/network/request/b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/yandex/mobile/ads/network/request/a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/af;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/af;->g:Lcom/yandex/mobile/ads/e;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/network/request/a;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/e;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;)V

    return-object v0
.end method

.method public a(Lcom/yandex/mobile/ads/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/n",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/w;->a(Lcom/yandex/mobile/ads/n;)V

    .line 34
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/n;->b()Lcom/yandex/mobile/ads/AdSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/af;->b(Lcom/yandex/mobile/ads/AdSize;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/n;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/af;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/g;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/af;->i:Lcom/yandex/mobile/ads/g;

    .line 37
    iget-object v0, p0, Lcom/yandex/mobile/ads/af;->i:Lcom/yandex/mobile/ads/g;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/g;->a()V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/yandex/mobile/ads/AdRequestError;->b:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/af;->onAdFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/yandex/mobile/ads/n;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/af;->a(Lcom/yandex/mobile/ads/n;)V

    return-void
.end method

.method protected abstract a(Lcom/yandex/mobile/ads/AdSize;)Z
.end method

.method b(Lcom/yandex/mobile/ads/AdSize;)Z
    .locals 2

    .prologue
    .line 50
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/af;->g:Lcom/yandex/mobile/ads/e;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/af;->a(Lcom/yandex/mobile/ads/AdSize;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/af;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yandex/mobile/ads/af;->g:Lcom/yandex/mobile/ads/e;

    .line 52
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/e;->b()Lcom/yandex/mobile/ads/v;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/yandex/mobile/ads/s;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/AdSize;Lcom/yandex/mobile/ads/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/yandex/mobile/ads/n;)Z
    .locals 1

    .prologue
    .line 27
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/n;->b()Lcom/yandex/mobile/ads/AdSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/af;->a(Lcom/yandex/mobile/ads/AdSize;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/yandex/mobile/ads/w;->h()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/af;->i:Lcom/yandex/mobile/ads/g;

    .line 59
    return-void
.end method
