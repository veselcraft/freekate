.class Lcom/perm/kate/EditGroupActivity$9;
.super Lcom/perm/kate/session/Callback;
.source "EditGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditGroupActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditGroupActivity;->showProgressBar(Z)V

    .line 565
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "address is taken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "address taken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    const v1, 0x7f070497

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditGroupActivity;->displayToast(I)V

    .line 569
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    const v1, 0x7f07049f

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditGroupActivity;->displayToast(I)V

    goto :goto_0
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 552
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/EditGroupActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 553
    check-cast v0, Ljava/lang/Integer;

    .line 554
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 555
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/EditGroupActivity;->setResult(I)V

    .line 556
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-virtual {v1}, Lcom/perm/kate/EditGroupActivity;->finish()V

    .line 557
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    const v2, 0x7f0704a0

    invoke-virtual {v1, v2}, Lcom/perm/kate/EditGroupActivity;->displayToast(I)V

    .line 560
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    const v2, 0x7f07049f

    invoke-virtual {v1, v2}, Lcom/perm/kate/EditGroupActivity;->displayToast(I)V

    goto :goto_0
.end method
