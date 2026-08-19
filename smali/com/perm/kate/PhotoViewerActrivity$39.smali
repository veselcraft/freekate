.class Lcom/perm/kate/PhotoViewerActrivity$39;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->showCopyPhotoLinkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;

.field final synthetic val$menus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 1707
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->val$menus:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1711
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/16 p2, 0xd

    if-eq p1, p2, :cond_4

    const/16 p2, 0x1e

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 1716
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    const-string v0, ""

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    .line 1717
    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1720
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1, p2}, Lcom/perm/kate/PhotoViewerActrivity;->access$4400(Lcom/perm/kate/PhotoViewerActrivity;Z)V

    goto :goto_1

    .line 1718
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1, p2}, Lcom/perm/kate/PhotoViewerActrivity;->access$1600(Lcom/perm/kate/PhotoViewerActrivity;I)V

    goto :goto_1

    .line 1713
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$39;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->copyPhotoLink(Lcom/perm/kate/api/Photo;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1724
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1725
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
