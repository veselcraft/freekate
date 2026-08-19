.class Lcom/perm/kate/session/Session$64;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$gid:Ljava/lang/Long;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$object:Ljava/lang/String;

.field final synthetic val$publish_date:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lcom/perm/kate/session/Session$64;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$64;->val$object:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$64;->val$message:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/session/Session$64;->val$gid:Ljava/lang/Long;

    iput-object p7, p0, Lcom/perm/kate/session/Session$64;->val$publish_date:Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 862
    iget-object v0, p0, Lcom/perm/kate/session/Session$64;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$64;->val$object:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$64;->val$message:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/session/Session$64;->val$gid:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/session/Session$64;->val$publish_date:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/api/Api;->repostWallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/WallMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
