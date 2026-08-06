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
    .param p1, "this$0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
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
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    :pswitch_0
    return-void

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v1, v1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    invoke-static {v0, v1}, Lcom/perm/kate/AlbumCommentsActivity;->access$100(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/api/Comment;)V

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$urls:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V

    goto :goto_0

    .line 110
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v0, v0, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 113
    :pswitch_4
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v2, v2, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/AlbumCommentsActivity;->access$200(Lcom/perm/kate/AlbumCommentsActivity;Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V

    goto :goto_0

    .line 116
    :pswitch_5
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-object v2, v2, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/AlbumCommentsActivity;->access$200(Lcom/perm/kate/AlbumCommentsActivity;Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V

    goto :goto_0

    .line 119
    :pswitch_6
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/AlbumCommentsActivity;->access$300(Lcom/perm/kate/AlbumCommentsActivity;J)V

    goto :goto_0

    .line 122
    :pswitch_7
    new-instance v0, Lcom/perm/kate/ReportHelper;

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-direct {v0, v1}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->val$commentTag:Lcom/perm/kate/CommentTag;

    iget-wide v2, v1, Lcom/perm/kate/CommentTag;->comment_id:J

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity$2;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v1}, Lcom/perm/kate/AlbumCommentsActivity;->access$400(Lcom/perm/kate/AlbumCommentsActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/ReportHelper;->showReportPhotoCommentDialog(JJ)V

    goto :goto_0

    .line 102
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
