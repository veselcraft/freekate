.class Lcom/perm/kate/WallFragment$1;
.super Ljava/lang/Thread;
.source "WallFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/perm/kate/WallFragment$1;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 182
    iget-object v0, p0, Lcom/perm/kate/WallFragment$1;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 187
    iget-object v0, p0, Lcom/perm/kate/WallFragment$1;->this$0:Lcom/perm/kate/WallFragment;

    iget-boolean v1, v0, Lcom/perm/kate/WallFragment;->direct_order:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 188
    iget-object v0, v0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/WallFragment$1;->this$0:Lcom/perm/kate/WallFragment;

    iget v1, v1, Lcom/perm/kate/WallFragment;->page_size:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 193
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/WallFragment$1;->this$0:Lcom/perm/kate/WallFragment;

    iget-boolean v1, v0, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-eqz v1, :cond_2

    .line 194
    iget v1, v0, Lcom/perm/kate/WallFragment;->offset_shift:I

    add-int/2addr v2, v1

    :cond_2
    move v6, v2

    .line 196
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/WallFragment$1;->this$0:Lcom/perm/kate/WallFragment;

    iget v5, v0, Lcom/perm/kate/WallFragment;->page_size:I

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$100(Lcom/perm/kate/WallFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/WallFragment$1;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v8, v0, Lcom/perm/kate/WallFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/session/Session;->getWallMessages(Ljava/lang/Long;IILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
