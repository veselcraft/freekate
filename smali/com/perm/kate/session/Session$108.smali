.class Lcom/perm/kate/session/Session$108;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$extended:I

.field final synthetic val$gid:J

.field final synthetic val$offset:I

.field final synthetic val$order:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;III)V
    .locals 0

    .line 1279
    iput-object p1, p0, Lcom/perm/kate/session/Session$108;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$108;->val$gid:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$108;->val$order:Ljava/lang/Integer;

    iput p7, p0, Lcom/perm/kate/session/Session$108;->val$extended:I

    iput p8, p0, Lcom/perm/kate/session/Session$108;->val$count:I

    iput p9, p0, Lcom/perm/kate/session/Session$108;->val$offset:I

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1282
    iget-object v0, p0, Lcom/perm/kate/session/Session$108;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$108;->val$gid:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$108;->val$order:Ljava/lang/Integer;

    iget v5, p0, Lcom/perm/kate/session/Session$108;->val$extended:I

    iget v6, p0, Lcom/perm/kate/session/Session$108;->val$count:I

    iget v7, p0, Lcom/perm/kate/session/Session$108;->val$offset:I

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/api/Api;->getGroupTopics(JLjava/lang/Integer;III)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
