.class public Lcom/yandex/mobile/ads/nativeads/ay$a;
.super Lcom/yandex/mobile/ads/nativeads/ay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/nativeads/ay",
        "<",
        "Landroid/widget/ImageView;",
        "Lcom/yandex/mobile/ads/nativeads/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/nativeads/f;

.field private final b:Lcom/yandex/mobile/ads/utils/bitmap/b;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/nativeads/f;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/ay;-><init>(Landroid/view/View;)V

    .line 64
    iput-object p2, p0, Lcom/yandex/mobile/ads/nativeads/ay$a;->a:Lcom/yandex/mobile/ads/nativeads/f;

    .line 65
    new-instance v0, Lcom/yandex/mobile/ads/utils/bitmap/b;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/utils/bitmap/b;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ay$a;->b:Lcom/yandex/mobile/ads/utils/bitmap/b;

    .line 66
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 57
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/nativeads/ay$a;->a(Landroid/widget/ImageView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;)Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/nativeads/ay;->a(Landroid/view/View;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Lcom/yandex/mobile/ads/nativeads/g;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/ay$a;->a(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/nativeads/g;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/nativeads/g;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ay$a;->a:Lcom/yandex/mobile/ads/nativeads/f;

    invoke-interface {v0, p2}, Lcom/yandex/mobile/ads/nativeads/f;->a(Lcom/yandex/mobile/ads/nativeads/g;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    :cond_0
    return-void
.end method

.method public bridge synthetic b(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 57
    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Lcom/yandex/mobile/ads/nativeads/g;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/ay$a;->b(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/nativeads/g;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/nativeads/g;)Z
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/ay$a;->a:Lcom/yandex/mobile/ads/nativeads/f;

    invoke-interface {v2, p2}, Lcom/yandex/mobile/ads/nativeads/f;->a(Lcom/yandex/mobile/ads/nativeads/g;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 87
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ay$a;->b:Lcom/yandex/mobile/ads/utils/bitmap/b;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/utils/bitmap/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/yandex/mobile/ads/utils/bitmap/a;

    move-result-object v0

    .line 89
    invoke-interface {v0, v1, v2}, Lcom/yandex/mobile/ads/utils/bitmap/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 92
    :cond_0
    return v0
.end method
