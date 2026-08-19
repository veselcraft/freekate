.class Lcom/perm/kate/session/Session$32;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:Ljava/lang/Integer;

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$item_id:J

.field final synthetic val$item_type:Ljava/lang/String;

.field final synthetic val$offset:Ljava/lang/Integer;

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/perm/kate/session/Session$32;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$32;->val$item_type:Ljava/lang/String;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$32;->val$item_id:J

    iput-wide p7, p0, Lcom/perm/kate/session/Session$32;->val$owner_id:J

    iput-object p9, p0, Lcom/perm/kate/session/Session$32;->val$filter:Ljava/lang/String;

    iput-object p10, p0, Lcom/perm/kate/session/Session$32;->val$offset:Ljava/lang/Integer;

    iput-object p11, p0, Lcom/perm/kate/session/Session$32;->val$count:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 548
    iget-object v0, p0, Lcom/perm/kate/session/Session$32;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$32;->val$item_type:Ljava/lang/String;

    iget-wide v3, p0, Lcom/perm/kate/session/Session$32;->val$item_id:J

    iget-wide v5, p0, Lcom/perm/kate/session/Session$32;->val$owner_id:J

    iget-object v7, p0, Lcom/perm/kate/session/Session$32;->val$filter:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/session/Session$32;->val$offset:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/perm/kate/session/Session$32;->val$count:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/api/Api;->getLikeUsers(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
