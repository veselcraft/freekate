.class Lcom/perm/kate/GroupsFragment$5;
.super Lcom/perm/kate/session/Callback;
.source "GroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 167
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/GroupsFragment;->access$502(Lcom/perm/kate/GroupsFragment;I)I

    .line 168
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupsFragment;->showProgressBar(Z)V

    .line 169
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 148
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 149
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    iget v3, v2, Lcom/perm/kate/GroupsFragment;->offset:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/perm/kate/GroupsFragment;->offset:I

    .line 150
    invoke-static {v0}, Lcom/perm/utils/GroupInvite;->alreadyInGroup(Ljava/util/Collection;)Z

    move-result v1

    .line 151
    .local v1, "user_in_kate_group":Z
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v3}, Lcom/perm/kate/GroupsFragment;->access$300(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/perm/kate/db/DataHelper;->createUserGroups(Ljava/util/ArrayList;JZ)V

    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    iget v4, v4, Lcom/perm/kate/GroupsFragment;->page_size:I

    int-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v2, v8}, Lcom/perm/kate/GroupsFragment;->access$502(Lcom/perm/kate/GroupsFragment;I)I

    .line 156
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v2}, Lcom/perm/kate/GroupsFragment;->access$600(Lcom/perm/kate/GroupsFragment;)V

    .line 157
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v2, v8}, Lcom/perm/kate/GroupsFragment;->showProgressBar(Z)V

    .line 158
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v2, v1}, Lcom/perm/kate/GroupsFragment;->access$700(Lcom/perm/kate/GroupsFragment;Z)V

    .line 161
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v2}, Lcom/perm/kate/GroupsFragment;->access$800(Lcom/perm/kate/GroupsFragment;)V

    .line 162
    return-void

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/perm/kate/GroupsFragment;->access$502(Lcom/perm/kate/GroupsFragment;I)I

    goto :goto_0
.end method
