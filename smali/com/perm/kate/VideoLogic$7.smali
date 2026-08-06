.class final Lcom/perm/kate/VideoLogic$7;
.super Ljava/lang/Object;
.source "VideoLogic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoLogic;->displayPlayWith(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$menuItems2:Ljava/util/ArrayList;

.field final synthetic val$video:Lcom/perm/kate/api/Video;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/perm/kate/VideoLogic$7;->val$menuItems2:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/VideoLogic$7;->val$video:Lcom/perm/kate/api/Video;

    iput-object p3, p0, Lcom/perm/kate/VideoLogic$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$7;->val$menuItems2:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 475
    :goto_0
    return-void

    .line 463
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$7;->val$video:Lcom/perm/kate/api/Video;

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$7;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/perm/kate/VideoLogic;->access$100(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$7;->val$video:Lcom/perm/kate/api/Video;

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$7;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/perm/kate/VideoLogic;->access$300(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    goto :goto_0

    .line 469
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$7;->val$video:Lcom/perm/kate/api/Video;

    invoke-virtual {v0}, Lcom/perm/kate/api/Video;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$7;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/perm/kate/VideoLogic;->access$400(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 472
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$7;->val$video:Lcom/perm/kate/api/Video;

    iget-object v0, v0, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/VideoLogic$7;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/perm/kate/VideoLogic;->access$400(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
