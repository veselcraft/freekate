.class Lcom/perm/kate/session/Session$102;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$add_answers:Ljava/util/ArrayList;

.field final synthetic val$delete_answers:Ljava/util/ArrayList;

.field final synthetic val$edit_answers:Ljava/util/ArrayList;

.field final synthetic val$end_date:Ljava/lang/Long;

.field final synthetic val$owner_id:J

.field final synthetic val$poll_id:J

.field final synthetic val$question:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1225
    iput-object p1, p0, Lcom/perm/kate/session/Session$102;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$102;->val$poll_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$102;->val$owner_id:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$102;->val$question:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$102;->val$end_date:Ljava/lang/Long;

    iput-object p10, p0, Lcom/perm/kate/session/Session$102;->val$add_answers:Ljava/util/ArrayList;

    iput-object p11, p0, Lcom/perm/kate/session/Session$102;->val$edit_answers:Ljava/util/ArrayList;

    iput-object p12, p0, Lcom/perm/kate/session/Session$102;->val$delete_answers:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1228
    iget-object v0, p0, Lcom/perm/kate/session/Session$102;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$102;->val$poll_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$102;->val$owner_id:J

    iget-object v6, p0, Lcom/perm/kate/session/Session$102;->val$question:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Session$102;->val$end_date:Ljava/lang/Long;

    iget-object v8, p0, Lcom/perm/kate/session/Session$102;->val$add_answers:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/perm/kate/session/Session$102;->val$edit_answers:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/perm/kate/session/Session$102;->val$delete_answers:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/api/Api;->editPoll(JJLjava/lang/String;Ljava/lang/Long;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
