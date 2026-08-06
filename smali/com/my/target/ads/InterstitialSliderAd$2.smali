.class Lcom/my/target/ads/InterstitialSliderAd$2;
.super Ljava/lang/Object;
.source "InterstitialSliderAd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 78
    iput-object p1, p0, Lcom/my/target/ads/InterstitialSliderAd$2;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    check-cast p1, Lcom/my/target/core/ui/a;

    .line 83
    invoke-virtual {p1, v1}, Lcom/my/target/core/ui/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 84
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd$2;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialSliderAd;->access$100(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/core/ui/a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd$2;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-static {v0, v1}, Lcom/my/target/ads/InterstitialSliderAd;->access$102(Lcom/my/target/ads/InterstitialSliderAd;Lcom/my/target/core/ui/a;)Lcom/my/target/core/ui/a;

    .line 87
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd$2;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialSliderAd;->access$000(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd$2;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-static {v0}, Lcom/my/target/ads/InterstitialSliderAd;->access$000(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/InterstitialSliderAd$2;->this$0:Lcom/my/target/ads/InterstitialSliderAd;

    invoke-interface {v0, v1}, Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;->onDismiss(Lcom/my/target/ads/InterstitialSliderAd;)V

    .line 89
    :cond_0
    return-void
.end method
