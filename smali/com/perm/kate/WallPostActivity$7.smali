.class Lcom/perm/kate/WallPostActivity$7;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallPostActivity;->createAttachVideoDialog()V
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
    .line 657
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$7;->this$0:Lcom/perm/kate/WallPostActivity;

    iput-object p2, p0, Lcom/perm/kate/WallPostActivity$7;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 660
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$7;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 671
    :goto_0
    return-void

    .line 662
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$7;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/WallPostActivity;->access$1800(Lcom/perm/kate/WallPostActivity;Z)V

    goto :goto_0

    .line 665
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$7;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/WallPostActivity;->access$1700(Lcom/perm/kate/WallPostActivity;Z)V

    goto :goto_0

    .line 668
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$7;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/WallPostActivity;->access$1800(Lcom/perm/kate/WallPostActivity;Z)V

    goto :goto_0

    .line 660
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
