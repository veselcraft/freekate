.class Lcom/perm/kate/SinglePhotoViewer$15;
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

    .line 698
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$15;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 706
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 0

    .line 701
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$15;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {p1}, Lcom/perm/kate/SinglePhotoViewer;->access$3200(Lcom/perm/kate/SinglePhotoViewer;)V

    return-void
.end method
