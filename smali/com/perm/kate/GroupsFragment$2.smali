.class Lcom/perm/kate/GroupsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "GroupsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$2;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 157
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$2;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/GroupsFragment;->access$302(Lcom/perm/kate/GroupsFragment;I)I

    .line 158
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$2;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7

    .line 136
    check-cast p1, Ljava/util/ArrayList;

    .line 137
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$2;->this$0:Lcom/perm/kate/GroupsFragment;

    iget v1, v0, Lcom/perm/kate/GroupsFragment;->offset:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/perm/kate/GroupsFragment;->offset:I

    .line 138
    invoke-static {p1}, Lcom/perm/utils/GroupInvite;->alreadyInGroup(Ljava/util/Collection;)Z

    move-result v0

    .line 139
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 140
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/GroupsFragment$2;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v4}, Lcom/perm/kate/GroupsFragment;->access$100(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/perm/kate/db/DataHelper;->createUserGroups(Ljava/util/ArrayList;JZ)V

    const-string v3, "gf_createUserGroups"

    .line 141
    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-double v1, p1

    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$2;->this$0:Lcom/perm/kate/GroupsFragment;

    iget v3, p1, Lcom/perm/kate/GroupsFragment;->page_size:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    const/4 v5, 0x0

    cmpl-double v6, v1, v3

    if-ltz v6, :cond_0

    .line 143
    invoke-static {p1, v5}, Lcom/perm/kate/GroupsFragment;->access$302(Lcom/perm/kate/GroupsFragment;I)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 145
    invoke-static {p1, v1}, Lcom/perm/kate/GroupsFragment;->access$302(Lcom/perm/kate/GroupsFragment;I)I

    .line 146
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$2;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/GroupsFragment;->access$400(Lcom/perm/kate/GroupsFragment;)V

    .line 147
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$2;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {p1, v5}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 148
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$2;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p1, v0}, Lcom/perm/kate/GroupsFragment;->access$500(Lcom/perm/kate/GroupsFragment;Z)V

    .line 151
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$2;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/GroupsFragment;->access$600(Lcom/perm/kate/GroupsFragment;)V

    return-void
.end method
