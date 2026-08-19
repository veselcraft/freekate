.class Lcom/perm/kate/GroupsFragment$16;
.super Lcom/perm/kate/session/Callback;
.source "GroupsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$16;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 546
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 547
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$16;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/GroupsFragment;->access$302(Lcom/perm/kate/GroupsFragment;I)I

    .line 548
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$16;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8

    .line 533
    check-cast p1, Ljava/util/ArrayList;

    .line 534
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$16;->this$0:Lcom/perm/kate/GroupsFragment;

    iget v1, v0, Lcom/perm/kate/GroupsFragment;->offset:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/perm/kate/GroupsFragment;->offset:I

    .line 535
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/GroupsFragment$16;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v1}, Lcom/perm/kate/GroupsFragment;->access$100(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->createUserGroups(Ljava/util/ArrayList;JZ)V

    .line 536
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-double v0, p1

    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$16;->this$0:Lcom/perm/kate/GroupsFragment;

    iget v2, p1, Lcom/perm/kate/GroupsFragment;->page_size:I

    int-to-double v4, v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_0

    .line 537
    invoke-static {p1, v3}, Lcom/perm/kate/GroupsFragment;->access$302(Lcom/perm/kate/GroupsFragment;I)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 539
    invoke-static {p1, v0}, Lcom/perm/kate/GroupsFragment;->access$302(Lcom/perm/kate/GroupsFragment;I)I

    .line 540
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$16;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/GroupsFragment;->access$400(Lcom/perm/kate/GroupsFragment;)V

    .line 541
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$16;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {p1, v3}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
