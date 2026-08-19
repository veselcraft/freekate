.class Lcom/perm/kate/PhotoViewerActrivity$17;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTagDialog(Lcom/perm/kate/api/PhotoTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$pt:Lcom/perm/kate/api/PhotoTag;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;Lcom/perm/kate/api/PhotoTag;)V
    .locals 0

    .line 1101
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->val$pt:Lcom/perm/kate/api/PhotoTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1105
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1110
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iget-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->val$pt:Lcom/perm/kate/api/PhotoTag;

    invoke-static {p1, p2}, Lcom/perm/kate/PhotoViewerActrivity;->access$2300(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/PhotoTag;)V

    goto :goto_0

    .line 1107
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iget-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$17;->val$pt:Lcom/perm/kate/api/PhotoTag;

    iget-wide v0, p2, Lcom/perm/kate/api/PhotoTag;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/PhotoViewerActrivity;->access$2200(Lcom/perm/kate/PhotoViewerActrivity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1115
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
