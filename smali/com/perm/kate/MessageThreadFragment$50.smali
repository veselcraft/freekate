.class Lcom/perm/kate/MessageThreadFragment$50;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 2687
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$50;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 2690
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$50;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x6a

    if-eq p1, v1, :cond_0

    .line 2692
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BaseActivity;

    sget-object v2, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2, p2, v0}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "photo_gallery"

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2745
    :pswitch_0
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$6000(Lcom/perm/kate/MessageThreadFragment;)V

    const-string p1, "poll"

    .line 2746
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2741
    :pswitch_1
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$3900(Lcom/perm/kate/MessageThreadFragment;)V

    const-string p1, "voice"

    .line 2742
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4000(Ljava/lang/String;)V

    goto :goto_0

    .line 2737
    :pswitch_2
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$5900(Lcom/perm/kate/MessageThreadFragment;)V

    const-string p1, "list"

    .line 2738
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4000(Ljava/lang/String;)V

    goto :goto_0

    .line 2733
    :pswitch_3
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$5800(Lcom/perm/kate/MessageThreadFragment;)V

    const-string p1, "doc"

    .line 2734
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4000(Ljava/lang/String;)V

    goto :goto_0

    .line 2730
    :pswitch_4
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$5700(Lcom/perm/kate/MessageThreadFragment;)V

    goto :goto_0

    .line 2725
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/perm/kate/PaintActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2726
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/16 v0, 0x8

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const-string p1, "graffiti"

    .line 2727
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4000(Ljava/lang/String;)V

    goto :goto_0

    .line 2721
    :pswitch_6
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$5600(Lcom/perm/kate/MessageThreadFragment;)V

    const-string p1, "video"

    .line 2722
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4000(Ljava/lang/String;)V

    goto :goto_0

    .line 2717
    :pswitch_7
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$5500(Lcom/perm/kate/MessageThreadFragment;)V

    const-string p1, "audio"

    .line 2718
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4000(Ljava/lang/String;)V

    goto :goto_0

    .line 2713
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->showPhotoLinkDialog(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const-string p1, "photo_link"

    .line 2714
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4000(Ljava/lang/String;)V

    goto :goto_0

    .line 2709
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->startAlbumsActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZLjava/lang/Long;)V

    const-string p1, "photo_albums"

    .line 2710
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4000(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 2705
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1, p2}, Lcom/perm/kate/photoupload/PhotoChooser;->chooseFromInternalGallery(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 2706
    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$4000(Ljava/lang/String;)V

    return-void

    .line 2701
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1, p2}, Lcom/perm/kate/photoupload/PhotoChooser;->getFromCamera(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const-string p1, "photo_camera"

    .line 2702
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4000(Ljava/lang/String;)V

    return-void

    .line 2697
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$50;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1, p2}, Lcom/perm/kate/photoupload/PhotoChooser;->chooseFromGallery(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 2698
    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$4000(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
