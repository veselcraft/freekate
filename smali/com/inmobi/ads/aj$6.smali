.class Lcom/inmobi/ads/aj$6;
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
    .line 357
    iput-object p1, p0, Lcom/inmobi/ads/aj$6;->a:Lcom/inmobi/ads/aj;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/aj$b;-><init>(Lcom/inmobi/ads/aj;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;Lcom/inmobi/ads/NativeStrandAsset;)V
    .locals 0

    .prologue
    .line 365
    check-cast p1, Landroid/widget/Button;

    invoke-static {p1, p2}, Lcom/inmobi/ads/aj;->a(Landroid/widget/Button;Lcom/inmobi/ads/NativeStrandAsset;)Landroid/widget/Button;

    .line 366
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 370
    instance-of v0, p1, Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 375
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 374
    check-cast v0, Landroid/widget/Button;

    invoke-static {v0}, Lcom/inmobi/ads/aj;->a(Landroid/widget/TextView;)V

    .line 375
    invoke-super {p0, p1}, Lcom/inmobi/ads/aj$b;->a(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method
