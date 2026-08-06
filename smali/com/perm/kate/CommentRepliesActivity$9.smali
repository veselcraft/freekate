.class Lcom/perm/kate/CommentRepliesActivity$9;
.super Ljava/lang/Thread;
.source "CommentRepliesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentRepliesActivity;->reloadInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentRepliesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentRepliesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CommentRepliesActivity;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$9;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 360
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$9;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/CommentRepliesActivity;->showProgressBar(Z)V

    .line 361
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$9;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/perm/kate/CommentRepliesActivity$9;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v2}, Lcom/perm/kate/CommentRepliesActivity;->access$900(Lcom/perm/kate/CommentRepliesActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/CommentRepliesActivity$9;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v3}, Lcom/perm/kate/CommentRepliesActivity;->access$1000(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/perm/kate/CommentRepliesActivity;->access$200(Lcom/perm/kate/CommentRepliesActivity;ILcom/perm/kate/session/Callback;J)V

    .line 362
    return-void
.end method
