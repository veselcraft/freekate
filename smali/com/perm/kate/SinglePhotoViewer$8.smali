.class Lcom/perm/kate/SinglePhotoViewer$8;
.super Ljava/lang/Object;
.source "SinglePhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SinglePhotoViewer;->onFailed()V
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

    .line 567
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$8;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$8;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    const v1, 0x7f0f053c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
