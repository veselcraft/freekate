.class Lcom/perm/kate/BaseActivity$12;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/my/target/ads/MyTargetView$MyTargetViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/perm/kate/BaseActivity$12;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/my/target/ads/MyTargetView;)V
    .locals 0
    .param p1, "myTargetView"    # Lcom/my/target/ads/MyTargetView;

    .prologue
    .line 1327
    return-void
.end method

.method public onLoad(Lcom/my/target/ads/MyTargetView;)V
    .locals 2
    .param p1, "myTargetView"    # Lcom/my/target/ads/MyTargetView;

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$12;->this$0:Lcom/perm/kate/BaseActivity;

    iget-object v0, v0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$12;->this$0:Lcom/perm/kate/BaseActivity;

    iget-object v0, v0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->start()V

    .line 1321
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$12;->this$0:Lcom/perm/kate/BaseActivity;

    iget-object v0, v0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1323
    :cond_0
    return-void
.end method

.method public onNoAd(Ljava/lang/String;Lcom/my/target/ads/MyTargetView;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "myTargetView"    # Lcom/my/target/ads/MyTargetView;

    .prologue
    .line 1332
    sget-boolean v0, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v0, :cond_0

    .line 1333
    const-string v0, "Kate.BaseActivity"

    const-string v1, "AdMan onNoAd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_0
    return-void
.end method
