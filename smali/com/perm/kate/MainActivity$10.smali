.class Lcom/perm/kate/MainActivity$10;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainActivity;->unregisterPushForAllAccounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainActivity;

.field final synthetic val$sessions_copy:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MainActivity;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/perm/kate/MainActivity$10;->this$0:Lcom/perm/kate/MainActivity;

    iput-object p2, p0, Lcom/perm/kate/MainActivity$10;->val$sessions_copy:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 638
    iget-object v1, p0, Lcom/perm/kate/MainActivity$10;->val$sessions_copy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/session/Session;

    .line 639
    .local v0, "session":Lcom/perm/kate/session/Session;
    iget-object v2, v0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-boolean v2, v2, Lcom/perm/kate/account/Account;->push_registered:Z

    if-eqz v2, :cond_0

    .line 640
    invoke-static {}, Lcom/perm/kate/Helper;->installation_id()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/kate/MainActivity$10;->this$0:Lcom/perm/kate/MainActivity;

    invoke-virtual {v0, v2, v3, v4}, Lcom/perm/kate/session/Session;->unregisterDevice(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 641
    .end local v0    # "session":Lcom/perm/kate/session/Session;
    :cond_1
    return-void
.end method
