.class Lcom/perm/kate/CommentsActivity$16;
.super Ljava/lang/Thread;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 754
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 755
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, v0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget v1, v1, Lcom/perm/kate/data/PageCommentList;->count:I

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$000(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v4}, Lcom/perm/kate/CommentsActivity;->access$2600(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/CommentsActivity;->access$100(Lcom/perm/kate/CommentsActivity;IJLcom/perm/kate/session/Callback;)V

    return-void
.end method
