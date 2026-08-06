.class Lcom/perm/kate/CommentsActivity$14;
.super Ljava/lang/Thread;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->reloadInThread()V
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
    .param p1, "this$0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$14;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$14;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/CommentsActivity;->showProgressBar(Z)V

    .line 614
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$14;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$1800(Lcom/perm/kate/CommentsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$14;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$14;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v2}, Lcom/perm/kate/CommentsActivity;->access$1900(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/CommentsActivity;->access$000(Lcom/perm/kate/CommentsActivity;ILcom/perm/kate/session/Callback;)V

    .line 618
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$14;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$2000(Lcom/perm/kate/CommentsActivity;)V

    goto :goto_0
.end method
