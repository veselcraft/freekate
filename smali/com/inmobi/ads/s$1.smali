.class Lcom/inmobi/ads/s$1;
.super Ljava/lang/Object;
.source "NativeStrandAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/s;->a(Lcom/inmobi/ads/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/q;

.field final synthetic b:Lcom/inmobi/ads/s;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/s;Lcom/inmobi/ads/q;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/inmobi/ads/s$1;->b:Lcom/inmobi/ads/s;

    iput-object p2, p0, Lcom/inmobi/ads/s$1;->a:Lcom/inmobi/ads/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/inmobi/ads/s$1;->b:Lcom/inmobi/ads/s;

    invoke-static {v0}, Lcom/inmobi/ads/s;->a(Lcom/inmobi/ads/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/s$1;->b:Lcom/inmobi/ads/s;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/s;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 172
    iget-object v0, p0, Lcom/inmobi/ads/s$1;->b:Lcom/inmobi/ads/s;

    iget-object v1, p0, Lcom/inmobi/ads/s$1;->a:Lcom/inmobi/ads/q;

    invoke-static {v0, v1}, Lcom/inmobi/ads/s;->a(Lcom/inmobi/ads/s;Lcom/inmobi/ads/q;)Lcom/inmobi/ads/q;

    .line 173
    iget-object v0, p0, Lcom/inmobi/ads/s$1;->b:Lcom/inmobi/ads/s;

    invoke-virtual {v0}, Lcom/inmobi/ads/s;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/inmobi/ads/s$1;->b:Lcom/inmobi/ads/s;

    invoke-virtual {v0}, Lcom/inmobi/ads/s;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->a()V

    goto :goto_0
.end method
