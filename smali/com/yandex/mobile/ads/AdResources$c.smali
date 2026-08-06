.class final Lcom/yandex/mobile/ads/AdResources$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/AdResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# direct methods
.method static a()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 474
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 475
    return-object v0
.end method

.method static a(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    .line 459
    int-to-float v0, p1

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    .line 460
    int-to-float v1, p2

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v1

    .line 462
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v2
.end method

.method static a(Landroid/content/Context;Lcom/yandex/mobile/ads/n;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 393
    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/n;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/n;->d()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/yandex/mobile/ads/AdResources$c;->a(Landroid/content/Context;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 396
    :goto_0
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 398
    return-object v0

    .line 394
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method
