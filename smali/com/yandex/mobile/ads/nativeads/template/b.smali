.class public Lcom/yandex/mobile/ads/nativeads/template/b;
.super Lcom/yandex/mobile/ads/nativeads/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/nativeads/ac",
        "<",
        "Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;Lcom/yandex/mobile/ads/nativeads/f;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/ac;-><init>(Lcom/yandex/mobile/ads/nativeads/NativeAdView;Lcom/yandex/mobile/ads/nativeads/f;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/yandex/mobile/ads/nativeads/NativeAdView;Lcom/yandex/mobile/ads/nativeads/f;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/template/b;->a(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;Lcom/yandex/mobile/ads/nativeads/f;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;Lcom/yandex/mobile/ads/nativeads/f;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;",
            "Lcom/yandex/mobile/ads/nativeads/f;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/nativeads/ay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    const-string v1, "age"

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/ay$c;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a()Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/nativeads/ay$c;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "body"

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/ay$c;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b()Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/nativeads/ay$c;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "call_to_action"

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/ay$c;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->c()Landroid/widget/Button;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/nativeads/ay$c;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "domain"

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/ay$c;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->d()Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/nativeads/ay$c;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "image"

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/ay$a;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->e()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/yandex/mobile/ads/nativeads/ay$a;-><init>(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/nativeads/f;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "sponsored"

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/ay$c;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->f()Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/nativeads/ay$c;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "title"

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/ay$c;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->g()Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/nativeads/ay$c;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "warning"

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/ay$c;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->h()Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/nativeads/ay$c;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "icon"

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/ay$a;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->i()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/yandex/mobile/ads/nativeads/ay$a;-><init>(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/nativeads/f;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "rating"

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/ay$b;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->j()Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/nativeads/ay$b;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "review_count"

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/ay$c;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->k()Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/nativeads/ay$c;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "favicon"

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/ay$a;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->l()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/yandex/mobile/ads/nativeads/ay$a;-><init>(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/nativeads/f;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object v0
.end method
