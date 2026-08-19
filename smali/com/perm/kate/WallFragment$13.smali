.class Lcom/perm/kate/WallFragment$13;
.super Ljava/lang/Thread;
.source "WallFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;

.field final synthetic val$cursor_count:I


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;I)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

    iput p2, p0, Lcom/perm/kate/WallFragment$13;->val$cursor_count:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

    iget v1, v0, Lcom/perm/kate/WallFragment;->page_size:I

    .line 721
    iget v2, p0, Lcom/perm/kate/WallFragment$13;->val$cursor_count:I

    .line 723
    iget-boolean v3, v0, Lcom/perm/kate/WallFragment;->direct_order:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 724
    iget-object v0, v0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/perm/kate/WallFragment$13;->val$cursor_count:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

    iget v3, v2, Lcom/perm/kate/WallFragment;->page_size:I

    sub-int/2addr v0, v3

    if-gez v0, :cond_1

    .line 727
    iget-object v0, v2, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/perm/kate/WallFragment$13;->val$cursor_count:I

    sub-int v1, v0, v1

    if-nez v1, :cond_0

    .line 730
    iget-object v0, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    .line 731
    iget-object v0, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0, v4}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void

    :cond_0
    move v3, v1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    :cond_2
    move v3, v1

    .line 737
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

    iget-boolean v1, v0, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-eqz v1, :cond_3

    .line 738
    iget v1, v0, Lcom/perm/kate/WallFragment;->offset_shift:I

    add-int/2addr v2, v1

    :cond_3
    move v4, v2

    const-string v1, "loadMore"

    .line 740
    invoke-virtual {v0, v1}, Lcom/perm/kate/WallFragment;->addStep(Ljava/lang/String;)V

    .line 741
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$100(Lcom/perm/kate/WallFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v6, v0, Lcom/perm/kate/WallFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->getWallMessages(Ljava/lang/Long;IILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 743
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 744
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
