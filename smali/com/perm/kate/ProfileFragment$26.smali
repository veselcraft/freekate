.class Lcom/perm/kate/ProfileFragment$26;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileFragment;->showOptionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$26;->this$0:Lcom/perm/kate/ProfileFragment;

    iput-object p2, p0, Lcom/perm/kate/ProfileFragment$26;->val$menuItems:Ljava/util/ArrayList;

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

    .line 1117
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$26;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 1128
    :goto_0
    return-void

    .line 1119
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$26;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$26;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZZZLjava/lang/Long;)V

    goto :goto_0

    .line 1122
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$26;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$2400(Lcom/perm/kate/ProfileFragment;)V

    goto :goto_0

    .line 1125
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$26;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$26;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v1}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/ProfileFragment;->showEditProfileAcivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 1117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
