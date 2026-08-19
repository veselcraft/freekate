.class Lcom/perm/kate/EditChatActivity$19;
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

    .line 436
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$19;->this$0:Lcom/perm/kate/EditChatActivity;

    iput-object p2, p0, Lcom/perm/kate/EditChatActivity$19;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 439
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$19;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    .line 447
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$19;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1}, Lcom/perm/kate/EditChatActivity;->access$2400(Lcom/perm/kate/EditChatActivity;)V

    return-void

    .line 444
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$19;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/photoupload/PhotoChooser;->getFromCamera(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void

    .line 441
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$19;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/photoupload/PhotoChooser;->chooseFromGallery(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
