.class Lcom/inmobi/ads/u;
.super Ljava/lang/Object;
.source "NativeStrandClientPositioningSource.java"

# interfaces
.implements Lcom/inmobi/ads/af;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/u;->a:Landroid/os/Handler;

    .line 15
    iput-object p1, p0, Lcom/inmobi/ads/u;->b:Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;

    .line 16
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/u;)Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/inmobi/ads/u;->b:Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;

    return-object v0
.end method


# virtual methods
.method public a(JLcom/inmobi/ads/af$a;)V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/u;->a:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/u$1;

    invoke-direct {v1, p0, p3}, Lcom/inmobi/ads/u$1;-><init>(Lcom/inmobi/ads/u;Lcom/inmobi/ads/af$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    return-void
.end method
