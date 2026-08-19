.class Lcom/perm/kate/FavePostsFragment$9;
.super Ljava/lang/Thread;
.source "FavePostsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePostsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePostsFragment;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 318
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget-boolean v1, v0, Lcom/perm/kate/FavePostsFragment;->is_fave:Z

    if-eqz v1, :cond_0

    .line 319
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-static {v0}, Lcom/perm/kate/FavePostsFragment;->access$000(Lcom/perm/kate/FavePostsFragment;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget v2, v2, Lcom/perm/kate/FavePostsFragment;->offset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v3}, Lcom/perm/kate/FavePostsFragment;->access$700(Lcom/perm/kate/FavePostsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/perm/kate/session/Session;->getFavePostsNew(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 321
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-static {v0}, Lcom/perm/kate/FavePostsFragment;->access$000(Lcom/perm/kate/FavePostsFragment;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget v2, v2, Lcom/perm/kate/FavePostsFragment;->offset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v3}, Lcom/perm/kate/FavePostsFragment;->access$700(Lcom/perm/kate/FavePostsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/perm/kate/session/Session;->getFavePosts(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
