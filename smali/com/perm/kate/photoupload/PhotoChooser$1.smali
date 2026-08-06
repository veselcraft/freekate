.class final Lcom/perm/kate/photoupload/PhotoChooser$1;
.super Ljava/lang/Object;
.source "PhotoChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZZZLjava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$owner_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-object p4, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$owner_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->chooseFromGallery(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    .line 68
    const-string v0, "gallery"

    invoke-static {v0}, Lcom/perm/kate/photoupload/PhotoChooser;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->getFromCamera(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    .line 72
    const-string v0, "camera"

    invoke-static {v0}, Lcom/perm/kate/photoupload/PhotoChooser;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->chooseFromInternalGallery(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    .line 76
    const-string v0, "internal gallery"

    invoke-static {v0}, Lcom/perm/kate/photoupload/PhotoChooser;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$fragment:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/photoupload/PhotoChooser;->startAlbumsActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZLjava/lang/Long;)V

    .line 80
    const-string v0, "my albums"

    invoke-static {v0}, Lcom/perm/kate/photoupload/PhotoChooser;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_4
    iget-object v0, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$fragment:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$owner_id:Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/photoupload/PhotoChooser;->startAlbumsActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZLjava/lang/Long;)V

    .line 84
    const-string v0, "group albums"

    invoke-static {v0}, Lcom/perm/kate/photoupload/PhotoChooser;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_5
    iget-object v0, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->showPhotoLinkDialog(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    .line 88
    const-string v0, "from site"

    invoke-static {v0}, Lcom/perm/kate/photoupload/PhotoChooser;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
