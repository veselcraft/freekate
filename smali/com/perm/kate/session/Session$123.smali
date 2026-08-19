.class Lcom/perm/kate/session/Session$123;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 0

    .line 1428
    iput-object p1, p0, Lcom/perm/kate/session/Session$123;->this$0:Lcom/perm/kate/session/Session;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1431
    iget-object v0, p0, Lcom/perm/kate/session/Session$123;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Api;->getCounters(Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Counters;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
