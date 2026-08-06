.class Lcom/inmobi/ads/aj$4;
.super Lcom/inmobi/ads/aj$b;
.source "NativeStrandViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/aj;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/aj;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/aj;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/inmobi/ads/aj$4;->a:Lcom/inmobi/ads/aj;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/aj$b;-><init>(Lcom/inmobi/ads/aj;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 311
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;Lcom/inmobi/ads/NativeStrandAsset;)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/inmobi/ads/aj$4;->a:Lcom/inmobi/ads/aj;

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {v0, p1, p2}, Lcom/inmobi/ads/aj;->a(Lcom/inmobi/ads/aj;Landroid/widget/ImageView;Lcom/inmobi/ads/NativeStrandAsset;)V

    .line 317
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 321
    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 326
    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    invoke-super {p0, p1}, Lcom/inmobi/ads/aj$b;->a(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method
