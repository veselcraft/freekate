.class Lcom/perm/kate/WallPostActivity$9;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallPostActivity;->createAttachDocsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 768
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$9;->this$0:Lcom/perm/kate/WallPostActivity;

    iput-object p2, p0, Lcom/perm/kate/WallPostActivity$9;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 771
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$9;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 779
    :goto_0
    return-void

    .line 773
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$9;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/WallPostActivity;->access$2300(Lcom/perm/kate/WallPostActivity;Z)V

    goto :goto_0

    .line 776
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$9;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/WallPostActivity;->access$2300(Lcom/perm/kate/WallPostActivity;Z)V

    goto :goto_0

    .line 771
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
