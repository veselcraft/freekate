.class Lcom/perm/kate/PhotoViewerActrivity$32;
.super Lcom/perm/kate/session/Callback;
.source "PhotoViewerActrivity.java"


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
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V
    .locals 0

    .line 1524
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$32;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 1536
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 1528
    check-cast p1, Ljava/util/ArrayList;

    .line 1529
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 1530
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$32;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1, v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$3800(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V

    goto :goto_0

    .line 1531
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$32;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$3900(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V

    return-void
.end method
