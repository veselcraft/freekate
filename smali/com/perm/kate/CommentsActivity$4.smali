.class Lcom/perm/kate/CommentsActivity$4;
.super Lcom/perm/kate/session/Callback;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 201
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 202
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 13

    .line 183
    check-cast p1, Lcom/perm/kate/api/CommentList;

    .line 185
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-boolean v0, v0, Lcom/perm/kate/CommentsActivity;->is_new:Z

    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 187
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 188
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v5, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v6}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v8}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)I

    move-result v8

    iget-object v9, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v9}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v9

    iget-object v11, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v11}, Lcom/perm/kate/CommentsActivity;->access$700(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v11

    invoke-virtual/range {v4 .. v12}, Lcom/perm/kate/db/DataHelper;->recreateComments(Ljava/util/ArrayList;JIJJ)V

    const-string v4, "ca_recreateComments"

    .line 189
    invoke-static {v2, v3, v4}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recreate comments duration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.CommentsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/perm/kate/Helper;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 194
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, v0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget v0, v0, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/perm/kate/data/PageCommentList;->reset(Lcom/perm/kate/api/CommentList;IZ)V

    .line 195
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$300(Lcom/perm/kate/CommentsActivity;)V

    .line 196
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual {p1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
