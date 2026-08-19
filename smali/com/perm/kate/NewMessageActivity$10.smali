.class Lcom/perm/kate/NewMessageActivity$10;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewMessageActivity;->createAddAttachmentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMessageActivity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    iput-object p2, p0, Lcom/perm/kate/NewMessageActivity$10;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 593
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 595
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$10;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/16 p2, 0x6c

    if-eq p1, p2, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 616
    :pswitch_0
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMessageActivity;->access$1700(Lcom/perm/kate/NewMessageActivity;)V

    goto :goto_0

    .line 610
    :pswitch_1
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 611
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 613
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMessageActivity;->access$1600(Lcom/perm/kate/NewMessageActivity;)V

    goto :goto_0

    .line 606
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    const-class v0, Lcom/perm/kate/PaintActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 607
    iget-object p2, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/16 v0, 0x8

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 603
    :pswitch_3
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMessageActivity;->access$1500(Lcom/perm/kate/NewMessageActivity;)V

    goto :goto_0

    .line 600
    :pswitch_4
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMessageActivity;->access$1400(Lcom/perm/kate/NewMessageActivity;)V

    goto :goto_0

    .line 597
    :pswitch_5
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZZZLjava/lang/Long;)V

    goto :goto_0

    .line 619
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMessageActivity;->access$1800(Lcom/perm/kate/NewMessageActivity;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
