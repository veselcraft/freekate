.class Lcom/perm/kate/session/Session$176;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$access_key:Ljava/lang/String;

.field final synthetic val$document_id:J

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;)V
    .locals 0

    .line 1905
    iput-object p1, p0, Lcom/perm/kate/session/Session$176;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$176;->val$owner_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$176;->val$document_id:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$176;->val$access_key:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1908
    iget-object v0, p0, Lcom/perm/kate/session/Session$176;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$176;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$176;->val$document_id:J

    iget-object v6, p0, Lcom/perm/kate/session/Session$176;->val$access_key:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/api/Api;->docsAdd(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
