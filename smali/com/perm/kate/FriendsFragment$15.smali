.class Lcom/perm/kate/FriendsFragment$15;
.super Lcom/perm/kate/session/Callback;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsFragment;->showProgressBar(Z)V

    .line 673
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 674
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/perm/kate/FriendsFragment;->access$1602(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 660
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsFragment;->showProgressBar(Z)V

    .line 661
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/FriendsFragment;->access$1600(Lcom/perm/kate/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/perm/kate/FriendsFragment;->access$1602(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FriendsFragment$15$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/FriendsFragment$15$1;-><init>(Lcom/perm/kate/FriendsFragment$15;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 669
    :cond_1
    return-void
.end method
