.class Lcom/perm/kate/PhotoViewerActrivity$9;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->showShareDialog()V
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

    .line 786
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$9;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$9;->val$menus:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 790
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$9;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/16 p2, 0xa

    if-eq p1, p2, :cond_4

    const/16 p2, 0x16

    if-eq p1, p2, :cond_3

    const/16 p2, 0x19

    if-eq p1, p2, :cond_2

    const/16 p2, 0x1c

    if-eq p1, p2, :cond_1

    const/16 p2, 0x25

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 804
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$9;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1400(Lcom/perm/kate/PhotoViewerActrivity;)V

    goto :goto_0

    .line 801
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$9;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1300(Lcom/perm/kate/PhotoViewerActrivity;)V

    goto :goto_0

    .line 795
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$9;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1100(Lcom/perm/kate/PhotoViewerActrivity;J)V

    goto :goto_0

    .line 798
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$9;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1200(Lcom/perm/kate/PhotoViewerActrivity;)V

    goto :goto_0

    .line 792
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$9;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1000(Lcom/perm/kate/PhotoViewerActrivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 808
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 809
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
