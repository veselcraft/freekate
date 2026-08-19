.class Lcom/perm/kate/Settings$25;
.super Ljava/lang/Thread;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings;->turnPushOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Settings;

.field final synthetic val$token1:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;Ljava/lang/String;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/perm/kate/Settings$25;->this$0:Lcom/perm/kate/Settings;

    iput-object p2, p0, Lcom/perm/kate/Settings$25;->val$token1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 722
    sget-object v0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/session/Session;

    .line 723
    new-instance v2, Lcom/perm/kate/Settings$25$1;

    iget-object v3, p0, Lcom/perm/kate/Settings$25;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {v2, p0, v3, v1}, Lcom/perm/kate/Settings$25$1;-><init>(Lcom/perm/kate/Settings$25;Landroid/app/Activity;Lcom/perm/kate/session/Session;)V

    .line 731
    invoke-static {}, Lcom/perm/kate/Helper;->installation_id()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/Settings$25;->this$0:Lcom/perm/kate/Settings;

    invoke-virtual {v1, v3, v2, v4}, Lcom/perm/kate/session/Session;->unregisterDevice(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/Settings$25;->this$0:Lcom/perm/kate/Settings;

    iget-object v2, p0, Lcom/perm/kate/Settings$25;->val$token1:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/perm/kate/push/Push;->unregister(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 737
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 738
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
