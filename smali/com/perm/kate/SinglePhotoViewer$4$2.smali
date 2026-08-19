.class Lcom/perm/kate/SinglePhotoViewer$4$2;
.super Ljava/lang/Object;
.source "SinglePhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SinglePhotoViewer$4;


# direct methods
.method constructor <init>(Lcom/perm/kate/SinglePhotoViewer$4;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$4$2;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 494
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f054c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 495
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 496
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$4$2;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    iget-object v0, v0, Lcom/perm/kate/SinglePhotoViewer$4;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$4$2;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    iget-object v0, v0, Lcom/perm/kate/SinglePhotoViewer$4;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
