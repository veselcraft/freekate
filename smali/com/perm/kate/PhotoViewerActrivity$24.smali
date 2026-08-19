.class Lcom/perm/kate/PhotoViewerActrivity$24;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoViewerActrivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 1407
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$24;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1410
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$24;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1412
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$24;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$24;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1413
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$24;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$2800(Lcom/perm/kate/PhotoViewerActrivity;)V

    goto :goto_0

    .line 1415
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$24;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$2900(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 1416
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$24;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$2500(Lcom/perm/kate/PhotoViewerActrivity;)V

    return-void
.end method
