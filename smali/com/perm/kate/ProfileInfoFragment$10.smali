.class Lcom/perm/kate/ProfileInfoFragment$10;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileInfoFragment;->showOptionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$10;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iput-object p2, p0, Lcom/perm/kate/ProfileInfoFragment$10;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 643
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$10;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 654
    :goto_0
    return-void

    .line 645
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$10;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$10;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZZZLjava/lang/Long;)V

    goto :goto_0

    .line 648
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$10;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileInfoFragment;->access$700(Lcom/perm/kate/ProfileInfoFragment;)V

    goto :goto_0

    .line 651
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$10;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$10;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v1}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/ProfileInfoFragment;->showEditProfileAcivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
