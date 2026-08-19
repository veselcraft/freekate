.class Lcom/perm/kate/CommentsActivity$6;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->displayContextMenu(Lcom/perm/kate/CommentTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;

.field final synthetic val$commentTag:Lcom/perm/kate/CommentTag;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$urls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;Ljava/util/ArrayList;Lcom/perm/kate/CommentTag;Ljava/util/ArrayList;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iput-object p4, p0, Lcom/perm/kate/CommentsActivity$6;->val$urls:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 374
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 385
    :pswitch_1
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object p1, p1, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->showTextDialogForCopy(Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 426
    :pswitch_2
    new-instance v0, Lcom/perm/utils/RepostHelper;

    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lcom/perm/utils/RepostHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/RepostHelper$RepostCallback;)V

    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object p1, p1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v1, p1, Lcom/perm/kate/api/Comment;->cid:J

    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v3

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/utils/RepostHelper;->createRepostDialog(JJLjava/lang/Long;Z)V

    goto/16 :goto_0

    .line 422
    :pswitch_3
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object p2, p2, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v0, p2, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/CommentsActivity;->access$1400(Lcom/perm/kate/CommentsActivity;J)V

    goto/16 :goto_0

    .line 419
    :pswitch_4
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object p2, p2, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v0, p2, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/CommentsActivity;->access$1300(Lcom/perm/kate/CommentsActivity;J)V

    goto/16 :goto_0

    .line 416
    :pswitch_5
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object p2, p2, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v0, p2, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    iget-wide v2, p2, Lcom/perm/kate/api/Comment;->parent_stack:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/perm/kate/CommentsActivity;->access$1200(Lcom/perm/kate/CommentsActivity;JJ)V

    goto/16 :goto_0

    .line 406
    :pswitch_6
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)I

    move-result p1

    if-nez p1, :cond_0

    .line 407
    new-instance p1, Lcom/perm/kate/ReportHelper;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p1, p2}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/ReportHelper;->showReportPhotoCommentDialog(JJ)V

    goto/16 :goto_0

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 409
    new-instance p1, Lcom/perm/kate/ReportHelper;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p1, p2}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/ReportHelper;->showReportVideoCommentDialog(JJ)V

    goto/16 :goto_0

    .line 410
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 411
    new-instance p1, Lcom/perm/kate/ReportHelper;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p1, p2}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/ReportHelper;->showReportMarketCommentDialog(JJ)V

    goto/16 :goto_0

    .line 413
    :cond_2
    new-instance p1, Lcom/perm/kate/ReportHelper;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p1, p2}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/ReportHelper;->showReportPostCommentDialog(JJ)V

    goto/16 :goto_0

    .line 403
    :pswitch_7
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide p1

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, v0, Lcom/perm/kate/CommentTag;->user_id:J

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/perm/kate/Helper;->showGroupBlockActivity(JJLandroid/app/Activity;)V

    goto :goto_0

    .line 400
    :pswitch_8
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object p2, p2, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    invoke-static {p1, v0, v1, p2}, Lcom/perm/kate/CommentsActivity;->access$1100(Lcom/perm/kate/CommentsActivity;JLcom/perm/kate/api/Comment;)V

    goto :goto_0

    .line 397
    :pswitch_9
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/CommentsActivity;->access$1000(Lcom/perm/kate/CommentsActivity;J)V

    goto :goto_0

    .line 394
    :pswitch_a
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v0, v0, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/perm/kate/CommentsActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V

    goto :goto_0

    .line 391
    :pswitch_b
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v0, v0, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/perm/kate/CommentsActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V

    goto :goto_0

    .line 388
    :pswitch_c
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    invoke-static {p1, p2}, Lcom/perm/kate/CommentsActivity;->access$900(Lcom/perm/kate/CommentsActivity;Lcom/perm/kate/CommentTag;)V

    goto :goto_0

    .line 382
    :pswitch_d
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object p1, p1, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 379
    :pswitch_e
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->val$urls:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V

    goto :goto_0

    .line 376
    :pswitch_f
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$6;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$6;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, v0, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/perm/kate/CommentsActivity;->confirmRemoveComment(Ljava/lang/Long;J)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
