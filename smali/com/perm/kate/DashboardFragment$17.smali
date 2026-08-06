.class Lcom/perm/kate/DashboardFragment$17;
.super Lcom/perm/kate/session/Callback;
.source "DashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashboardFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DashboardFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/perm/kate/DashboardFragment$17;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 366
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment$17;->this$0:Lcom/perm/kate/DashboardFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/DashboardFragment;->showProgressBar(Z)V

    .line 367
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 355
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 356
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    invoke-virtual {v2, v1, v4}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 359
    iget-object v1, p0, Lcom/perm/kate/DashboardFragment$17;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-virtual {v1, v4}, Lcom/perm/kate/DashboardFragment;->showProgressBar(Z)V

    .line 360
    iget-object v2, p0, Lcom/perm/kate/DashboardFragment$17;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v3, v1}, Lcom/perm/kate/DashboardFragment;->access$1000(Lcom/perm/kate/DashboardFragment;ZZ)V

    goto :goto_0
.end method
