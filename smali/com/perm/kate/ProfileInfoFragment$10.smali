.class Lcom/perm/kate/ProfileInfoFragment$10;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$10;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iput-object p2, p0, Lcom/perm/kate/ProfileInfoFragment$10;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 656
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$10;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$10;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/perm/kate/ProfileInfoFragment;->showEditProfileAcivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 661
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$10;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$700(Lcom/perm/kate/ProfileInfoFragment;)V

    goto :goto_0

    .line 658
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$10;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$10;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZZZLjava/lang/Long;)V

    :goto_0
    return-void
.end method
