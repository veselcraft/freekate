.class Lcom/perm/kate/PhotoViewerActrivity$37;
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
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 1526
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$37;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$37;->val$menus:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1530
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$37;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MenuItemDetails;

    iget v1, v1, Lcom/perm/kate/MenuItemDetails;->code:I

    sparse-switch v1, :sswitch_data_0

    .line 1546
    :goto_0
    return-void

    .line 1532
    :sswitch_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$37;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity$37;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->copyPhotoLink(Lcom/perm/kate/api/Photo;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1544
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1535
    .end local v0    # "th":Ljava/lang/Throwable;
    :sswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$37;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$37;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$37;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    .line 1536
    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$37;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1537
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$37;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$1400(Lcom/perm/kate/PhotoViewerActrivity;I)V

    goto :goto_0

    .line 1539
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$37;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$4100(Lcom/perm/kate/PhotoViewerActrivity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1530
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1e -> :sswitch_1
    .end sparse-switch
.end method
