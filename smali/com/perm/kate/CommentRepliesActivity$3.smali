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

    .line 206
    iput-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iput-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iput-object p4, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$urls:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 209
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 v1, 0x3

    if-eq p1, v1, :cond_8

    const/4 v1, 0x5

    if-eq p1, v1, :cond_7

    const/4 p2, 0x6

    if-eq p1, p2, :cond_6

    const/4 p2, 0x7

    if-eq p1, p2, :cond_5

    const/16 p2, 0x9

    if-eq p1, p2, :cond_4

    const/16 p2, 0xd

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentRepliesActivity;->access$600(Lcom/perm/kate/CommentRepliesActivity;)I

    move-result p1

    if-nez p1, :cond_1

    .line 233
    new-instance p1, Lcom/perm/kate/ReportHelper;

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-direct {p1, p2}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentRepliesActivity;->access$500(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/ReportHelper;->showReportPhotoCommentDialog(JJ)V

    goto/16 :goto_0

    .line 234
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentRepliesActivity;->access$600(Lcom/perm/kate/CommentRepliesActivity;)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 235
    new-instance p1, Lcom/perm/kate/ReportHelper;

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-direct {p1, p2}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentRepliesActivity;->access$500(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/ReportHelper;->showReportVideoCommentDialog(JJ)V

    goto/16 :goto_0

    .line 236
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentRepliesActivity;->access$600(Lcom/perm/kate/CommentRepliesActivity;)I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 237
    new-instance p1, Lcom/perm/kate/ReportHelper;

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-direct {p1, p2}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentRepliesActivity;->access$500(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/ReportHelper;->showReportMarketCommentDialog(JJ)V

    goto/16 :goto_0

    .line 239
    :cond_3
    new-instance p1, Lcom/perm/kate/ReportHelper;

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-direct {p1, p2}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentRepliesActivity;->access$500(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/ReportHelper;->showReportPostCommentDialog(JJ)V

    goto :goto_0

    .line 229
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentRepliesActivity;->access$500(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide p1

    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, v0, Lcom/perm/kate/CommentTag;->user_id:J

    iget-object v2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/perm/kate/Helper;->showGroupBlockActivity(JJLandroid/app/Activity;)V

    goto :goto_0

    .line 226
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/CommentRepliesActivity;->access$400(Lcom/perm/kate/CommentRepliesActivity;J)V

    goto :goto_0

    .line 223
    :cond_6
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v0, v0, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/perm/kate/CommentRepliesActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V

    goto :goto_0

    .line 220
    :cond_7
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, v0, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v1, v1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    invoke-virtual {p1, v0, v1, p2}, Lcom/perm/kate/CommentRepliesActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V

    goto :goto_0

    .line 217
    :cond_8
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object p1, p1, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 214
    :cond_9
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$urls:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V

    goto :goto_0

    .line 211
    :cond_a
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$3;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-object p2, p0, Lcom/perm/kate/CommentRepliesActivity$3;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/perm/kate/CommentRepliesActivity;->confirmRemoveComment(Ljava/lang/Long;)V

    :goto_0
    return-void
.end method
