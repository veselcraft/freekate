.class Lcom/perm/kate/VideoLogic$7;
.super Ljava/lang/Object;
.source "VideoLogic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$menuItems2:Ljava/util/ArrayList;

.field final synthetic val$video:Lcom/perm/kate/api/Video;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/perm/kate/VideoLogic$7;->val$menuItems2:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/VideoLogic$7;->val$video:Lcom/perm/kate/api/Video;

    iput-object p3, p0, Lcom/perm/kate/VideoLogic$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 567
    iget-object p1, p0, Lcom/perm/kate/VideoLogic$7;->val$menuItems2:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/VideoLogic$7;->val$video:Lcom/perm/kate/api/Video;

    iget-object p1, p1, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/VideoLogic$7;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/perm/kate/VideoLogic;->access$700(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 575
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/VideoLogic$7;->val$video:Lcom/perm/kate/api/Video;

    invoke-virtual {p1}, Lcom/perm/kate/api/Video;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/VideoLogic$7;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/perm/kate/VideoLogic;->access$700(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 572
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/VideoLogic$7;->val$video:Lcom/perm/kate/api/Video;

    iget-object p2, p0, Lcom/perm/kate/VideoLogic$7;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/perm/kate/VideoLogic;->access$400(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    goto :goto_0

    .line 569
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/VideoLogic$7;->val$video:Lcom/perm/kate/api/Video;

    iget-object p2, p0, Lcom/perm/kate/VideoLogic$7;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/perm/kate/VideoLogic;->access$500(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
