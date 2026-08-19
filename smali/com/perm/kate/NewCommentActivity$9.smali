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

    .line 360
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    iput-object p2, p0, Lcom/perm/kate/NewCommentActivity$9;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 363
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v1}, Lcom/perm/kate/NewCommentActivity;->access$600(Lcom/perm/kate/NewCommentActivity;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1, v2}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 365
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$9;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/16 p2, 0x6a

    const-wide/16 v0, 0x0

    if-eq p1, p2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 373
    :pswitch_0
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1}, Lcom/perm/kate/NewCommentActivity;->access$1500(Lcom/perm/kate/NewCommentActivity;)V

    goto :goto_2

    .line 370
    :pswitch_1
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1}, Lcom/perm/kate/NewCommentActivity;->access$1400(Lcom/perm/kate/NewCommentActivity;)V

    goto :goto_2

    .line 367
    :pswitch_2
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 p2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {p1}, Lcom/perm/kate/NewCommentActivity;->access$300(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-gez v8, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$300(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p1

    move-object v1, p2

    move v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZZZLjava/lang/Long;)V

    goto :goto_2

    .line 376
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1}, Lcom/perm/kate/NewCommentActivity;->access$300(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    .line 377
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1}, Lcom/perm/kate/NewCommentActivity;->access$1600(Lcom/perm/kate/NewCommentActivity;)V

    goto :goto_2

    .line 379
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$9;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1, v3}, Lcom/perm/kate/NewCommentActivity;->access$1700(Lcom/perm/kate/NewCommentActivity;Z)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
