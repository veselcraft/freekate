.class final Lcom/inmobi/ads/an;
.super Landroid/os/Handler;
.source "RenderTimeoutHandler.java"


# instance fields
.field private a:Lcom/inmobi/ads/AdUnit;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/AdUnit;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/inmobi/ads/an;->a:Lcom/inmobi/ads/AdUnit;

    .line 16
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 20
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 26
    :goto_0
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/ads/an;->a:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->stopLoading()V

    .line 23
    iget-object v0, p0, Lcom/inmobi/ads/an;->a:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->v()V

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
