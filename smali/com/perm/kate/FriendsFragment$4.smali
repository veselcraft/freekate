.class Lcom/perm/kate/FriendsFragment$4;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;

.field final synthetic val$size:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$4;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-object p2, p0, Lcom/perm/kate/FriendsFragment$4;->val$size:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$4;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v0, v0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$4;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$4;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v0, v0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$4;->val$size:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$4;->val$size:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
