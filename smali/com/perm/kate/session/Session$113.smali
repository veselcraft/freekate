.class Lcom/perm/kate/session/Session$113;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$from_group:Z

.field final synthetic val$gid:J

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1324
    iput-object p1, p0, Lcom/perm/kate/session/Session$113;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$113;->val$gid:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$113;->val$title:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$113;->val$text:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/perm/kate/session/Session$113;->val$from_group:Z

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1327
    iget-object v0, p0, Lcom/perm/kate/session/Session$113;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$113;->val$gid:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$113;->val$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Session$113;->val$text:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/perm/kate/session/Session$113;->val$from_group:Z

    iget-object v7, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/api/Api;->createGroupTopic(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
