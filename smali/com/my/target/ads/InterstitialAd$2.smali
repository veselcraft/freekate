.class Lcom/my/target/ads/InterstitialAd$2;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 223
    iput-object p1, p0, Lcom/my/target/ads/InterstitialAd$2;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    check-cast p1, Lcom/my/target/core/ui/a;

    .line 228
    invoke-virtual {p1, v1}, Lcom/my/target/core/ui/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 229
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$2;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$100(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/core/ui/a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$2;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0, v1}, Lcom/my/target/ads/InterstitialAd;->access$102(Lcom/my/target/ads/InterstitialAd;Lcom/my/target/core/ui/a;)Lcom/my/target/core/ui/a;

    .line 232
    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$2;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/InterstitialAd$2;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialAd;->access$000(Lcom/my/target/ads/InterstitialAd;)Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/InterstitialAd$2;->this$0:Lcom/my/target/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;->onDismiss(Lcom/my/target/ads/InterstitialAd;)V

    .line 234
    :cond_0
    return-void
.end method
