.class Lcom/perm/kate/OnlineFriendsFragment$4;
.super Ljava/lang/Object;
.source "OnlineFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/OnlineFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/OnlineFriendsFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$4;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment$4;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iget-object v0, v0, Lcom/perm/kate/OnlineFriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment$4;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment$4;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iget-object v0, v0, Lcom/perm/kate/OnlineFriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_1
    :goto_0
    return-void
.end method
