.class Lcom/perm/kate/session/Session$91;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->addPollVote(JJJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$answer_id:J

.field final synthetic val$owner_id:J

.field final synthetic val$poll_id:J

.field final synthetic val$topic_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJJJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/perm/kate/session/Session$91;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$91;->val$poll_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$91;->val$answer_id:J

    iput-wide p8, p0, Lcom/perm/kate/session/Session$91;->val$owner_id:J

    iput-wide p10, p0, Lcom/perm/kate/session/Session$91;->val$topic_id:J

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
    .line 1033
    iget-object v0, p0, Lcom/perm/kate/session/Session$91;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$91;->val$poll_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$91;->val$answer_id:J

    iget-wide v6, p0, Lcom/perm/kate/session/Session$91;->val$owner_id:J

    iget-wide v8, p0, Lcom/perm/kate/session/Session$91;->val$topic_id:J

    iget-object v10, p0, Lcom/perm/kate/session/Session$91;->captcha_key:Ljava/lang/String;

    iget-object v11, p0, Lcom/perm/kate/session/Session$91;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/api/Api;->addPollVote(JJJJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$91;->res:Ljava/lang/Object;

    .line 1034
    return-void
.end method
