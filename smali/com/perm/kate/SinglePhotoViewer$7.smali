.class Lcom/perm/kate/SinglePhotoViewer$7;
.super Lcom/perm/kate/session/Callback;
.source "SinglePhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SinglePhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SinglePhotoViewer;


# direct methods
.method constructor <init>(Lcom/perm/kate/SinglePhotoViewer;Landroid/app/Activity;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 560
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {p1}, Lcom/perm/kate/SinglePhotoViewer;->access$2400(Lcom/perm/kate/SinglePhotoViewer;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/perm/kate/SinglePhotoViewer;->access$2102(Lcom/perm/kate/SinglePhotoViewer;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 551
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {p1}, Lcom/perm/kate/SinglePhotoViewer;->access$2100(Lcom/perm/kate/SinglePhotoViewer;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {p1}, Lcom/perm/kate/SinglePhotoViewer;->access$2100(Lcom/perm/kate/SinglePhotoViewer;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 552
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {p1}, Lcom/perm/kate/SinglePhotoViewer;->access$2200(Lcom/perm/kate/SinglePhotoViewer;)V

    .line 553
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {p1}, Lcom/perm/kate/SinglePhotoViewer;->access$2300(Lcom/perm/kate/SinglePhotoViewer;)V

    goto :goto_0

    .line 555
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {p1}, Lcom/perm/kate/SinglePhotoViewer;->access$2400(Lcom/perm/kate/SinglePhotoViewer;)V

    :goto_0
    return-void
.end method
