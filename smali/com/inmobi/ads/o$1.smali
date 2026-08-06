.class Lcom/inmobi/ads/o$1;
.super Ljava/lang/Object;
.source "InterstitialAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/o;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/o;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/o;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/inmobi/ads/o$1;->a:Lcom/inmobi/ads/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/inmobi/ads/o$1;->a:Lcom/inmobi/ads/o;

    invoke-virtual {v1}, Lcom/inmobi/ads/o;->j()Ljava/lang/String;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    .line 88
    const-string v2, "impId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "ShowInt"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    iget-object v1, p0, Lcom/inmobi/ads/o$1;->a:Lcom/inmobi/ads/o;

    invoke-virtual {v1}, Lcom/inmobi/ads/o;->z()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/o;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/inmobi/ads/o$1;->a:Lcom/inmobi/ads/o;

    const-string v1, "ShowIntBeforeReady"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/o;->d(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v1, "type"

    iget-object v2, p0, Lcom/inmobi/ads/o$1;->a:Lcom/inmobi/ads/o;

    invoke-virtual {v2}, Lcom/inmobi/ads/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "AdRendered"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    iget-object v0, p0, Lcom/inmobi/ads/o$1;->a:Lcom/inmobi/ads/o;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 102
    iget-object v0, p0, Lcom/inmobi/ads/o$1;->a:Lcom/inmobi/ads/o;

    invoke-virtual {v0}, Lcom/inmobi/ads/o;->y()V

    goto :goto_0
.end method
