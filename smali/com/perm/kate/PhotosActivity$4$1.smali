.class Lcom/perm/kate/PhotosActivity$4$1;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotosActivity$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotosActivity$4;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$photo:Lcom/perm/kate/api/Photo;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity$4;Ljava/util/ArrayList;Lcom/perm/kate/api/Photo;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$4$1;->this$1:Lcom/perm/kate/PhotosActivity$4;

    iput-object p2, p0, Lcom/perm/kate/PhotosActivity$4$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/PhotosActivity$4$1;->val$photo:Lcom/perm/kate/api/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 299
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$4$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 328
    :pswitch_1
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$4$1;->this$1:Lcom/perm/kate/PhotosActivity$4;

    iget-object p1, p1, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$4$1;->val$photo:Lcom/perm/kate/api/Photo;

    iput-object p2, p1, Lcom/perm/kate/PhotosActivity;->photo_move:Lcom/perm/kate/api/Photo;

    const p2, 0x7f0f0431

    .line 329
    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    goto/16 :goto_0

    .line 325
    :pswitch_2
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$4$1;->this$1:Lcom/perm/kate/PhotosActivity$4;

    iget-object p1, p1, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$4$1;->val$photo:Lcom/perm/kate/api/Photo;

    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Lcom/perm/kate/PhotosActivity;->access$200(Lcom/perm/kate/PhotosActivity;Lcom/perm/kate/api/Photo;I)V

    goto :goto_0

    .line 322
    :pswitch_3
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$4$1;->val$photo:Lcom/perm/kate/api/Photo;

    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$4$1;->this$1:Lcom/perm/kate/PhotosActivity$4;

    iget-object p2, p2, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->copyPhotoLink(Lcom/perm/kate/api/Photo;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :pswitch_4
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$4$1;->this$1:Lcom/perm/kate/PhotosActivity$4;

    iget-object p1, p1, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$4$1;->val$photo:Lcom/perm/kate/api/Photo;

    invoke-static {p1, p2}, Lcom/perm/kate/PhotosActivity;->access$300(Lcom/perm/kate/PhotosActivity;Lcom/perm/kate/api/Photo;)V

    goto :goto_0

    .line 316
    :pswitch_5
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$4$1;->this$1:Lcom/perm/kate/PhotosActivity$4;

    iget-object p1, p1, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$4$1;->val$photo:Lcom/perm/kate/api/Photo;

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/perm/kate/PhotosActivity;->access$200(Lcom/perm/kate/PhotosActivity;Lcom/perm/kate/api/Photo;I)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x0

    .line 313
    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$4$1;->val$photo:Lcom/perm/kate/api/Photo;

    iget-wide v0, p2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$4$1;->val$photo:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$4$1;->this$1:Lcom/perm/kate/PhotosActivity$4;

    iget-object v2, v2, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto :goto_0

    .line 301
    :pswitch_7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 302
    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$4$1;->this$1:Lcom/perm/kate/PhotosActivity$4;

    iget-object p2, p2, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    const-class v0, Lcom/perm/kate/LikesActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 303
    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$4$1;->val$photo:Lcom/perm/kate/api/Photo;

    iget-wide v0, p2, Lcom/perm/kate/api/Photo;->pid:J

    const-string p2, "com.perm.kate.item_id"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 306
    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$4$1;->val$photo:Lcom/perm/kate/api/Photo;

    iget-object p2, p2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string p2, "com.perm.kate.owner_id"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "com.perm.kate.item_type"

    const-string v0, "photo"

    .line 307
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$4$1;->this$1:Lcom/perm/kate/PhotosActivity$4;

    iget-object p2, p2, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
