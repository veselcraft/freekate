.class Lcom/perm/kate/CommentsActivity$5;
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
    .param p1, "this$0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-object p2, p0, Lcom/perm/kate/CommentsActivity$5;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iput-object p4, p0, Lcom/perm/kate/CommentsActivity$5;->val$urls:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_0
    :pswitch_0
    return-void

    .line 299
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v2, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/CommentsActivity;->confirmRemoveComment(Ljava/lang/Long;J)V

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->val$urls:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V

    goto :goto_0

    .line 305
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v0, v0, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 308
    :pswitch_4
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    invoke-static {v0, v1}, Lcom/perm/kate/CommentsActivity;->access$700(Lcom/perm/kate/CommentsActivity;Lcom/perm/kate/CommentTag;)V

    goto :goto_0

    .line 311
    :pswitch_5
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v2, v2, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/CommentsActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V

    goto :goto_0

    .line 314
    :pswitch_6
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v2, v2, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/CommentsActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V

    goto :goto_0

    .line 317
    :pswitch_7
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/CommentsActivity;->access$800(Lcom/perm/kate/CommentsActivity;J)V

    goto :goto_0

    .line 320
    :pswitch_8
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v1, v1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    invoke-static {v0, v2, v3, v1}, Lcom/perm/kate/CommentsActivity;->access$900(Lcom/perm/kate/CommentsActivity;JLcom/perm/kate/api/Comment;)V

    goto :goto_0

    .line 323
    :pswitch_9
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v2, Lcom/perm/kate/CommentTag;->user_id:J

    iget-object v4, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/Helper;->showGroupBlockActivity(JJLandroid/app/Activity;)V

    goto :goto_0

    .line 326
    :pswitch_a
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$300(Lcom/perm/kate/CommentsActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lcom/perm/kate/ReportHelper;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {v0, v1}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/ReportHelper;->showReportPhotoCommentDialog(JJ)V

    goto/16 :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$300(Lcom/perm/kate/CommentsActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 329
    new-instance v0, Lcom/perm/kate/ReportHelper;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {v0, v1}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/ReportHelper;->showReportVideoCommentDialog(JJ)V

    goto/16 :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$300(Lcom/perm/kate/CommentsActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 331
    new-instance v0, Lcom/perm/kate/ReportHelper;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {v0, v1}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/ReportHelper;->showReportMarketCommentDialog(JJ)V

    goto/16 :goto_0

    .line 333
    :cond_2
    new-instance v0, Lcom/perm/kate/ReportHelper;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {v0, v1}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/ReportHelper;->showReportPostCommentDialog(JJ)V

    goto/16 :goto_0

    .line 336
    :pswitch_b
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v1, v1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v2, v1, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/CommentsActivity;->access$1000(Lcom/perm/kate/CommentsActivity;J)V

    goto/16 :goto_0

    .line 339
    :pswitch_c
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v1, v1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v2, v1, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/CommentsActivity;->access$1100(Lcom/perm/kate/CommentsActivity;J)V

    goto/16 :goto_0

    .line 342
    :pswitch_d
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$5;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v1, v1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v2, v1, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/CommentsActivity;->access$1200(Lcom/perm/kate/CommentsActivity;J)V

    goto/16 :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
