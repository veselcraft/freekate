.class Lcom/my/target/ads/MyTargetView$1;
.super Ljava/lang/Object;
.source "MyTargetView.java"

# interfaces
.implements Lcom/my/target/core/facades/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/MyTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/ads/MyTargetView;


# direct methods
.method constructor <init>(Lcom/my/target/ads/MyTargetView;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/my/target/ads/MyTargetView$1;->this$0:Lcom/my/target/ads/MyTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Lcom/my/target/core/facades/h;)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView$1;->this$0:Lcom/my/target/ads/MyTargetView;

    invoke-static {v0}, Lcom/my/target/ads/MyTargetView;->access$000(Lcom/my/target/ads/MyTargetView;)Lcom/my/target/core/facades/h;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView$1;->this$0:Lcom/my/target/ads/MyTargetView;

    invoke-static {v0}, Lcom/my/target/ads/MyTargetView;->access$100(Lcom/my/target/ads/MyTargetView;)Lcom/my/target/core/engines/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView$1;->this$0:Lcom/my/target/ads/MyTargetView;

    iget-object v1, p0, Lcom/my/target/ads/MyTargetView$1;->this$0:Lcom/my/target/ads/MyTargetView;

    iget-object v2, p0, Lcom/my/target/ads/MyTargetView$1;->this$0:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v2}, Lcom/my/target/ads/MyTargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/my/target/core/factories/c;->a(Lcom/my/target/core/facades/g;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/my/target/core/engines/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/ads/MyTargetView;->access$102(Lcom/my/target/ads/MyTargetView;Lcom/my/target/core/engines/b;)Lcom/my/target/core/engines/b;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView$1;->this$0:Lcom/my/target/ads/MyTargetView;

    invoke-static {v0}, Lcom/my/target/ads/MyTargetView;->access$100(Lcom/my/target/ads/MyTargetView;)Lcom/my/target/core/engines/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView$1;->this$0:Lcom/my/target/ads/MyTargetView;

    invoke-static {v0}, Lcom/my/target/ads/MyTargetView;->access$100(Lcom/my/target/ads/MyTargetView;)Lcom/my/target/core/engines/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/my/target/core/engines/b;->a(Lcom/my/target/core/facades/g;)V

    .line 57
    :cond_1
    return-void
.end method

.method public onNoAd(Ljava/lang/String;Lcom/my/target/core/facades/h;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/my/target/ads/MyTargetView$1;->this$0:Lcom/my/target/ads/MyTargetView;

    invoke-static {v0}, Lcom/my/target/ads/MyTargetView;->access$200(Lcom/my/target/ads/MyTargetView;)Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/MyTargetView$1;->this$0:Lcom/my/target/ads/MyTargetView;

    invoke-static {v0}, Lcom/my/target/ads/MyTargetView;->access$200(Lcom/my/target/ads/MyTargetView;)Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/MyTargetView$1;->this$0:Lcom/my/target/ads/MyTargetView;

    invoke-interface {v0, p1, v1}, Lcom/my/target/ads/MyTargetView$MyTargetViewListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/MyTargetView;)V

    .line 63
    :cond_0
    return-void
.end method
