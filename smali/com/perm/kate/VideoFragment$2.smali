.class Lcom/perm/kate/VideoFragment$2;
.super Ljava/lang/Thread;
.source "VideoFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$2;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 127
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/VideoFragment$2;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v1}, Lcom/perm/kate/VideoFragment;->access$100(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v1, p0, Lcom/perm/kate/VideoFragment$2;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v3, v1, Lcom/perm/kate/VideoFragment;->album_id:Ljava/lang/Long;

    iget-object v5, v1, Lcom/perm/kate/VideoFragment;->page_size:Ljava/lang/Long;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v1, p0, Lcom/perm/kate/VideoFragment$2;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v8, v1, Lcom/perm/kate/VideoFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/session/Session;->getVideo(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
