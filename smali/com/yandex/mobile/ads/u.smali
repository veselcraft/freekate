.class public Lcom/yandex/mobile/ads/u;
.super Lcom/yandex/mobile/ads/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/g",
        "<",
        "Ljava/lang/String;",
        "Lcom/yandex/mobile/ads/t;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/yandex/mobile/ads/aj;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/t;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/g;-><init>(Ljava/lang/Object;Lcom/yandex/mobile/ads/w;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/t;)Landroid/view/View;
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/u;->b(Lcom/yandex/mobile/ads/t;)Lcom/yandex/mobile/ads/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/u;->d:Lcom/yandex/mobile/ads/aj;

    .line 25
    iget-object v1, p0, Lcom/yandex/mobile/ads/u;->d:Lcom/yandex/mobile/ads/aj;

    iget-object v0, p0, Lcom/yandex/mobile/ads/u;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/aj;->b(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/yandex/mobile/ads/u;->d:Lcom/yandex/mobile/ads/aj;

    return-object v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yandex/mobile/ads/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/t;

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/u;->a(Lcom/yandex/mobile/ads/t;)Landroid/view/View;

    .line 46
    :cond_0
    return-void
.end method

.method protected b(Lcom/yandex/mobile/ads/t;)Lcom/yandex/mobile/ads/aj;
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/t;->i()Lcom/yandex/mobile/ads/HtmlAdWebView;

    move-result-object v0

    .line 33
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/HtmlAdWebView;->setId(I)V

    .line 34
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/HtmlAdWebView;->setAdEventListener(Lcom/yandex/mobile/ads/AdEventListener;)V

    .line 35
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/HtmlAdWebView;->a(Lcom/yandex/mobile/ads/p;)V

    .line 37
    return-object v0
.end method
