.class Lcom/perm/kate/session/Session$117;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$gid:Ljava/lang/Long;

.field final synthetic val$not_sure:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 0

    .line 1360
    iput-object p1, p0, Lcom/perm/kate/session/Session$117;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$117;->val$gid:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$117;->val$not_sure:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1363
    iget-object v0, p0, Lcom/perm/kate/session/Session$117;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v0, p0, Lcom/perm/kate/session/Session$117;->val$gid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/session/Session$117;->val$not_sure:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->joinGroup(JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
