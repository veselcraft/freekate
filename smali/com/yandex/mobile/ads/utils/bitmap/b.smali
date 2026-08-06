.class public Lcom/yandex/mobile/ads/utils/bitmap/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Lcom/yandex/mobile/ads/utils/bitmap/a;
    .locals 1

    .prologue
    .line 19
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/yandex/mobile/ads/utils/bitmap/c;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/utils/bitmap/c;-><init>()V

    .line 25
    :goto_0
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/utils/bitmap/e;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/utils/bitmap/e;-><init>()V

    goto :goto_0
.end method
