.class Lcom/perm/kate/AudioFragment$5;
.super Lcom/perm/kate/session/Callback;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 276
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 277
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 278
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/AudioFragment;->access$802(Lcom/perm/kate/AudioFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9

    .line 250
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    .line 251
    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$500(Lcom/perm/kate/AudioFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 253
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v3, v2, Lcom/perm/kate/AudioFragment;->album_id:J

    invoke-static {v2}, Lcom/perm/kate/AudioFragment;->access$600(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/perm/kate/db/DataHelper;->deleteAudiosInList(JJ)Z

    .line 254
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudios(Ljava/util/ArrayList;)V

    .line 255
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v4, p1, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    iget-wide v5, p1, Lcom/perm/kate/AudioFragment;->album_id:J

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$600(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/perm/kate/db/DataHelper;->createAudiosInList(Ljava/util/ArrayList;JJ)V

    const-string p1, "af_recreateAudios"

    .line 256
    invoke-static {v0, v1, p1}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 260
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/perm/kate/AudioFragment$5$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$5$1;-><init>(Lcom/perm/kate/AudioFragment$5;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
