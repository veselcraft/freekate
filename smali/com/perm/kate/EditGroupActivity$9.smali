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

    .line 549
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

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

    move-result-object p1

    const-string v0, "address taken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 566
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    const v0, 0x7f0f0522

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    goto :goto_0

    .line 568
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    const v0, 0x7f0f0529

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :goto_0
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 553
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 554
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 555
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 556
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 557
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    const v0, 0x7f0f052a

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    goto :goto_0

    .line 559
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$9;->this$0:Lcom/perm/kate/EditGroupActivity;

    const v0, 0x7f0f0529

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :goto_0
    return-void
.end method
