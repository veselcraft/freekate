.class Lcom/perm/kate/NewCommentActivity$9;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewCommentActivity;->createAddAttachmentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    iput-object p2, p0, Lcom/perm/kate/NewCommentActivity$9;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 340
    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$200(Lcom/perm/kate/NewCommentActivity;)I

    move-result v0

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v1, v4, v0, v2}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    :goto_1
    return-void

    :cond_0
    move v0, v3

    .line 340
    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$9;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 344
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v4}, Lcom/perm/kate/NewCommentActivity;->access$300(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    move v4, v2

    :goto_2
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v3}, Lcom/perm/kate/NewCommentActivity;->access$300(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object v5

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZZZLjava/lang/Long;)V

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    .line 347
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$1300(Lcom/perm/kate/NewCommentActivity;)V

    goto :goto_1

    .line 350
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$1400(Lcom/perm/kate/NewCommentActivity;)V

    goto :goto_1

    .line 353
    :pswitch_4
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$300(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gez v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$1500(Lcom/perm/kate/NewCommentActivity;)V

    goto :goto_1

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0, v3}, Lcom/perm/kate/NewCommentActivity;->access$1600(Lcom/perm/kate/NewCommentActivity;Z)V

    goto :goto_1

    .line 342
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
