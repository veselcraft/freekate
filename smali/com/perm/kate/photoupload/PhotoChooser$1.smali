.class Lcom/perm/kate/photoupload/PhotoChooser$1;
.super Ljava/lang/Object;
.source "PhotoChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$owner_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/Long;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$fragment:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$owner_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 71
    iget-object p1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->showPhotoLinkDialog(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const-string p1, "from site"

    .line 94
    invoke-static {p1}, Lcom/perm/kate/photoupload/PhotoChooser;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$fragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$owner_id:Ljava/lang/Long;

    invoke-static {p1, v0, p2, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->startAlbumsActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZLjava/lang/Long;)V

    const-string p1, "group albums"

    .line 90
    invoke-static {p1}, Lcom/perm/kate/photoupload/PhotoChooser;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$fragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->startAlbumsActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZLjava/lang/Long;)V

    const-string p1, "my albums"

    .line 86
    invoke-static {p1}, Lcom/perm/kate/photoupload/PhotoChooser;->access$000(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 81
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-static {p1, p2}, Lcom/perm/kate/photoupload/PhotoChooser;->chooseFromInternalGallery(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const-string p1, "internal gallery"

    .line 82
    invoke-static {p1}, Lcom/perm/kate/photoupload/PhotoChooser;->access$000(Ljava/lang/String;)V

    return-void

    .line 77
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-static {p1, p2}, Lcom/perm/kate/photoupload/PhotoChooser;->getFromCamera(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const-string p1, "camera"

    .line 78
    invoke-static {p1}, Lcom/perm/kate/photoupload/PhotoChooser;->access$000(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/perm/kate/photoupload/PhotoChooser$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-static {p1, p2}, Lcom/perm/kate/photoupload/PhotoChooser;->chooseFromGallery(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const-string p1, "gallery"

    .line 74
    invoke-static {p1}, Lcom/perm/kate/photoupload/PhotoChooser;->access$000(Ljava/lang/String;)V

    return-void
.end method
