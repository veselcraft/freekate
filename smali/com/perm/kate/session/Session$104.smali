.class Lcom/perm/kate/session/Session$104;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->deleteGroupTopicComment(JJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$cid:J

.field final synthetic val$gid:J

.field final synthetic val$tid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/perm/kate/session/Session$104;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$104;->val$gid:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$104;->val$tid:J

    iput-wide p8, p0, Lcom/perm/kate/session/Session$104;->val$cid:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/perm/kate/session/Session$104;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$104;->val$gid:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$104;->val$tid:J

    iget-wide v6, p0, Lcom/perm/kate/session/Session$104;->val$cid:J

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/api/Api;->deleteGroupTopicComment(JJJ)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$104;->res:Ljava/lang/Object;

    .line 1151
    return-void
.end method
