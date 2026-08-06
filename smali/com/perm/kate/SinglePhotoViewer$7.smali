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
    .param p1, "this$0"    # Lcom/perm/kate/SinglePhotoViewer;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v0}, Lcom/perm/kate/SinglePhotoViewer;->access$2400(Lcom/perm/kate/SinglePhotoViewer;)V

    .line 559
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 547
    if-eqz p1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/perm/kate/SinglePhotoViewer;->access$2102(Lcom/perm/kate/SinglePhotoViewer;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v0}, Lcom/perm/kate/SinglePhotoViewer;->access$2100(Lcom/perm/kate/SinglePhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v0}, Lcom/perm/kate/SinglePhotoViewer;->access$2100(Lcom/perm/kate/SinglePhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v0}, Lcom/perm/kate/SinglePhotoViewer;->access$2200(Lcom/perm/kate/SinglePhotoViewer;)V

    .line 551
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v0}, Lcom/perm/kate/SinglePhotoViewer;->access$2300(Lcom/perm/kate/SinglePhotoViewer;)V

    .line 554
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$7;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v0}, Lcom/perm/kate/SinglePhotoViewer;->access$2400(Lcom/perm/kate/SinglePhotoViewer;)V

    goto :goto_0
.end method
