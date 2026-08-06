.class Lcom/inmobi/ads/InMobiNativeStrand$1;
.super Ljava/lang/Object;
.source "InMobiNativeStrand.java"

# interfaces
.implements Lcom/inmobi/ads/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiNativeStrand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/InMobiNativeStrand;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiNativeStrand;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNativeStrand$1;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 80
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 81
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand$1;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiNativeStrand;->access$000(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiNativeStrand$a;->sendMessage(Landroid/os/Message;)Z

    .line 82
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 87
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 88
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand$1;->a:Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiNativeStrand;->access$000(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiNativeStrand$a;->sendMessage(Landroid/os/Message;)Z

    .line 89
    return-void
.end method
