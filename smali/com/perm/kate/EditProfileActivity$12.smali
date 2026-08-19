.class Lcom/perm/kate/EditProfileActivity$12;
.super Lcom/perm/kate/session/Callback;
.source "EditProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity;Landroid/app/Activity;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 501
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$400(Lcom/perm/kate/EditProfileActivity;Z)V

    .line 502
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 503
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const v0, 0x7f0f0552

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 472
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 473
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$400(Lcom/perm/kate/EditProfileActivity;Z)V

    .line 474
    check-cast p1, Lcom/perm/kate/api/SaveProdfileInfoResult;

    const v0, 0x7f0f0552

    if-eqz p1, :cond_4

    .line 477
    iget v2, p1, Lcom/perm/kate/api/SaveProdfileInfoResult;->changed:I

    if-eq v2, v1, :cond_0

    goto/16 :goto_1

    .line 482
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/SaveProdfileInfoResult;->nameRequest:Lcom/perm/kate/api/NameRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 483
    iget-object v1, v1, Lcom/perm/kate/api/NameRequest;->status:Ljava/lang/String;

    const-string v3, "processing"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const v2, 0x7f0f0556

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const v2, 0x7f0f024e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/perm/kate/api/SaveProdfileInfoResult;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v2, v2, Lcom/perm/kate/api/NameRequest;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/perm/kate/api/SaveProdfileInfoResult;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object p1, p1, Lcom/perm/kate/api/NameRequest;->last_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const v1, 0x7f0f024a

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 485
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/EditProfileActivity;->access$2700(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_1
    iget-object p1, p1, Lcom/perm/kate/api/SaveProdfileInfoResult;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object p1, p1, Lcom/perm/kate/api/NameRequest;->status:Ljava/lang/String;

    const-string v1, "success"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 487
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p1, v2}, Lcom/perm/kate/EditProfileActivity;->access$2700(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :goto_0
    return-void

    .line 495
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p1, v2}, Lcom/perm/kate/EditProfileActivity;->access$2700(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V

    return-void

    .line 478
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method
