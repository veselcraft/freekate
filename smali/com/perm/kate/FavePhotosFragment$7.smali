.class Lcom/perm/kate/FavePhotosFragment$7;
.super Lcom/perm/kate/session/Callback;
.source "FavePhotosFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePhotosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePhotosFragment;Landroid/app/Activity;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 191
    iget-object p1, p0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/FavePhotosFragment;->access$702(Lcom/perm/kate/FavePhotosFragment;I)I

    .line 192
    iget-object p1, p0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 167
    check-cast p1, Ljava/util/ArrayList;

    .line 168
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FavePhotosFragment$7$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/FavePhotosFragment$7$1;-><init>(Lcom/perm/kate/FavePhotosFragment$7;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
