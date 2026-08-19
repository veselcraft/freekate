.class Lcom/perm/kate/MessageThreadFragment$56;
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

    .line 2976
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$56;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$56;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2979
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$56;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2987
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$56;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$56;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1, p2}, Lcom/perm/kate/VideoUploadActivity;->getUriFromGallery(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 2984
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$56;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1, p2}, Lcom/perm/kate/MessageThreadFragment;->access$6500(Lcom/perm/kate/MessageThreadFragment;Z)V

    goto :goto_0

    .line 2981
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$56;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$6600(Lcom/perm/kate/MessageThreadFragment;)V

    :goto_0
    return-void
.end method
