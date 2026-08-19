.class Lcom/perm/kate/ProfileLeftFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "ProfileLeftFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileLeftFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileLeftFragment;Landroid/app/Activity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 151
    iget-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 128
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 129
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 135
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    const-string v2, ""

    iput-object v2, v1, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    .line 137
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 138
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, v1, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/ProfileLeftFragment;->access$202(Lcom/perm/kate/ProfileLeftFragment;Lcom/perm/kate/api/User;)Lcom/perm/kate/api/User;

    .line 139
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-static {v1}, Lcom/perm/kate/ProfileLeftFragment;->access$300(Lcom/perm/kate/ProfileLeftFragment;)V

    .line 140
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->blacklisted:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->blacklisted:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 141
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->displayYouBlacklistedInUiThread(Landroid/app/Activity;)V

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-static {v1}, Lcom/perm/kate/ProfileLeftFragment;->access$400(Lcom/perm/kate/ProfileLeftFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->is_closed:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->is_closed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v1, v1, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->isFriend(Ljava/lang/Long;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 143
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    const v2, 0x7f0f008d

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 145
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$3;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v1, v1, Lcom/perm/kate/ProfileLeftFragment;->listener:Lcom/perm/kate/ProfileActivityCallback;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    invoke-interface {v1, p1}, Lcom/perm/kate/ProfileActivityCallback;->onUserRefreshed(Lcom/perm/kate/api/User;)V

    :cond_4
    :goto_0
    return-void
.end method
