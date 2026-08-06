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
    .param p1, "this$0"    # Lcom/perm/kate/ChangePasswordActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 125
    iget-object v2, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/perm/kate/ChangePasswordActivity;->showProgressBar(Z)V

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "focus_to_old":Z
    instance-of v2, p1, Lcom/perm/kate/api/KException;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 128
    check-cast v2, Lcom/perm/kate/api/KException;

    iget v0, v2, Lcom/perm/kate/api/KException;->error_code:I

    .line 129
    .local v0, "code":I
    const/16 v2, 0xf

    if-ne v0, v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    const v3, 0x7f070339

    invoke-virtual {v2, v3}, Lcom/perm/kate/ChangePasswordActivity;->displayToast(I)V

    .line 131
    const/4 v1, 0x1

    .line 137
    .end local v0    # "code":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v2, v1}, Lcom/perm/kate/ChangePasswordActivity;->access$1100(Lcom/perm/kate/ChangePasswordActivity;Z)V

    .line 138
    return-void

    .line 133
    .restart local v0    # "code":I
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/perm/kate/ChangePasswordActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 134
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/ChangePasswordActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 115
    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, "token":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/ChangePasswordActivity;->access$900(Lcom/perm/kate/ChangePasswordActivity;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    const v2, 0x7f070355

    invoke-virtual {v1, v2}, Lcom/perm/kate/ChangePasswordActivity;->displayToast(I)V

    .line 119
    iget-object v1, p0, Lcom/perm/kate/ChangePasswordActivity$5;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v1}, Lcom/perm/kate/ChangePasswordActivity;->access$1000(Lcom/perm/kate/ChangePasswordActivity;)V

    .line 121
    :cond_0
    return-void
.end method
