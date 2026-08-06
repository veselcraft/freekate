.class Lcom/perm/kate/EditChatActivity$20;
.super Ljava/lang/Object;
.source "EditChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditChatActivity;->showRequestPhotoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditChatActivity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditChatActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$20;->this$0:Lcom/perm/kate/EditChatActivity;

    iput-object p2, p0, Lcom/perm/kate/EditChatActivity$20;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$20;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 420
    :goto_0
    return-void

    .line 410
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$20;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->chooseFromGallery(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 413
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$20;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->getFromCamera(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 416
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$20;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$2300(Lcom/perm/kate/EditChatActivity;)V

    goto :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
