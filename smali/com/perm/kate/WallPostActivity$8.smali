.class Lcom/perm/kate/WallPostActivity$8;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallPostActivity;->createAddAttachmentDialog()V
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
    .line 712
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    iput-object p2, p0, Lcom/perm/kate/WallPostActivity$8;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 715
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v6, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    .line 716
    .local v6, "code":I
    const/16 v0, 0x6b

    if-eq v6, v0, :cond_0

    const/16 v0, 0x6d

    if-eq v6, v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1, v4, v2}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    :goto_0
    return-void

    .line 720
    :cond_0
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 722
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v3}, Lcom/perm/kate/WallPostActivity;->access$500(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v8

    cmp-long v3, v8, v10

    if-gez v3, :cond_1

    move v4, v2

    :cond_1
    iget-object v3, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v3}, Lcom/perm/kate/WallPostActivity;->access$500(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZZZLjava/lang/Long;)V

    goto :goto_0

    .line 725
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$1900(Lcom/perm/kate/WallPostActivity;)V

    goto :goto_0

    .line 728
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$2000(Lcom/perm/kate/WallPostActivity;)V

    goto :goto_0

    .line 731
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    const-class v1, Lcom/perm/kate/PaintActivity;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 732
    .local v7, "intent_graffiti":Landroid/content/Intent;
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v7, v1}, Lcom/perm/kate/WallPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 735
    .end local v7    # "intent_graffiti":Landroid/content/Intent;
    :pswitch_5
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$2100(Lcom/perm/kate/WallPostActivity;)V

    goto :goto_0

    .line 738
    :pswitch_6
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$500(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-gez v0, :cond_2

    .line 739
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$2200(Lcom/perm/kate/WallPostActivity;)V

    goto :goto_0

    .line 741
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0, v4}, Lcom/perm/kate/WallPostActivity;->access$2300(Lcom/perm/kate/WallPostActivity;Z)V

    goto :goto_0

    .line 744
    :pswitch_7
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$2400(Lcom/perm/kate/WallPostActivity;)V

    goto :goto_0

    .line 747
    :pswitch_8
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$2500(Lcom/perm/kate/WallPostActivity;)V

    goto :goto_0

    .line 750
    :pswitch_9
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$2600(Lcom/perm/kate/WallPostActivity;)V

    goto :goto_0

    .line 720
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
