.class Lcom/perm/kate/StoriesActivity$4;
.super Ljava/lang/Object;
.source "StoriesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/StoriesActivity;->selectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StoriesActivity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/StoriesActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/perm/kate/StoriesActivity$4;->this$0:Lcom/perm/kate/StoriesActivity;

    iput-object p2, p0, Lcom/perm/kate/StoriesActivity$4;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 179
    iget-object p1, p0, Lcom/perm/kate/StoriesActivity$4;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/StoriesActivity$4;->this$0:Lcom/perm/kate/StoriesActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/perm/kate/VideoUploadActivity;->getUriFromGallery(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 188
    iget-object p1, p0, Lcom/perm/kate/StoriesActivity$4;->this$0:Lcom/perm/kate/StoriesActivity;

    const p2, 0x7f0f0497

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/StoriesActivity$4;->this$0:Lcom/perm/kate/StoriesActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZZZLjava/lang/Long;)V

    :goto_0
    return-void
.end method
