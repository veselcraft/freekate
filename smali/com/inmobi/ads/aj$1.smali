.class Lcom/inmobi/ads/aj$1;
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
    .line 260
    iput-object p1, p0, Lcom/inmobi/ads/aj$1;->a:Lcom/inmobi/ads/aj;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/aj$b;-><init>(Lcom/inmobi/ads/aj;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Lcom/inmobi/ads/ag;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/ads/ag;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;Lcom/inmobi/ads/NativeStrandAsset;)V
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/inmobi/ads/aj;->a(Landroid/view/View;Lcom/inmobi/ads/t;)V

    .line 269
    return-void
.end method
