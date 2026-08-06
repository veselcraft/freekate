.class Lcom/perm/kate/VideoUploadActivity$10;
.super Ljava/lang/Object;
.source "VideoUploadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoUploadActivity;->makeToast2(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoUploadActivity;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoUploadActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$10;->this$0:Lcom/perm/kate/VideoUploadActivity;

    iput-boolean p2, p0, Lcom/perm/kate/VideoUploadActivity$10;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 248
    iget-boolean v0, p0, Lcom/perm/kate/VideoUploadActivity$10;->val$success:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$10;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0}, Lcom/perm/kate/VideoUploadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity$10;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const v2, 0x7f0704da

    invoke-virtual {v1, v2}, Lcom/perm/kate/VideoUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$10;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$1500(Lcom/perm/kate/VideoUploadActivity;)V

    .line 251
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$10;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoUploadActivity;->setResult(I)V

    .line 252
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$10;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0}, Lcom/perm/kate/VideoUploadActivity;->finish()V

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$10;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0}, Lcom/perm/kate/VideoUploadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity$10;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const v2, 0x7f0704db

    invoke-virtual {v1, v2}, Lcom/perm/kate/VideoUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
