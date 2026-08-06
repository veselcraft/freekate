.class Lcom/inmobi/ads/u$1;
.super Ljava/lang/Object;
.source "NativeStrandClientPositioningSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/u;->a(JLcom/inmobi/ads/af$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/af$a;

.field final synthetic b:Lcom/inmobi/ads/u;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/u;Lcom/inmobi/ads/af$a;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/inmobi/ads/u$1;->b:Lcom/inmobi/ads/u;

    iput-object p2, p0, Lcom/inmobi/ads/u$1;->a:Lcom/inmobi/ads/af$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/ads/u$1;->a:Lcom/inmobi/ads/af$a;

    iget-object v1, p0, Lcom/inmobi/ads/u$1;->b:Lcom/inmobi/ads/u;

    invoke-static {v1}, Lcom/inmobi/ads/u;->a(Lcom/inmobi/ads/u;)Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/inmobi/ads/af$a;->a(Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)V

    .line 25
    return-void
.end method
