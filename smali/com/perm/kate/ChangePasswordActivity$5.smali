.class Lcom/perm/kate/ChangePasswordActivity$5;
.super Lcom/perm/kate/session/Callback;
.source "ChangePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ChangePasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/ChangePasswordActivity;Landroid/app/Activity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 125
    instance-of v0, p1, Lcom/perm/kate/api/KException;

    if-eqz v0, :cond_1

    .line 126
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/KException;

    iget v0, v0, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    .line 128
    iget-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    const v0, 0x7f0f039d

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    const/4 v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 135
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {p1, v1}, Lcom/perm/kate/ChangePasswordActivity;->access$1100(Lcom/perm/kate/ChangePasswordActivity;Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 113
    check-cast p1, Ljava/lang/String;

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/ChangePasswordActivity;->access$900(Lcom/perm/kate/ChangePasswordActivity;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    const v0, 0x7f0f03ba

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 117
    iget-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {p1}, Lcom/perm/kate/ChangePasswordActivity;->access$1000(Lcom/perm/kate/ChangePasswordActivity;)V

    :cond_0
    return-void
.end method
