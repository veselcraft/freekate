.class Lcom/perm/kate/FaveVideosFragment$1;
.super Ljava/lang/Thread;
.source "FaveVideosFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveVideosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveVideosFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/perm/kate/FaveVideosFragment$1;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment$1;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-boolean v1, v0, Lcom/perm/kate/FaveVideosFragment;->is_fave:Z

    const/4 v2, 0x0

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget v0, v0, Lcom/perm/kate/FaveVideosFragment;->page_size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/perm/kate/FaveVideosFragment$1;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-static {v3}, Lcom/perm/kate/FaveVideosFragment;->access$000(Lcom/perm/kate/FaveVideosFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FaveVideosFragment$1;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/perm/kate/session/Session;->getFaveVideosNew(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 68
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget v0, v0, Lcom/perm/kate/FaveVideosFragment;->page_size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/perm/kate/FaveVideosFragment$1;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-static {v3}, Lcom/perm/kate/FaveVideosFragment;->access$000(Lcom/perm/kate/FaveVideosFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FaveVideosFragment$1;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/perm/kate/session/Session;->getFaveVideos(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
