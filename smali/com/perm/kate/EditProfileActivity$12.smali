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
    .param p1, "this$0"    # Lcom/perm/kate/EditProfileActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditProfileActivity;->showProgressBar(Z)V

    .line 498
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$400(Lcom/perm/kate/EditProfileActivity;Z)V

    .line 499
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 500
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const v1, 0x7f0704cd

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditProfileActivity;->displayToast(I)V

    .line 501
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0704cd

    const/4 v4, 0x1

    .line 469
    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/perm/kate/EditProfileActivity;->showProgressBar(Z)V

    .line 470
    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v2, v4}, Lcom/perm/kate/EditProfileActivity;->access$400(Lcom/perm/kate/EditProfileActivity;Z)V

    move-object v0, p1

    .line 471
    check-cast v0, Lcom/perm/kate/api/SaveProdfileInfoResult;

    .line 474
    .local v0, "result":Lcom/perm/kate/api/SaveProdfileInfoResult;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/perm/kate/api/SaveProdfileInfoResult;->changed:I

    if-eq v2, v4, :cond_1

    .line 475
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {v2, v5}, Lcom/perm/kate/EditProfileActivity;->displayToast(I)V

    .line 494
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v2, v0, Lcom/perm/kate/api/SaveProdfileInfoResult;->nameRequest:Lcom/perm/kate/api/NameRequest;

    if-eqz v2, :cond_4

    .line 480
    const-string v2, "processing"

    iget-object v3, v0, Lcom/perm/kate/api/SaveProdfileInfoResult;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v3, v3, Lcom/perm/kate/api/NameRequest;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const v4, 0x7f0704d1

    invoke-virtual {v3, v4}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const v4, 0x7f0701f3

    invoke-virtual {v3, v4}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/perm/kate/api/SaveProdfileInfoResult;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v3, v3, Lcom/perm/kate/api/NameRequest;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/perm/kate/api/SaveProdfileInfoResult;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v3, v3, Lcom/perm/kate/api/NameRequest;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    const v4, 0x7f0701ef

    invoke-virtual {v3, v4}, Lcom/perm/kate/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v2, v1}, Lcom/perm/kate/EditProfileActivity;->access$2700(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 483
    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    const-string v2, "success"

    iget-object v3, v0, Lcom/perm/kate/api/SaveProdfileInfoResult;->nameRequest:Lcom/perm/kate/api/NameRequest;

    iget-object v3, v3, Lcom/perm/kate/api/NameRequest;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 484
    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v2, v6}, Lcom/perm/kate/EditProfileActivity;->access$2700(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {v2, v5}, Lcom/perm/kate/EditProfileActivity;->displayToast(I)V

    goto/16 :goto_0

    .line 492
    :cond_4
    iget-object v2, p0, Lcom/perm/kate/EditProfileActivity$12;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v2, v6}, Lcom/perm/kate/EditProfileActivity;->access$2700(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
