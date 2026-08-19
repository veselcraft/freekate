.class Lcom/perm/kate/Online$2;
.super Ljava/lang/Thread;
.source "Online.java"


# direct methods
.method constructor <init>(Lcom/perm/kate/Online;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 56
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1, v1}, Lcom/perm/kate/session/Session;->setOffline(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
