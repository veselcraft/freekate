.class Lcom/perm/kate/GroupsFragment$14$1;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupsFragment$14;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GroupsFragment$14;

.field final synthetic val$group_id:Ljava/lang/Long;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment$14;Ljava/util/ArrayList;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/GroupsFragment$14;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$14$1;->this$1:Lcom/perm/kate/GroupsFragment$14;

    iput-object p2, p0, Lcom/perm/kate/GroupsFragment$14$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/GroupsFragment$14$1;->val$group_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$14$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$14$1;->val$group_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$14$1;->this$1:Lcom/perm/kate/GroupsFragment$14;

    iget-object v2, v2, Lcom/perm/kate/GroupsFragment$14;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->copyGroupLink(JLandroid/content/Context;)V

    goto :goto_0

    .line 364
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$14$1;->this$1:Lcom/perm/kate/GroupsFragment$14;

    iget-object v0, v0, Lcom/perm/kate/GroupsFragment$14;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v1, p0, Lcom/perm/kate/GroupsFragment$14$1;->val$group_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/perm/kate/GroupsFragment;->access$1900(Lcom/perm/kate/GroupsFragment;J)V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
