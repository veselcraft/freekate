.class Lcom/perm/kate/CommentsActivity$15;
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

    .line 736
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$15;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 739
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$15;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 740
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$15;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$2100(Lcom/perm/kate/CommentsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$15;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$000(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/CommentsActivity$15;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v4}, Lcom/perm/kate/CommentsActivity;->access$2200(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/CommentsActivity;->access$100(Lcom/perm/kate/CommentsActivity;IJLcom/perm/kate/session/Callback;)V

    goto :goto_0

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$15;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$2300(Lcom/perm/kate/CommentsActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 743
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$15;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$2400(Lcom/perm/kate/CommentsActivity;)V

    goto :goto_0

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$15;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$2500(Lcom/perm/kate/CommentsActivity;)V

    :goto_0
    return-void
.end method
