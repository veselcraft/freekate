.class Lcom/perm/kate/session/Session$11;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$offset:J

.field final synthetic val$unread:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JIZ)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/perm/kate/session/Session$11;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$11;->val$offset:J

    iput p6, p0, Lcom/perm/kate/session/Session$11;->val$count:I

    iput-boolean p7, p0, Lcom/perm/kate/session/Session$11;->val$unread:Z

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 356
    iget-object v0, p0, Lcom/perm/kate/session/Session$11;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$11;->val$offset:J

    iget v4, p0, Lcom/perm/kate/session/Session$11;->val$count:I

    iget-boolean v5, p0, Lcom/perm/kate/session/Session$11;->val$unread:Z

    iget-object v6, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/api/Api;->getMessagesDialogs(JIZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
