.class Lcom/inmobi/ads/ad$3;
.super Ljava/lang/Object;
.source "NativeStrandPositioningController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ad;-><init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ad;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ad;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/inmobi/ads/ad$3;->a:Lcom/inmobi/ads/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/inmobi/ads/ad$3;->a:Lcom/inmobi/ads/ad;

    invoke-static {v0}, Lcom/inmobi/ads/ad;->a(Lcom/inmobi/ads/ad;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ad$3;->a:Lcom/inmobi/ads/ad;

    invoke-static {v0}, Lcom/inmobi/ads/ad;->b(Lcom/inmobi/ads/ad;)V

    .line 126
    iget-object v0, p0, Lcom/inmobi/ads/ad$3;->a:Lcom/inmobi/ads/ad;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/ads/ad;->a(Lcom/inmobi/ads/ad;Z)Z

    goto :goto_0
.end method
