.class Lcom/perm/kate/CommentRepliesActivity$3;
.super Ljava/lang/Object;
.source "CommentRepliesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentRepliesActivity;->displayContextMenu(Lcom/perm/kate/CommentTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentRepliesActivity;

.field final synthetic val$commentTag:Lcom/perm/kate/CommentTag;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$urls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentRepliesActivity;Ljava/util/ArrayList;Lcom/perm/kate/CommentTag;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CommentRepliesActivity;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iput-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iput-object p4, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$urls:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 216
    :goto_0
    :pswitch_0
    return-void

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/CommentRepliesActivity;->confirmRemoveComment(Ljava/lang/Long;)V

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$urls:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V

    goto :goto_0

    .line 191
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v0, v0, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 194
    :pswitch_4
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v2, v2, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/CommentRepliesActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V

    goto :goto_0

    .line 197
    :pswitch_5
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v2, v2, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/CommentRepliesActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V

    goto :goto_0

    .line 200
    :pswitch_6
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/CommentRepliesActivity;->access$300(Lcom/perm/kate/CommentRepliesActivity;J)V

    goto :goto_0

    .line 203
    :pswitch_7
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentRepliesActivity;->access$400(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v2, Lcom/perm/kate/CommentTag;->user_id:J

    iget-object v4, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/Helper;->showGroupBlockActivity(JJLandroid/app/Activity;)V

    goto :goto_0

    .line 206
    :pswitch_8
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentRepliesActivity;->access$500(Lcom/perm/kate/CommentRepliesActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/perm/kate/ReportHelper;

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-direct {v0, v1}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentRepliesActivity;->access$400(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/ReportHelper;->showReportPhotoCommentDialog(JJ)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentRepliesActivity;->access$500(Lcom/perm/kate/CommentRepliesActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 209
    new-instance v0, Lcom/perm/kate/ReportHelper;

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-direct {v0, v1}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentRepliesActivity;->access$400(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/ReportHelper;->showReportVideoCommentDialog(JJ)V

    goto/16 :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentRepliesActivity;->access$500(Lcom/perm/kate/CommentRepliesActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 211
    new-instance v0, Lcom/perm/kate/ReportHelper;

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-direct {v0, v1}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentRepliesActivity;->access$400(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/ReportHelper;->showReportMarketCommentDialog(JJ)V

    goto/16 :goto_0

    .line 213
    :cond_2
    new-instance v0, Lcom/perm/kate/ReportHelper;

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-direct {v0, v1}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentRepliesActivity;->access$400(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/ReportHelper;->showReportPostCommentDialog(JJ)V

    goto/16 :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
