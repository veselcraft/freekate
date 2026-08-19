.class Lcom/perm/kate/ProxyActivity$7$1;
.super Ljava/lang/Object;
.source "ProxyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/ProxyActivity$7;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/ProxyActivity$7;Z)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/perm/kate/ProxyActivity$7$1;->this$1:Lcom/perm/kate/ProxyActivity$7;

    iput-boolean p2, p0, Lcom/perm/kate/ProxyActivity$7$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/perm/kate/ProxyActivity$7$1;->this$1:Lcom/perm/kate/ProxyActivity$7;

    iget-object v0, v0, Lcom/perm/kate/ProxyActivity$7;->this$0:Lcom/perm/kate/ProxyActivity;

    iget-object v0, v0, Lcom/perm/kate/ProxyActivity;->btn_check:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/perm/kate/ProxyActivity$7$1;->this$1:Lcom/perm/kate/ProxyActivity$7;

    iget-object v0, v0, Lcom/perm/kate/ProxyActivity$7;->this$0:Lcom/perm/kate/ProxyActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 159
    iget-boolean v0, p0, Lcom/perm/kate/ProxyActivity$7$1;->val$result:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/perm/kate/ProxyActivity$7$1;->this$1:Lcom/perm/kate/ProxyActivity$7;

    iget-object v0, v0, Lcom/perm/kate/ProxyActivity$7;->this$0:Lcom/perm/kate/ProxyActivity;

    iget-object v0, v0, Lcom/perm/kate/ProxyActivity;->statusView:Landroid/widget/TextView;

    const v1, 0x7f0f040f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProxyActivity$7$1;->this$1:Lcom/perm/kate/ProxyActivity$7;

    iget-object v0, v0, Lcom/perm/kate/ProxyActivity$7;->this$0:Lcom/perm/kate/ProxyActivity;

    iget-object v0, v0, Lcom/perm/kate/ProxyActivity;->statusView:Landroid/widget/TextView;

    const v1, 0x7f0f040d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
