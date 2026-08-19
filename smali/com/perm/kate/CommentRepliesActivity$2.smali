.class Lcom/perm/kate/CommentRepliesActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "CommentRepliesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentRepliesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentRepliesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentRepliesActivity;Landroid/app/Activity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 149
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 150
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    .line 111
    move-object/from16 v1, p1

    check-cast v1, Lcom/perm/kate/api/CommentList;

    .line 112
    iget-object v2, v1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 113
    iget-object v1, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-virtual {v1, v3}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void

    .line 118
    :cond_0
    iget-object v2, v1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Comment;

    iget-wide v4, v2, Lcom/perm/kate/api/Comment;->cid:J

    iget-object v2, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-wide v6, v2, Lcom/perm/kate/CommentRepliesActivity;->requested_comment:J

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, v1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Comment;

    iget-wide v4, v2, Lcom/perm/kate/api/Comment;->parent_stack:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_1

    .line 121
    iget-object v4, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    const/4 v5, 0x0

    invoke-static {v4}, Lcom/perm/kate/CommentRepliesActivity;->access$000(Lcom/perm/kate/CommentRepliesActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v1, v1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Comment;

    iget-wide v7, v1, Lcom/perm/kate/api/Comment;->parent_stack:J

    const-wide/16 v9, 0x0

    invoke-static/range {v4 .. v10}, Lcom/perm/kate/CommentRepliesActivity;->access$100(Lcom/perm/kate/CommentRepliesActivity;ILcom/perm/kate/session/Callback;JJ)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-virtual {v1, v3}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :goto_0
    return-void

    .line 125
    :cond_2
    iget-object v2, v1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Comment;

    iget-wide v4, v2, Lcom/perm/kate/api/Comment;->cid:J

    iget-object v2, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v2}, Lcom/perm/kate/CommentRepliesActivity;->access$200(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    .line 127
    iget-object v2, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v2, v8, v9}, Lcom/perm/kate/CommentRepliesActivity;->access$202(Lcom/perm/kate/CommentRepliesActivity;J)J

    .line 129
    :cond_3
    iget-object v2, v1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/perm/kate/Helper;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 130
    iget-object v2, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-object v2, v2, Lcom/perm/kate/CommentRepliesActivity;->commentDatas:Ljava/util/ArrayList;

    new-instance v4, Lcom/perm/kate/data/PageCommentList$CommentData;

    iget-object v5, v1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/Comment;

    invoke-direct {v4, v5}, Lcom/perm/kate/data/PageCommentList$CommentData;-><init>(Lcom/perm/kate/api/Comment;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 132
    iget-object v2, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v2}, Lcom/perm/kate/CommentRepliesActivity;->access$300(Lcom/perm/kate/CommentRepliesActivity;)V

    .line 135
    iget-object v2, v1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Comment;

    invoke-static {v2}, Lcom/perm/kate/CommentListAdapter;->parseProfileLinks(Lcom/perm/kate/api/Comment;)V

    .line 136
    iget-object v2, v1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Comment;

    iget-wide v4, v2, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_4

    .line 138
    iget-object v10, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    const/4 v11, 0x0

    invoke-static {v10}, Lcom/perm/kate/CommentRepliesActivity;->access$000(Lcom/perm/kate/CommentRepliesActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v12

    iget-object v1, v1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Comment;

    iget-wide v13, v1, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    iget-object v1, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentRepliesActivity;->access$200(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v15

    invoke-static/range {v10 .. v16}, Lcom/perm/kate/CommentRepliesActivity;->access$100(Lcom/perm/kate/CommentRepliesActivity;ILcom/perm/kate/session/Callback;JJ)V

    goto :goto_1

    .line 139
    :cond_4
    iget-object v1, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentRepliesActivity;->access$200(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v1

    cmp-long v4, v1, v8

    if-eqz v4, :cond_5

    .line 141
    iget-object v10, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    const/4 v11, 0x0

    invoke-static {v10}, Lcom/perm/kate/CommentRepliesActivity;->access$000(Lcom/perm/kate/CommentRepliesActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v12

    iget-object v1, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentRepliesActivity;->access$200(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    invoke-static/range {v10 .. v16}, Lcom/perm/kate/CommentRepliesActivity;->access$100(Lcom/perm/kate/CommentRepliesActivity;ILcom/perm/kate/session/Callback;JJ)V

    .line 142
    iget-object v1, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v1, v8, v9}, Lcom/perm/kate/CommentRepliesActivity;->access$202(Lcom/perm/kate/CommentRepliesActivity;J)J

    goto :goto_1

    .line 144
    :cond_5
    iget-object v1, v0, Lcom/perm/kate/CommentRepliesActivity$2;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-virtual {v1, v3}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :goto_1
    return-void
.end method
