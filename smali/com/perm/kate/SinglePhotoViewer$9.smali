.class Lcom/perm/kate/SinglePhotoViewer$9;
.super Ljava/lang/Object;
.source "SinglePhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SinglePhotoViewer;->showPhotoTagsUI()V
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
    .line 585
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$9;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$9;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v0}, Lcom/perm/kate/SinglePhotoViewer;->access$2500(Lcom/perm/kate/SinglePhotoViewer;)V

    .line 589
    return-void
.end method
