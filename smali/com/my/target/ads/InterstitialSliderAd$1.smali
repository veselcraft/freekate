.class Lcom/my/target/ads/InterstitialSliderAd$1;
.super Ljava/lang/Object;
.source "InterstitialSliderAd.java"

# interfaces
.implements Lcom/my/target/core/facades/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/InterstitialSliderAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/ads/InterstitialSliderAd;


# direct methods
.method constructor <init>(Lcom/my/target/ads/InterstitialSliderAd;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/my/target/core/facades/c;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialSliderAd;->access$000(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialSliderAd;->access$000(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-interface {v0, v1}, Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;->onClick(Lcom/my/target/ads/InterstitialSliderAd;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onDismiss(Lcom/my/target/core/facades/c;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialSliderAd;->access$000(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialSliderAd;->access$000(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-interface {v0, v1}, Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;->onDismiss(Lcom/my/target/ads/InterstitialSliderAd;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onDisplay(Lcom/my/target/core/facades/c;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialSliderAd;->access$000(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialSliderAd;->access$000(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-interface {v0, v1}, Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;->onDisplay(Lcom/my/target/ads/InterstitialSliderAd;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/my/target/core/facades/c;)V
    .locals 3

    .prologue
    .line 44
    const-string v0, "InterstitialSliderAd has no banners"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialSliderAd;->access$000(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialSliderAd;->access$000(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    move-result-object v0

    const-string v1, "No ad"

    iget-object v2, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/InterstitialSliderAd;)V

    .line 47
    :cond_0
    return-void
.end method

.method public onLoad(Lcom/my/target/core/facades/c;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialSliderAd;->access$000(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialSliderAd;->access$000(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/InterstitialSliderAd$1;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-interface {v0, v1}, Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;->onLoad(Lcom/my/target/ads/InterstitialSliderAd;)V

    .line 39
    :cond_0
    return-void
.end method

.method public onVideoCompleted(Lcom/my/target/core/facades/c;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
