.class Lcom/perm/kate/session/Session$20;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$offset:I

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$pid:Ljava/lang/Long;

.field final synthetic val$start_comment_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/perm/kate/session/Session$20;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$20;->val$pid:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$20;->val$owner_id:Ljava/lang/Long;

    iput p6, p0, Lcom/perm/kate/session/Session$20;->val$offset:I

    iput p7, p0, Lcom/perm/kate/session/Session$20;->val$count:I

    iput-object p8, p0, Lcom/perm/kate/session/Session$20;->val$start_comment_id:Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 437
    iget-object v0, p0, Lcom/perm/kate/session/Session$20;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$20;->val$pid:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/session/Session$20;->val$owner_id:Ljava/lang/Long;

    iget v4, p0, Lcom/perm/kate/session/Session$20;->val$offset:I

    iget v5, p0, Lcom/perm/kate/session/Session$20;->val$count:I

    iget-object v6, p0, Lcom/perm/kate/session/Session$20;->val$start_comment_id:Ljava/lang/Long;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->getPhotoComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;)Lcom/perm/kate/api/CommentList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
