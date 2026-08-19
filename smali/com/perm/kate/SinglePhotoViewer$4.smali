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

    .line 473
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$4;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    iput-object p3, p0, Lcom/perm/kate/SinglePhotoViewer$4;->val$user_name:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/SinglePhotoViewer$4;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 491
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$4;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$4$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$4$2;-><init>(Lcom/perm/kate/SinglePhotoViewer$4;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 476
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$4;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$4$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$4$1;-><init>(Lcom/perm/kate/SinglePhotoViewer$4;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
