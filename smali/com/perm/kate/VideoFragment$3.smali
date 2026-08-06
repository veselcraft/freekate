.class Lcom/perm/kate/VideoFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "VideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 163
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoFragment;->showProgressBar(Z)V

    .line 164
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/VideoFragment;->access$502(Lcom/perm/kate/VideoFragment;I)I

    .line 165
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    iget-wide v2, v0, Lcom/perm/kate/VideoFragment;->offset:J

    iget-object v1, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v1, v1, Lcom/perm/kate/VideoFragment;->page_size:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/perm/kate/VideoFragment;->offset:J

    .line 141
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    iput-object p1, v0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    .line 142
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 143
    .local v7, "account_id":J
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0}, Lcom/perm/kate/VideoFragment;->access$200(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0}, Lcom/perm/kate/VideoFragment;->access$300(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v6, v0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->DeleteAndCreateVideos(JJLjava/util/ArrayList;J)V

    .line 144
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoFragment;->showProgressBar(Z)V

    .line 147
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/VideoFragment$3$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/VideoFragment$3$1;-><init>(Lcom/perm/kate/VideoFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
