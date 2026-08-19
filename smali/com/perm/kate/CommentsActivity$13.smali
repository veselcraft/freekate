.class Lcom/perm/kate/CommentsActivity$13;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->requeryOnUiThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;

.field final synthetic val$scroll_to_end:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;Z)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$13;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-boolean p2, p0, Lcom/perm/kate/CommentsActivity$13;->val$scroll_to_end:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$13;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, v0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    invoke-virtual {v1}, Lcom/perm/kate/data/PageCommentList;->getComments()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/CommentsActivity;->commentDatas:Ljava/util/ArrayList;

    .line 613
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$13;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$1700(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/CommentListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$13;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v2, v1, Lcom/perm/kate/CommentsActivity;->commentDatas:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    .line 614
    invoke-static {v1}, Lcom/perm/kate/CommentsActivity;->access$1700(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/CommentListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 615
    iget-boolean v0, p0, Lcom/perm/kate/CommentsActivity$13;->val$scroll_to_end:Z

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$13;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$1800(Lcom/perm/kate/CommentsActivity;)V

    :cond_0
    return-void
.end method
