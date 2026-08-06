.class Lcom/perm/kate/Settings$19;
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


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/perm/kate/Settings$19;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 590
    sget-object v2, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/session/Session;

    .line 591
    .local v1, "session":Lcom/perm/kate/session/Session;
    new-instance v0, Lcom/perm/kate/Settings$19$1;

    iget-object v3, p0, Lcom/perm/kate/Settings$19;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {v0, p0, v3, v1}, Lcom/perm/kate/Settings$19$1;-><init>(Lcom/perm/kate/Settings$19;Landroid/app/Activity;Lcom/perm/kate/session/Session;)V

    .line 599
    .local v0, "callback1":Lcom/perm/kate/session/Callback;
    invoke-static {}, Lcom/perm/kate/Helper;->installation_id()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/Settings$19;->this$0:Lcom/perm/kate/Settings;

    invoke-virtual {v1, v3, v0, v4}, Lcom/perm/kate/session/Session;->unregisterDevice(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 601
    .end local v0    # "callback1":Lcom/perm/kate/session/Callback;
    .end local v1    # "session":Lcom/perm/kate/session/Session;
    :cond_0
    return-void
.end method
