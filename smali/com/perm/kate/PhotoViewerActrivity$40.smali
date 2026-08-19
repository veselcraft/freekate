.class Lcom/perm/kate/PhotoViewerActrivity$40;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->showEditDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;

.field final synthetic val$is_saved_photos_album:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Z)V
    .locals 0

    .line 1761
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$40;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-boolean p2, p0, Lcom/perm/kate/PhotoViewerActrivity$40;->val$is_saved_photos_album:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1773
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$40;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$4500(Lcom/perm/kate/PhotoViewerActrivity;)V

    goto :goto_0

    .line 1767
    :cond_1
    iget-boolean p1, p0, Lcom/perm/kate/PhotoViewerActrivity$40;->val$is_saved_photos_album:Z

    if-eqz p1, :cond_2

    .line 1768
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$40;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$4500(Lcom/perm/kate/PhotoViewerActrivity;)V

    goto :goto_0

    .line 1770
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$40;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$4600(Lcom/perm/kate/PhotoViewerActrivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1777
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1778
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
