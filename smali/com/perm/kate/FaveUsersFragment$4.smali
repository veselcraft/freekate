.class Lcom/perm/kate/FaveUsersFragment$4;
.super Lcom/perm/kate/session/Callback;
.source "FaveUsersFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveUsersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveUsersFragment;Landroid/app/Activity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$4;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 132
    iget-object p1, p0, Lcom/perm/kate/FaveUsersFragment$4;->this$0:Lcom/perm/kate/FaveUsersFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 133
    iget-object p1, p0, Lcom/perm/kate/FaveUsersFragment$4;->this$0:Lcom/perm/kate/FaveUsersFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/FaveUsersFragment;->access$902(Lcom/perm/kate/FaveUsersFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 118
    check-cast p1, Ljava/util/ArrayList;

    .line 119
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 120
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/FaveUsersFragment$4;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v3}, Lcom/perm/kate/FaveUsersFragment;->access$300(Lcom/perm/kate/FaveUsersFragment;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->deleteFaveUsers(J)Z

    .line 121
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/FaveUsersFragment$4;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v3}, Lcom/perm/kate/FaveUsersFragment;->access$300(Lcom/perm/kate/FaveUsersFragment;)J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/perm/kate/db/DataHelper;->createFaveUsers(Ljava/util/ArrayList;J)V

    const-string v2, "fuf_recreateFaveUsers"

    .line 122
    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$4;->this$0:Lcom/perm/kate/FaveUsersFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 124
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$4;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v0}, Lcom/perm/kate/FaveUsersFragment;->access$600(Lcom/perm/kate/FaveUsersFragment;)V

    .line 125
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$4;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/perm/kate/FaveUsersFragment;->access$702(Lcom/perm/kate/FaveUsersFragment;I)I

    .line 126
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$4;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/perm/kate/FaveUsersFragment;->access$800(Lcom/perm/kate/FaveUsersFragment;I)V

    return-void
.end method
