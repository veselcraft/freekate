.class Lcom/perm/kate/session/Session$93;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getPollVoters(JJLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$answer_ids:Ljava/util/ArrayList;

.field final synthetic val$count:Ljava/lang/Long;

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$offset:Ljava/lang/Long;

.field final synthetic val$owner_id:J

.field final synthetic val$poll_id:J

.field final synthetic val$topic_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/perm/kate/session/Session$93;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$93;->val$poll_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$93;->val$owner_id:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$93;->val$answer_ids:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/perm/kate/session/Session$93;->val$count:Ljava/lang/Long;

    iput-object p10, p0, Lcom/perm/kate/session/Session$93;->val$offset:Ljava/lang/Long;

    iput-object p11, p0, Lcom/perm/kate/session/Session$93;->val$fields:Ljava/lang/String;

    iput-wide p12, p0, Lcom/perm/kate/session/Session$93;->val$topic_id:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/perm/kate/session/Session$93;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$93;->val$poll_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$93;->val$owner_id:J

    iget-object v6, p0, Lcom/perm/kate/session/Session$93;->val$answer_ids:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/perm/kate/session/Session$93;->val$count:Ljava/lang/Long;

    iget-object v8, p0, Lcom/perm/kate/session/Session$93;->val$offset:Ljava/lang/Long;

    iget-object v9, p0, Lcom/perm/kate/session/Session$93;->val$fields:Ljava/lang/String;

    iget-wide v10, p0, Lcom/perm/kate/session/Session$93;->val$topic_id:J

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/api/Api;->getPollVoters(JJLjava/util/Collection;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$93;->res:Ljava/lang/Object;

    .line 1052
    return-void
.end method
