.class Lcom/perm/kate/MessageThreadFragment$32;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment;->createAddAttachmentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 1676
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$32;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 1679
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/MenuItemDetails;

    iget v0, v2, Lcom/perm/kate/MenuItemDetails;->code:I

    .line 1680
    .local v0, "code":I
    const/16 v2, 0x6a

    if-eq v0, v2, :cond_0

    .line 1681
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/BaseActivity;

    sget-object v3, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v5, v4}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1735
    :goto_0
    return-void

    .line 1684
    :cond_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1686
    :sswitch_0
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2, v3}, Lcom/perm/kate/photoupload/PhotoChooser;->chooseFromGallery(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    .line 1687
    const-string v2, "photo_gallery"

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Ljava/lang/String;)V

    goto :goto_0

    .line 1690
    :sswitch_1
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2, v3}, Lcom/perm/kate/photoupload/PhotoChooser;->getFromCamera(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    .line 1691
    const-string v2, "photo_camera"

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Ljava/lang/String;)V

    goto :goto_0

    .line 1694
    :sswitch_2
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2, v3}, Lcom/perm/kate/photoupload/PhotoChooser;->chooseFromInternalGallery(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    .line 1695
    const-string v2, "photo_gallery"

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Ljava/lang/String;)V

    goto :goto_0

    .line 1698
    :sswitch_3
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v4, 0x0

    invoke-static {v2, v3, v5, v4}, Lcom/perm/kate/photoupload/PhotoChooser;->startAlbumsActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZLjava/lang/Long;)V

    .line 1699
    const-string v2, "photo_albums"

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Ljava/lang/String;)V

    goto :goto_0

    .line 1702
    :sswitch_4
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->showPhotoLinkDialog(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    .line 1703
    const-string v2, "photo_link"

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Ljava/lang/String;)V

    goto :goto_0

    .line 1706
    :sswitch_5
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$3100(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1707
    const-string v2, "audio"

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Ljava/lang/String;)V

    goto :goto_0

    .line 1710
    :sswitch_6
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$3200(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1711
    const-string v2, "video"

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Ljava/lang/String;)V

    goto :goto_0

    .line 1714
    :sswitch_7
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/perm/kate/PaintActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1715
    .local v1, "intent_graffiti":Landroid/content/Intent;
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/16 v3, 0x8

    invoke-virtual {v2, v1, v3}, Lcom/perm/kate/MessageThreadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1716
    const-string v2, "graffiti"

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1719
    .end local v1    # "intent_graffiti":Landroid/content/Intent;
    :sswitch_8
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$3300(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1720
    const-string v2, "geo"

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1723
    :sswitch_9
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$3400(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1724
    const-string v2, "doc"

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1727
    :sswitch_a
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$3500(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1728
    const-string v2, "list"

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1731
    :sswitch_b
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2400(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1732
    const-string v2, "voice"

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1684
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6a -> :sswitch_a
        0x6b -> :sswitch_b
    .end sparse-switch
.end method
