.class Lcom/perm/kate/AudioFragment$5;
.super Lcom/perm/kate/session/Callback;
.source "AudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 233
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioFragment;->showProgressBar(Z)V

    .line 234
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    iput-object p1, v0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    .line 214
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$200(Lcom/perm/kate/AudioFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v2, v1, Lcom/perm/kate/AudioFragment;->album_id:J

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$400(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteAudiosInList(JJ)Z

    .line 216
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v1, v1, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudios(Ljava/util/ArrayList;)V

    .line 217
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v1, v1, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v2, v2, Lcom/perm/kate/AudioFragment;->album_id:J

    iget-object v4, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v4}, Lcom/perm/kate/AudioFragment;->access$400(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createAudiosInList(Ljava/util/ArrayList;JJ)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/AudioFragment$5$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/AudioFragment$5$1;-><init>(Lcom/perm/kate/AudioFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
