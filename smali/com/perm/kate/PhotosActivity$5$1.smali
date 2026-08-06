.class Lcom/perm/kate/PhotosActivity$5$1;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotosActivity$5;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotosActivity$5;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$photo:Lcom/perm/kate/api/Photo;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity$5;Ljava/util/ArrayList;Lcom/perm/kate/api/Photo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/PhotosActivity$5;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$5$1;->this$1:Lcom/perm/kate/PhotosActivity$5;

    iput-object p2, p0, Lcom/perm/kate/PhotosActivity$5$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/PhotosActivity$5$1;->val$photo:Lcom/perm/kate/api/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 295
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$5$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MenuItemDetails;

    iget v1, v1, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v1, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 297
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 298
    .local v0, "likes_intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$5$1;->this$1:Lcom/perm/kate/PhotosActivity$5;

    iget-object v1, v1, Lcom/perm/kate/PhotosActivity$5;->this$0:Lcom/perm/kate/PhotosActivity;

    const-class v2, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 299
    const-string v1, "com.perm.kate.item_id"

    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$5$1;->val$photo:Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 302
    const-string v1, "com.perm.kate.owner_id"

    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$5$1;->val$photo:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 303
    const-string v1, "com.perm.kate.item_type"

    const-string v2, "photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$5$1;->this$1:Lcom/perm/kate/PhotosActivity$5;

    iget-object v1, v1, Lcom/perm/kate/PhotosActivity$5;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v1, v0}, Lcom/perm/kate/PhotosActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 309
    .end local v0    # "likes_intent":Landroid/content/Intent;
    :pswitch_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$5$1;->val$photo:Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/PhotosActivity$5$1;->val$photo:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/perm/kate/PhotosActivity$5$1;->this$1:Lcom/perm/kate/PhotosActivity$5;

    iget-object v3, v3, Lcom/perm/kate/PhotosActivity$5;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v1, v2, v4, v5, v3}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto :goto_0

    .line 312
    :pswitch_2
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$5$1;->this$1:Lcom/perm/kate/PhotosActivity$5;

    iget-object v1, v1, Lcom/perm/kate/PhotosActivity$5;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$5$1;->val$photo:Lcom/perm/kate/api/Photo;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/PhotosActivity;->access$300(Lcom/perm/kate/PhotosActivity;Lcom/perm/kate/api/Photo;I)V

    goto :goto_0

    .line 315
    :pswitch_3
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$5$1;->this$1:Lcom/perm/kate/PhotosActivity$5;

    iget-object v1, v1, Lcom/perm/kate/PhotosActivity$5;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$5$1;->val$photo:Lcom/perm/kate/api/Photo;

    invoke-static {v1, v2}, Lcom/perm/kate/PhotosActivity;->access$400(Lcom/perm/kate/PhotosActivity;Lcom/perm/kate/api/Photo;)V

    goto :goto_0

    .line 318
    :pswitch_4
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$5$1;->val$photo:Lcom/perm/kate/api/Photo;

    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$5$1;->this$1:Lcom/perm/kate/PhotosActivity$5;

    iget-object v2, v2, Lcom/perm/kate/PhotosActivity$5;->this$0:Lcom/perm/kate/PhotosActivity;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->copyPhotoLink(Lcom/perm/kate/api/Photo;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :pswitch_5
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$5$1;->this$1:Lcom/perm/kate/PhotosActivity$5;

    iget-object v1, v1, Lcom/perm/kate/PhotosActivity$5;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$5$1;->val$photo:Lcom/perm/kate/api/Photo;

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/perm/kate/PhotosActivity;->access$300(Lcom/perm/kate/PhotosActivity;Lcom/perm/kate/api/Photo;I)V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
