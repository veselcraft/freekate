.class Lcom/perm/kate/VideoFragment$12;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$12;->this$0:Lcom/perm/kate/VideoFragment;

    iput-object p2, p0, Lcom/perm/kate/VideoFragment$12;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 511
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$12;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return-void

    .line 522
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$12;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {p1}, Lcom/perm/kate/VideoFragment;->access$1400(Lcom/perm/kate/VideoFragment;)V

    return-void

    .line 519
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$12;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {p1}, Lcom/perm/kate/VideoFragment;->access$1300(Lcom/perm/kate/VideoFragment;)V

    return-void

    .line 516
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$12;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {p1}, Lcom/perm/kate/VideoFragment;->access$1200(Lcom/perm/kate/VideoFragment;)V

    return-void

    .line 513
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$12;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/VideoFragment$12;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {p1, p2}, Lcom/perm/kate/VideoUploadActivity;->getUriFromGallery(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
