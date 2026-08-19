.class Lcom/perm/kate/FaveGroupsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "FaveGroupsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveGroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveGroupsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$2;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 87
    iget-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$2;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 75
    check-cast p1, Ljava/util/ArrayList;

    .line 76
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 77
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/FaveGroupsFragment$2;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-static {v3}, Lcom/perm/kate/FaveGroupsFragment;->access$100(Lcom/perm/kate/FaveGroupsFragment;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->deleteFaveGroups(J)Z

    .line 78
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/FaveGroupsFragment$2;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-static {v3}, Lcom/perm/kate/FaveGroupsFragment;->access$100(Lcom/perm/kate/FaveGroupsFragment;)J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/perm/kate/db/DataHelper;->createFaveGroups(Ljava/util/ArrayList;J)V

    const-string p1, "af_recreateFaveGroups"

    .line 79
    invoke-static {v0, v1, p1}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$2;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 81
    iget-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$2;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveGroupsFragment;->access$200(Lcom/perm/kate/FaveGroupsFragment;)V

    return-void
.end method
