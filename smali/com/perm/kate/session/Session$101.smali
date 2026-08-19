.class Lcom/perm/kate/session/Session$101;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$answers:Ljava/util/ArrayList;

.field final synthetic val$end_date:Ljava/lang/Long;

.field final synthetic val$is_anonymous:Z

.field final synthetic val$is_multiple:Z

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$question:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;ZZLjava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 0

    .line 1216
    iput-object p1, p0, Lcom/perm/kate/session/Session$101;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$101;->val$question:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/perm/kate/session/Session$101;->val$is_anonymous:Z

    iput-boolean p6, p0, Lcom/perm/kate/session/Session$101;->val$is_multiple:Z

    iput-object p7, p0, Lcom/perm/kate/session/Session$101;->val$end_date:Ljava/lang/Long;

    iput-object p8, p0, Lcom/perm/kate/session/Session$101;->val$owner_id:Ljava/lang/Long;

    iput-object p9, p0, Lcom/perm/kate/session/Session$101;->val$answers:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1219
    iget-object v0, p0, Lcom/perm/kate/session/Session$101;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$101;->val$question:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/perm/kate/session/Session$101;->val$is_anonymous:Z

    iget-boolean v4, p0, Lcom/perm/kate/session/Session$101;->val$is_multiple:Z

    iget-object v5, p0, Lcom/perm/kate/session/Session$101;->val$end_date:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/session/Session$101;->val$owner_id:Ljava/lang/Long;

    iget-object v7, p0, Lcom/perm/kate/session/Session$101;->val$answers:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/api/Api;->createPoll(Ljava/lang/String;ZZLjava/lang/Long;Ljava/lang/Long;Ljava/util/Collection;)Lcom/perm/kate/api/VkPoll;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
