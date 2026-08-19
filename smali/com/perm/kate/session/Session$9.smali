.class Lcom/perm/kate/session/Session$9;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$filters:Ljava/lang/String;

.field final synthetic val$offset:Ljava/lang/Integer;

.field final synthetic val$time_offset:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JILjava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/perm/kate/session/Session$9;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$9;->val$time_offset:J

    iput p6, p0, Lcom/perm/kate/session/Session$9;->val$count:I

    iput-object p7, p0, Lcom/perm/kate/session/Session$9;->val$filters:Ljava/lang/String;

    iput-object p8, p0, Lcom/perm/kate/session/Session$9;->val$offset:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 338
    iget-object v0, p0, Lcom/perm/kate/session/Session$9;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$9;->val$time_offset:J

    iget v4, p0, Lcom/perm/kate/session/Session$9;->val$count:I

    iget-object v5, p0, Lcom/perm/kate/session/Session$9;->val$filters:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Session$9;->val$offset:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->getMessages(JILjava/lang/String;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
