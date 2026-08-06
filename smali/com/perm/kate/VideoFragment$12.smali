.class Lcom/perm/kate/VideoFragment$12;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoFragment;->uploadClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$12;->this$0:Lcom/perm/kate/VideoFragment;

    iput-object p2, p0, Lcom/perm/kate/VideoFragment$12;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$12;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 527
    :goto_0
    return-void

    .line 514
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$12;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/VideoFragment$12;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0, v1}, Lcom/perm/kate/VideoUploadActivity;->getUriFromGallery(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 517
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$12;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0}, Lcom/perm/kate/VideoFragment;->access$1200(Lcom/perm/kate/VideoFragment;)V

    goto :goto_0

    .line 520
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$12;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0}, Lcom/perm/kate/VideoFragment;->access$1300(Lcom/perm/kate/VideoFragment;)V

    goto :goto_0

    .line 523
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$12;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0}, Lcom/perm/kate/VideoFragment;->access$1400(Lcom/perm/kate/VideoFragment;)V

    goto :goto_0

    .line 512
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
