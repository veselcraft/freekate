.class Lcom/perm/kate/VideoUploadActivity$11;
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

    .line 296
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$11;->this$0:Lcom/perm/kate/VideoUploadActivity;

    iput-boolean p2, p0, Lcom/perm/kate/VideoUploadActivity$11;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 299
    iget-boolean v0, p0, Lcom/perm/kate/VideoUploadActivity$11;->val$success:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$11;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity$11;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const v3, 0x7f0f055e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 301
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$11;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$1400(Lcom/perm/kate/VideoUploadActivity;)V

    .line 302
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$11;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 303
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$11;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$11;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity$11;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const v3, 0x7f0f055f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
