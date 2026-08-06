.class Lcom/perm/kate/session/Session$61;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$offset:I

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$post_id:Ljava/lang/Long;

.field final synthetic val$reverse_order:Z

.field final synthetic val$start_comment_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 738
    iput-object p1, p0, Lcom/perm/kate/session/Session$61;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$61;->val$owner_id:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$61;->val$post_id:Ljava/lang/Long;

    iput p6, p0, Lcom/perm/kate/session/Session$61;->val$offset:I

    iput p7, p0, Lcom/perm/kate/session/Session$61;->val$count:I

    iput-boolean p8, p0, Lcom/perm/kate/session/Session$61;->val$reverse_order:Z

    iput-object p9, p0, Lcom/perm/kate/session/Session$61;->val$start_comment_id:Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lcom/perm/kate/session/Session$61;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$61;->val$owner_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/session/Session$61;->val$post_id:Ljava/lang/Long;

    iget v3, p0, Lcom/perm/kate/session/Session$61;->val$offset:I

    iget v4, p0, Lcom/perm/kate/session/Session$61;->val$count:I

    iget-boolean v5, p0, Lcom/perm/kate/session/Session$61;->val$reverse_order:Z

    iget-object v6, p0, Lcom/perm/kate/session/Session$61;->val$start_comment_id:Ljava/lang/Long;

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/api/Api;->getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;)Lcom/perm/kate/api/CommentList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$61;->res:Ljava/lang/Object;

    .line 742
    return-void
.end method
