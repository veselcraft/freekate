.class Lcom/perm/kate/OnlineFriendsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "OnlineFriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/OnlineFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/OnlineFriendsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$2;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 115
    iget-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$2;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 98
    check-cast p1, Ljava/util/ArrayList;

    .line 103
    invoke-static {p1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 105
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 106
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/OnlineFriendsFragment$2;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iget-wide v3, v3, Lcom/perm/kate/OnlineFriendsFragment;->user_id:J

    invoke-virtual {v2, p1, v3, v4}, Lcom/perm/kate/db/DataHelper;->updateUsersOnlineStatus(Ljava/util/ArrayList;J)V

    const-string p1, "off_updateUsersOnlineStatus"

    .line 107
    invoke-static {v0, v1, p1}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$2;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 109
    iget-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$2;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-static {p1}, Lcom/perm/kate/OnlineFriendsFragment;->access$000(Lcom/perm/kate/OnlineFriendsFragment;)V

    return-void
.end method
