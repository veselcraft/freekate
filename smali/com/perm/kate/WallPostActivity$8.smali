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

    .line 701
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    iput-object p2, p0, Lcom/perm/kate/WallPostActivity$8;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 704
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x6b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x6d

    if-eq p1, v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    sget-object v2, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2, v0, p2}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 743
    :pswitch_1
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1}, Lcom/perm/kate/WallPostActivity;->access$2700(Lcom/perm/kate/WallPostActivity;)V

    goto/16 :goto_1

    .line 740
    :pswitch_2
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1}, Lcom/perm/kate/WallPostActivity;->access$2600(Lcom/perm/kate/WallPostActivity;)V

    goto/16 :goto_1

    .line 737
    :pswitch_3
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1}, Lcom/perm/kate/WallPostActivity;->access$2500(Lcom/perm/kate/WallPostActivity;)V

    goto/16 :goto_1

    .line 731
    :pswitch_4
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1}, Lcom/perm/kate/WallPostActivity;->access$500(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide p1

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    .line 732
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1}, Lcom/perm/kate/WallPostActivity;->access$2300(Lcom/perm/kate/WallPostActivity;)V

    goto :goto_1

    .line 734
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/WallPostActivity;->access$2400(Lcom/perm/kate/WallPostActivity;Z)V

    goto :goto_1

    .line 725
    :pswitch_5
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 726
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    new-array v2, p2, [Ljava/lang/String;

    aput-object v1, v2, v0

    invoke-static {p1, v2, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 728
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1}, Lcom/perm/kate/WallPostActivity;->access$2200(Lcom/perm/kate/WallPostActivity;)V

    goto :goto_1

    .line 720
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    const-class v0, Lcom/perm/kate/PaintActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 721
    iget-object p2, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    const/16 v0, 0x8

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 717
    :pswitch_7
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1}, Lcom/perm/kate/WallPostActivity;->access$2100(Lcom/perm/kate/WallPostActivity;)V

    goto :goto_1

    .line 714
    :pswitch_8
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1}, Lcom/perm/kate/WallPostActivity;->access$2000(Lcom/perm/kate/WallPostActivity;)V

    goto :goto_1

    .line 711
    :pswitch_9
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {p1}, Lcom/perm/kate/WallPostActivity;->access$500(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-gez v8, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$8;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$500(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, p1

    move-object v1, v3

    move v2, v4

    move v3, v5

    move v4, p2

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZZZLjava/lang/Long;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
