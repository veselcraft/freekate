.class Lcom/my/target/ads/InterstitialAd$1;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/my/target/core/facades/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/my/target/ads/InterstitialAd;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/my/target/core/facades/c;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;->onClick(Lcom/my/target/ads/InterstitialAd;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onDismiss(Lcom/my/target/core/facades/c;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;->onDismiss(Lcom/my/target/ads/InterstitialAd;)V

    .line 205
    :cond_0
    return-void
.end method

.method public onDisplay(Lcom/my/target/core/facades/c;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;->onDisplay(Lcom/my/target/ads/InterstitialAd;)V

    .line 219
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/my/target/core/facades/c;)V
    .locals 3

    .prologue
    .line 188
    const-string v0, "InterstitialAd has no banners"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    move-result-object v0

    const-string v1, "No ad"

    iget-object v2, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/InterstitialAd;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onLoad(Lcom/my/target/core/facades/c;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;->onLoad(Lcom/my/target/ads/InterstitialAd;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onVideoCompleted(Lcom/my/target/core/facades/c;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/InterstitialAd$1;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;->onVideoCompleted(Lcom/my/target/ads/InterstitialAd;)V

    .line 212
    :cond_0
    return-void
.end method
