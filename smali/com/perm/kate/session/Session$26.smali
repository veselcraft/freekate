.class Lcom/perm/kate/session/Session$26;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$cid:J

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$owner_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/perm/kate/session/Session$26;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$26;->val$cid:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$26;->val$owner_id:Ljava/lang/Long;

    iput-object p7, p0, Lcom/perm/kate/session/Session$26;->val$message:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 491
    iget-object v0, p0, Lcom/perm/kate/session/Session$26;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$26;->val$cid:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$26;->val$owner_id:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/session/Session$26;->val$message:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/api/Api;->editNoteComment(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
