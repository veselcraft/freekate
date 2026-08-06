.class final Lcom/my/target/core/engines/h$7;
.super Ljava/lang/Object;
.source "StandardJSEngine.java"

# interfaces
.implements Lcom/my/target/core/communication/js/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/engines/h;


# direct methods
.method constructor <init>(Lcom/my/target/core/engines/h;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/my/target/core/engines/h$7;->a:Lcom/my/target/core/engines/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/my/target/core/communication/js/events/f;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Lcom/my/target/core/engines/h$7;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->g(Lcom/my/target/core/engines/h;)Lcom/my/target/core/ui/views/AdView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/AdView;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/my/target/core/engines/h$7;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->f(Lcom/my/target/core/engines/h;)Lcom/my/target/core/engines/h$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/core/engines/h$a;->a(Z)V

    .line 449
    iget-object v0, p0, Lcom/my/target/core/engines/h$7;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->f(Lcom/my/target/core/engines/h;)Lcom/my/target/core/engines/h$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/core/engines/h$a;->b(Z)V

    .line 450
    iget-object v0, p0, Lcom/my/target/core/engines/h$7;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->b(Lcom/my/target/core/engines/h;)Lcom/my/target/ads/MyTargetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/h$7;->a:Lcom/my/target/core/engines/h;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->b(Lcom/my/target/core/engines/h;)Lcom/my/target/ads/MyTargetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    const-string v1, "Ad completed"

    iget-object v2, p0, Lcom/my/target/core/engines/h$7;->a:Lcom/my/target/core/engines/h;

    invoke-static {v2}, Lcom/my/target/core/engines/h;->b(Lcom/my/target/core/engines/h;)Lcom/my/target/ads/MyTargetView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/MyTargetView$MyTargetViewListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/MyTargetView;)V

    .line 451
    :cond_0
    return-void
.end method
