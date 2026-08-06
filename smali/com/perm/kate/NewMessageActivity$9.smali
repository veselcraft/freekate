.class Lcom/perm/kate/NewMessageActivity$9;
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
    .param p1, "this$0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$9;->this$0:Lcom/perm/kate/NewMessageActivity;

    iput-object p2, p0, Lcom/perm/kate/NewMessageActivity$9;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 551
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$9;->this$0:Lcom/perm/kate/NewMessageActivity;

    sget-object v3, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, v3, v4, v2}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$9;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 555
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$9;->this$0:Lcom/perm/kate/NewMessageActivity;

    move v3, v2

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZZZLjava/lang/Long;)V

    goto :goto_0

    .line 558
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$9;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$1400(Lcom/perm/kate/NewMessageActivity;)V

    goto :goto_0

    .line 561
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$9;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$1500(Lcom/perm/kate/NewMessageActivity;)V

    goto :goto_0

    .line 564
    :pswitch_3
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$9;->this$0:Lcom/perm/kate/NewMessageActivity;

    const-class v1, Lcom/perm/kate/PaintActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    .local v6, "intent_graffiti":Landroid/content/Intent;
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$9;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v6, v1}, Lcom/perm/kate/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 568
    .end local v6    # "intent_graffiti":Landroid/content/Intent;
    :pswitch_4
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$9;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$1600(Lcom/perm/kate/NewMessageActivity;)V

    goto :goto_0

    .line 571
    :pswitch_5
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$9;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$1700(Lcom/perm/kate/NewMessageActivity;)V

    goto :goto_0

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
