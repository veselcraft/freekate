.class Lcom/perm/kate/CommentsActivity$3;
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
    .param p1, "this$0"    # Lcom/perm/kate/CommentsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 154
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/CommentsActivity;->showProgressBar(Z)V

    .line 155
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 18
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 138
    move-object/from16 v12, p1

    check-cast v12, Lcom/perm/kate/api/CommentList;

    .line 139
    .local v12, "comments":Lcom/perm/kate/api/CommentList;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 140
    .local v14, "t1":J
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v2}, Lcom/perm/kate/CommentsActivity;->access$200(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v2}, Lcom/perm/kate/CommentsActivity;->access$300(Lcom/perm/kate/CommentsActivity;)I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v2}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/db/DataHelper;->deleteComments(JJJ)Z

    .line 141
    iget-object v2, v12, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Comment;

    .line 142
    .local v3, "c":Lcom/perm/kate/api/Comment;
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v4}, Lcom/perm/kate/CommentsActivity;->access$200(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v6}, Lcom/perm/kate/CommentsActivity;->access$300(Lcom/perm/kate/CommentsActivity;)I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v8}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v10}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v10

    invoke-virtual/range {v2 .. v11}, Lcom/perm/kate/db/DataHelper;->createComment(Lcom/perm/kate/api/Comment;JJJJ)J

    goto :goto_0

    .line 143
    .end local v3    # "c":Lcom/perm/kate/api/Comment;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 144
    .local v16, "t2":J
    const-string v2, "Kate.CommentsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recreate comments duration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v16, v14

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, v12, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/perm/kate/Helper;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v2, v2, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    iget v4, v4, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v5, 0x0

    invoke-virtual {v2, v12, v4, v5}, Lcom/perm/kate/data/PageCommentList;->reset(Lcom/perm/kate/api/CommentList;IZ)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v2}, Lcom/perm/kate/CommentsActivity;->access$100(Lcom/perm/kate/CommentsActivity;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentsActivity$3;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/perm/kate/CommentsActivity;->showProgressBar(Z)V

    .line 149
    return-void
.end method
