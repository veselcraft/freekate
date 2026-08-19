.class Lcom/perm/kate/AlbumCommentsActivity$2;
.super Ljava/lang/Object;
.source "AlbumCommentsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AlbumCommentsActivity;->displayContextMenu(Lcom/perm/kate/CommentTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumCommentsActivity;

.field final synthetic val$commentTag:Lcom/perm/kate/CommentTag;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$urls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumCommentsActivity;Ljava/util/ArrayList;Lcom/perm/kate/CommentTag;Ljava/util/ArrayList;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iput-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iput-object p4, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$urls:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 102
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const/4 p2, 0x7

    if-eq p1, p2, :cond_1

    const/16 p2, 0xd

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Lcom/perm/kate/ReportHelper;

    iget-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-direct {p1, p2}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {p2}, Lcom/perm/kate/AlbumCommentsActivity;->access$400(Lcom/perm/kate/AlbumCommentsActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/ReportHelper;->showReportPhotoCommentDialog(JJ)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iget-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/AlbumCommentsActivity;->access$300(Lcom/perm/kate/AlbumCommentsActivity;J)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iget-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, p2, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v0, v0, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/perm/kate/AlbumCommentsActivity;->access$200(Lcom/perm/kate/AlbumCommentsActivity;Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V

    goto :goto_0

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v0, v0, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v1, v1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    invoke-static {p1, v0, v1, p2}, Lcom/perm/kate/AlbumCommentsActivity;->access$200(Lcom/perm/kate/AlbumCommentsActivity;Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V

    goto :goto_0

    .line 110
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object p1, p1, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 107
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$urls:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V

    goto :goto_0

    .line 104
    :cond_6
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iget-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object p2, p2, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    invoke-static {p1, p2}, Lcom/perm/kate/AlbumCommentsActivity;->access$100(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/api/Comment;)V

    :goto_0
    return-void
.end method
