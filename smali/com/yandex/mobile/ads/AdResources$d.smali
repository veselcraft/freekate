.class final Lcom/yandex/mobile/ads/AdResources$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/AdResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# direct methods
.method static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 326
    invoke-static {p1}, Lcom/yandex/mobile/ads/s;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 327
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 328
    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 329
    invoke-static {}, Lcom/yandex/mobile/ads/AdResources$b;->a()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    return-object v0
.end method
