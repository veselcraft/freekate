.class Lcom/perm/kate/session/Session$21;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$nid:Ljava/lang/Long;

.field final synthetic val$offset:I

.field final synthetic val$owner_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;II)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/perm/kate/session/Session$21;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$21;->val$nid:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$21;->val$owner_id:Ljava/lang/Long;

    iput p6, p0, Lcom/perm/kate/session/Session$21;->val$offset:I

    iput p7, p0, Lcom/perm/kate/session/Session$21;->val$count:I

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 446
    iget-object v0, p0, Lcom/perm/kate/session/Session$21;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$21;->val$nid:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/session/Session$21;->val$owner_id:Ljava/lang/Long;

    iget v3, p0, Lcom/perm/kate/session/Session$21;->val$offset:I

    iget v4, p0, Lcom/perm/kate/session/Session$21;->val$count:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/api/Api;->getNoteComments(Ljava/lang/Long;Ljava/lang/Long;II)Lcom/perm/kate/api/CommentList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
