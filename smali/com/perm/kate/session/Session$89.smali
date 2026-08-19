.class Lcom/perm/kate/session/Session$89;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 1108
    iput-object p1, p0, Lcom/perm/kate/session/Session$89;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$89;->val$uid:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$89;->val$text:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1111
    iget-object v0, p0, Lcom/perm/kate/session/Session$89;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$89;->val$uid:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/session/Session$89;->val$text:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/api/Api;->addFriend(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
