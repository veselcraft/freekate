.class Lcom/inmobi/ads/s$2;
.super Ljava/lang/Object;
.source "NativeStrandAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/s;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/s;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/s;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/inmobi/ads/s$2;->a:Lcom/inmobi/ads/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/inmobi/ads/s$2;->a:Lcom/inmobi/ads/s;

    invoke-static {v0}, Lcom/inmobi/ads/s;->a(Lcom/inmobi/ads/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/s$2;->a:Lcom/inmobi/ads/s;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/s;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 188
    iget-object v0, p0, Lcom/inmobi/ads/s$2;->a:Lcom/inmobi/ads/s;

    invoke-virtual {v0}, Lcom/inmobi/ads/s;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$a;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0
.end method
