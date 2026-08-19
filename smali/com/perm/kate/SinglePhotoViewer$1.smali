.class Lcom/perm/kate/SinglePhotoViewer$1;
.super Ljava/lang/Object;
.source "SinglePhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SinglePhotoViewer;->onCreate(Landroid/os/Bundle;)V
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

    .line 135
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$1;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$1;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {p1}, Lcom/perm/kate/SinglePhotoViewer;->access$000(Lcom/perm/kate/SinglePhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$1;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {p1}, Lcom/perm/kate/SinglePhotoViewer;->access$100(Lcom/perm/kate/SinglePhotoViewer;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$1;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {p1}, Lcom/perm/kate/SinglePhotoViewer;->access$200(Lcom/perm/kate/SinglePhotoViewer;)V

    :goto_0
    return-void
.end method
