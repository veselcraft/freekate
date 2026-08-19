.class Lcom/perm/kate/GroupsFragment$11$1;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GroupsFragment$11;

.field final synthetic val$group_id:Ljava/lang/Long;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment$11;Ljava/util/ArrayList;Ljava/lang/Long;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$11$1;->this$1:Lcom/perm/kate/GroupsFragment$11;

    iput-object p2, p0, Lcom/perm/kate/GroupsFragment$11$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/GroupsFragment$11$1;->val$group_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 351
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$11$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$11$1;->this$1:Lcom/perm/kate/GroupsFragment$11;

    iget-object p1, p1, Lcom/perm/kate/GroupsFragment$11;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object p2, p0, Lcom/perm/kate/GroupsFragment$11$1;->val$group_id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/perm/kate/GroupsFragment;->access$1700(Lcom/perm/kate/GroupsFragment;J)V

    goto :goto_0

    .line 353
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$11$1;->val$group_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$11$1;->this$1:Lcom/perm/kate/GroupsFragment$11;

    iget-object v0, v0, Lcom/perm/kate/GroupsFragment$11;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->copyGroupLink(JLandroid/content/Context;)V

    :goto_0
    return-void
.end method
