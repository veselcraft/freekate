.class Lcom/perm/kate/AudioFragment$33;
.super Lcom/perm/kate/session/Callback;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1190
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$33;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1232
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1233
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$33;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1234
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$33;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/AudioFragment;->access$802(Lcom/perm/kate/AudioFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8

    .line 1194
    check-cast p1, Ljava/util/ArrayList;

    .line 1195
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$33;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$500(Lcom/perm/kate/AudioFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 1201
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudios(Ljava/util/ArrayList;)V

    .line 1202
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$33;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v2, v1, Lcom/perm/kate/AudioFragment;->album_id:J

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$600(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createAudiosInList(Ljava/util/ArrayList;JJ)V

    const-string v0, "af_createAudios"

    .line 1203
    invoke-static {v6, v7, v0}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$33;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$33;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/AudioFragment$33$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/AudioFragment$33$1;-><init>(Lcom/perm/kate/AudioFragment$33;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
