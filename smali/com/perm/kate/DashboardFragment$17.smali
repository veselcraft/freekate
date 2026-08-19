.class Lcom/perm/kate/DashboardFragment$17;
.super Lcom/perm/kate/session/Callback;
.source "DashboardFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashboardFragment;Landroid/app/Activity;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/perm/kate/DashboardFragment$17;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 395
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 396
    iget-object p1, p0, Lcom/perm/kate/DashboardFragment$17;->this$0:Lcom/perm/kate/DashboardFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 385
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 386
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    invoke-virtual {v0, v2, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 389
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment$17;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 390
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment$17;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    iget-object p1, p1, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-static {v0, v2, p1}, Lcom/perm/kate/DashboardFragment;->access$1000(Lcom/perm/kate/DashboardFragment;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_1
    :goto_0
    return-void
.end method
