.class Lcom/perm/kate/SinglePhotoViewer$4$1;
.super Ljava/lang/Object;
.source "SinglePhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SinglePhotoViewer$4;


# direct methods
.method constructor <init>(Lcom/perm/kate/SinglePhotoViewer$4;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$4$1;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$4$1;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    iget-object v1, v1, Lcom/perm/kate/SinglePhotoViewer$4;->val$user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f054b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 481
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$4$1;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    iget-object v0, v0, Lcom/perm/kate/SinglePhotoViewer$4;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$4$1;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    iget-object v0, v0, Lcom/perm/kate/SinglePhotoViewer$4;->val$mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 483
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$4$1;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    iget-object v0, v0, Lcom/perm/kate/SinglePhotoViewer$4;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 484
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer$4$1;->this$1:Lcom/perm/kate/SinglePhotoViewer$4;

    iget-object v0, v0, Lcom/perm/kate/SinglePhotoViewer$4;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
