.class Lcom/perm/kate/NewsFragment$7;
.super Lcom/perm/kate/session/Callback;
.source "NewsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 454
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 459
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/NewsFragment;->access$102(Lcom/perm/kate/NewsFragment;I)I

    .line 460
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 413
    check-cast p1, Lcom/perm/kate/api/Newsfeed;

    .line 414
    iget-object v0, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/perm/utils/AdEvents;->reportLoad(Ljava/util/ArrayList;)V

    .line 418
    iget-object v0, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 419
    sget v0, Lcom/perm/kate/NewsFragment;->count:I

    const/16 v1, 0x50

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0xa

    .line 421
    sput v0, Lcom/perm/kate/NewsFragment;->count:I

    .line 422
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {p1}, Lcom/perm/kate/NewsFragment;->access$700(Lcom/perm/kate/NewsFragment;)V

    return-void

    .line 427
    :cond_0
    sget v0, Lcom/perm/kate/NewsFragment;->default_count:I

    sput v0, Lcom/perm/kate/NewsFragment;->count:I

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v1, p1, Lcom/perm/kate/api/Newsfeed;->new_from:Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v1, v1, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 433
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    iget-wide v4, v3, Lcom/perm/kate/NewsFragment;->account_id:J

    iget v3, v3, Lcom/perm/kate/NewsFragment;->type:I

    invoke-virtual {v2, p1, v4, v5, v3}, Lcom/perm/kate/db/DataHelper;->createNews(Lcom/perm/kate/api/Newsfeed;JI)V

    const-string v2, "af_createNews"

    .line 434
    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/NewsFragment$7$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/NewsFragment$7$1;-><init>(Lcom/perm/kate/NewsFragment$7;Lcom/perm/kate/api/Newsfeed;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 449
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
