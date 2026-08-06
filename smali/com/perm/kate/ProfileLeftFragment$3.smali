.class Lcom/perm/kate/ProfileLeftFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "ProfileLeftFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileLeftFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileLeftFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileLeftFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileLeftFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 151
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/ProfileLeftFragment;->showProgressBar(Z)V

    .line 152
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 130
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 131
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 137
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    const-string v2, ""

    iput-object v2, v1, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    .line 139
    :cond_2
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    invoke-virtual {v2, v1, v7}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 140
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v3, v3, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/ProfileLeftFragment;->access$202(Lcom/perm/kate/ProfileLeftFragment;Lcom/perm/kate/api/User;)Lcom/perm/kate/api/User;

    .line 141
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-static {v1}, Lcom/perm/kate/ProfileLeftFragment;->access$300(Lcom/perm/kate/ProfileLeftFragment;)V

    .line 142
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->blacklisted:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->blacklisted:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 143
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v1}, Lcom/perm/kate/ProfileLeftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->displayYouBlacklistedInUiThread(Landroid/app/Activity;)V

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v1, v6}, Lcom/perm/kate/ProfileLeftFragment;->showProgressBar(Z)V

    .line 145
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v2, v1, Lcom/perm/kate/ProfileLeftFragment;->listener:Lcom/perm/kate/ProfileActivityCallback;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    invoke-interface {v2, v1}, Lcom/perm/kate/ProfileActivityCallback;->onUserRefreshed(Lcom/perm/kate/api/User;)V

    goto :goto_0
.end method
