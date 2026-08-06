.class Lcom/perm/kate/WallPostActivity$5;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallPostActivity;->createAttachAudioDialog()V
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
    .line 592
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$5;->this$0:Lcom/perm/kate/WallPostActivity;

    iput-object p2, p0, Lcom/perm/kate/WallPostActivity$5;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 595
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$5;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 606
    :goto_0
    :pswitch_0
    return-void

    .line 597
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$5;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/WallPostActivity;->access$1600(Lcom/perm/kate/WallPostActivity;Z)V

    goto :goto_0

    .line 600
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$5;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/WallPostActivity;->access$1700(Lcom/perm/kate/WallPostActivity;Z)V

    goto :goto_0

    .line 603
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$5;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/WallPostActivity;->access$1600(Lcom/perm/kate/WallPostActivity;Z)V

    goto :goto_0

    .line 595
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
