.class Lcom/inmobi/ads/i$1;
.super Ljava/lang/Object;
.source "AdUnitCache.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/i;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/i;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/i;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/inmobi/ads/i$1;->a:Lcom/inmobi/ads/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/i$1;->a:Lcom/inmobi/ads/i;

    invoke-static {v0}, Lcom/inmobi/ads/i;->a(Lcom/inmobi/ads/i;)V

    .line 71
    :cond_1
    return-void
.end method
