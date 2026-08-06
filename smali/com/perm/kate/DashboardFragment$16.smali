.class Lcom/perm/kate/DashboardFragment$16;
.super Ljava/lang/Thread;
.source "DashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DashboardFragment;->refreshOnlineStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DashboardFragment;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/perm/kate/DashboardFragment$16;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 340
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v1, "user_id":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment$16;->this$0:Lcom/perm/kate/DashboardFragment;

    iget-object v0, v0, Lcom/perm/kate/DashboardFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v2, 0x0

    const-string v3, "online"

    const-string v4, "nom"

    iget-object v5, p0, Lcom/perm/kate/DashboardFragment$16;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-static {v5}, Lcom/perm/kate/DashboardFragment;->access$900(Lcom/perm/kate/DashboardFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/DashboardFragment$16;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-virtual {v6}, Lcom/perm/kate/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v1    # "user_id":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v7

    .line 344
    .local v7, "th":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 345
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
