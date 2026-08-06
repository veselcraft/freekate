.class Lcom/perm/kate/MutualFriendsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "MutualFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MutualFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MutualFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MutualFriendsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MutualFriendsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/perm/kate/MutualFriendsFragment$2;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 72
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment$2;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/MutualFriendsFragment;->showProgressBar(Z)V

    .line 73
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment$2;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    iput-object p1, v0, Lcom/perm/kate/MutualFriendsFragment;->users_ids:Ljava/util/ArrayList;

    .line 61
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment$2;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    iget-object v0, v0, Lcom/perm/kate/MutualFriendsFragment;->users_ids:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 63
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment$2;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/MutualFriendsFragment;->showProgressBar(Z)V

    .line 64
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment$2;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MutualFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment$2;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/MutualFriendsFragment;->access$100(Lcom/perm/kate/MutualFriendsFragment;)V

    goto :goto_0
.end method
