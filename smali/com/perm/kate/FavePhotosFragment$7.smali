.class Lcom/perm/kate/FavePhotosFragment$7;
.super Lcom/perm/kate/session/Callback;
.source "FavePhotosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FavePhotosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePhotosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePhotosFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FavePhotosFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 189
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/FavePhotosFragment;->access$702(Lcom/perm/kate/FavePhotosFragment;I)I

    .line 190
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FavePhotosFragment;->showProgressBar(Z)V

    .line 191
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 165
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 166
    .local v0, "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-virtual {v1}, Lcom/perm/kate/FavePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-virtual {v1}, Lcom/perm/kate/FavePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/FavePhotosFragment$7$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/FavePhotosFragment$7$1;-><init>(Lcom/perm/kate/FavePhotosFragment$7;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
