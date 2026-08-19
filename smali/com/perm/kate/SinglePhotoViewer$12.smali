.class Lcom/perm/kate/SinglePhotoViewer$12;
.super Ljava/lang/Object;
.source "SinglePhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$12;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 675
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$12;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {p1}, Lcom/perm/kate/SinglePhotoViewer;->access$1900(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/perm/kate/SinglePhotoViewer;->access$2900(Lcom/perm/kate/SinglePhotoViewer;Lcom/perm/kate/api/Photo;Z)V

    return-void
.end method
