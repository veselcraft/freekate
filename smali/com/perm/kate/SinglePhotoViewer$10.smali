.class Lcom/perm/kate/SinglePhotoViewer$10;
.super Ljava/lang/Object;
.source "SinglePhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SinglePhotoViewer;->postRunShowPhotoTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SinglePhotoViewer;


# direct methods
.method constructor <init>(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$10;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$10;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v0}, Lcom/perm/kate/SinglePhotoViewer;->access$2600(Lcom/perm/kate/SinglePhotoViewer;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$10;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v0}, Lcom/perm/kate/SinglePhotoViewer;->access$2600(Lcom/perm/kate/SinglePhotoViewer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$10;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1}, Lcom/perm/kate/SinglePhotoViewer;->access$2700(Lcom/perm/kate/SinglePhotoViewer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$10;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v0}, Lcom/perm/kate/SinglePhotoViewer;->access$2800(Lcom/perm/kate/SinglePhotoViewer;)V

    return-void
.end method
