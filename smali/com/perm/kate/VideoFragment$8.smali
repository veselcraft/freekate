.class Lcom/perm/kate/VideoFragment$8;
.super Ljava/lang/Thread;
.source "VideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoFragment;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$8;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$8;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0}, Lcom/perm/kate/VideoFragment;->access$100(Lcom/perm/kate/VideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/VideoFragment$8;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v2}, Lcom/perm/kate/VideoFragment;->access$200(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/VideoFragment$8;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v3, v3, Lcom/perm/kate/VideoFragment;->album_id:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/VideoFragment$8;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v5, v4, Lcom/perm/kate/VideoFragment;->page_size_load_more:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/VideoFragment$8;->this$0:Lcom/perm/kate/VideoFragment;

    iget-wide v6, v4, Lcom/perm/kate/VideoFragment;->offset:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/perm/kate/VideoFragment$8;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v8, v4, Lcom/perm/kate/VideoFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/VideoFragment$8;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v4}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    move-object v4, v1

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/session/Session;->getVideo(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
