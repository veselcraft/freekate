.class Lcom/perm/kate/SinglePhotoViewer$16;
.super Ljava/lang/Object;
.source "SinglePhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SinglePhotoViewer;->readyInUiThread()V
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
    .param p1, "this$0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$16;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$16;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/SinglePhotoViewer;->setResult(I)V

    .line 714
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$16;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual {v0}, Lcom/perm/kate/SinglePhotoViewer;->finish()V

    .line 715
    return-void
.end method
