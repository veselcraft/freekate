.class Lcom/perm/kate/GroupActivity$27;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->showEditOptionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 875
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$27;->this$0:Lcom/perm/kate/GroupActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupActivity$27;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 878
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$27;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 898
    :goto_0
    :pswitch_0
    return-void

    .line 880
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$27;->this$0:Lcom/perm/kate/GroupActivity;

    move v3, v2

    move v4, v2

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZZZLjava/lang/Long;)V

    goto :goto_0

    .line 883
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$27;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$2500(Lcom/perm/kate/GroupActivity;)V

    goto :goto_0

    .line 886
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$27;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$2600(Lcom/perm/kate/GroupActivity;)V

    goto :goto_0

    .line 889
    :pswitch_4
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$27;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$2700(Lcom/perm/kate/GroupActivity;)V

    goto :goto_0

    .line 892
    :pswitch_5
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$27;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$2800(Lcom/perm/kate/GroupActivity;)V

    goto :goto_0

    .line 895
    :pswitch_6
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$27;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$2900(Lcom/perm/kate/GroupActivity;)V

    goto :goto_0

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
