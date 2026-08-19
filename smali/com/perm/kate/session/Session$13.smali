.class Lcom/perm/kate/session/Session$13;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$peer_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/perm/kate/session/Session$13;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$13;->val$peer_id:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 374
    iget-object v0, p0, Lcom/perm/kate/session/Session$13;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v1, p0, Lcom/perm/kate/session/Session$13;->val$peer_id:J

    iget-object v3, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/api/Api;->getBotButtons(JLjava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/BotKeyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
