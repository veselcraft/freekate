.class Lcom/yandex/mobile/ads/network/core/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/network/core/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/network/core/k;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/yandex/mobile/ads/network/core/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/network/core/s$b",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yandex/mobile/ads/network/core/k;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/network/core/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/k$1;->b:Lcom/yandex/mobile/ads/network/core/k;

    iput-object p2, p0, Lcom/yandex/mobile/ads/network/core/k$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k$1;->b:Lcom/yandex/mobile/ads/network/core/k;

    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/k$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/network/core/k;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 253
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 249
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/network/core/k$1;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
