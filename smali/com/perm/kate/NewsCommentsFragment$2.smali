.class Lcom/perm/kate/NewsCommentsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "NewsCommentsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCommentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCommentsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$2;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 103
    iget-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$2;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 89
    check-cast p1, Lcom/perm/kate/api/Newsfeed;

    .line 90
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 92
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/NewsCommentsFragment$2;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-wide v3, v3, Lcom/perm/kate/NewsCommentsFragment;->account_id:J

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteAllNews(JI)V

    .line 93
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/NewsCommentsFragment$2;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-wide v3, v3, Lcom/perm/kate/NewsCommentsFragment;->account_id:J

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->createNews(Lcom/perm/kate/api/Newsfeed;JI)V

    const-string v2, "ncf_recreateNews"

    .line 94
    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$2;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 96
    iget-object p1, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$2;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-static {p1}, Lcom/perm/kate/NewsCommentsFragment;->access$000(Lcom/perm/kate/NewsCommentsFragment;)V

    :cond_0
    return-void
.end method
