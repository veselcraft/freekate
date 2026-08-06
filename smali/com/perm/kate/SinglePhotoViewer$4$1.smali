.class Lcom/perm/kate/SinglePhotoViewer$4$1;
.super Ljava/lang/Object;
.source "SinglePhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SinglePhotoViewer$4;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SinglePhotoViewer$4;


# direct methods
.method constructor <init>(Lcom/perm/kate/SinglePhotoViewer$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/SinglePhotoViewer$4;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$4$1;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$4$1;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    iget-object v2, v2, Lcom/perm/kate/SinglePhotoViewer$4;->val$user_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0704c6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "toast_text":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 479
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$4$1;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    iget-object v1, v1, Lcom/perm/kate/SinglePhotoViewer$4;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual {v1}, Lcom/perm/kate/SinglePhotoViewer;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$4$1;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    iget-object v1, v1, Lcom/perm/kate/SinglePhotoViewer$4;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 481
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$4$1;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    iget-object v1, v1, Lcom/perm/kate/SinglePhotoViewer$4;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/SinglePhotoViewer;->setResult(I)V

    .line 482
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$4$1;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    iget-object v1, v1, Lcom/perm/kate/SinglePhotoViewer$4;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual {v1}, Lcom/perm/kate/SinglePhotoViewer;->finish()V

    .line 484
    :cond_0
    return-void
.end method
