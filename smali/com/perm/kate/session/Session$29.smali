.class Lcom/perm/kate/session/Session$29;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$user_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/perm/kate/session/Session$29;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$29;->val$user_id:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$29;->val$fields:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 518
    iget-object v0, p0, Lcom/perm/kate/session/Session$29;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$29;->val$user_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/session/Session$29;->val$fields:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->getFriends(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
