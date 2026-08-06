.class Lcom/perm/kate/OnlineFriendsFragment$4;
.super Ljava/lang/Object;
.source "OnlineFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/OnlineFriendsFragment;->requeryInUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/OnlineFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/OnlineFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/OnlineFriendsFragment;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$4;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment$4;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iget-object v0, v0, Lcom/perm/kate/OnlineFriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment$4;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/OnlineFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment$4;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iget-object v0, v0, Lcom/perm/kate/OnlineFriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    goto :goto_0
.end method
