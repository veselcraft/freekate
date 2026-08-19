.class Lcom/perm/kate/GroupActivity$28;
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

    .line 929
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$28;->this$0:Lcom/perm/kate/GroupActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupActivity$28;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 932
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$28;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/16 p2, 0x8

    if-eq p1, p2, :cond_2

    const/16 p2, 0xb

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 949
    :pswitch_0
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$28;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$3000(Lcom/perm/kate/GroupActivity;)V

    goto :goto_0

    .line 943
    :pswitch_1
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$28;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$2800(Lcom/perm/kate/GroupActivity;)V

    goto :goto_0

    .line 940
    :pswitch_2
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$28;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$2700(Lcom/perm/kate/GroupActivity;)V

    goto :goto_0

    .line 937
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$28;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$2600(Lcom/perm/kate/GroupActivity;)V

    goto :goto_0

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$28;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZZZLjava/lang/Long;)V

    goto :goto_0

    .line 946
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$28;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$2900(Lcom/perm/kate/GroupActivity;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
