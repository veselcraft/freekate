.class Lcom/perm/kate/SinglePhotoViewer$4;
.super Lcom/perm/kate/session/Callback;
.source "SinglePhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SinglePhotoViewer;->onAccept(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SinglePhotoViewer;

.field final synthetic val$mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$user_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/SinglePhotoViewer;Landroid/app/Activity;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SinglePhotoViewer;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$4;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    iput-object p3, p0, Lcom/perm/kate/SinglePhotoViewer$4;->val$user_name:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/SinglePhotoViewer$4;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$4;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    new-instance v1, Lcom/perm/kate/SinglePhotoViewer$4$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/SinglePhotoViewer$4$2;-><init>(Lcom/perm/kate/SinglePhotoViewer$4;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/SinglePhotoViewer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 498
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$4;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    new-instance v1, Lcom/perm/kate/SinglePhotoViewer$4$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/SinglePhotoViewer$4$1;-><init>(Lcom/perm/kate/SinglePhotoViewer$4;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/SinglePhotoViewer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 486
    return-void
.end method
