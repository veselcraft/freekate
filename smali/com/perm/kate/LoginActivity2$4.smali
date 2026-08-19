.class Lcom/perm/kate/LoginActivity2$4;
.super Ljava/lang/Object;
.source "LoginActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LoginActivity2;->logIn(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LoginActivity2;

.field final synthetic val$data:[Ljava/lang/Object;

.field final synthetic val$is_retry:Z

.field final synthetic val$res:I


# direct methods
.method constructor <init>(Lcom/perm/kate/LoginActivity2;IZ[Ljava/lang/Object;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    iput p2, p0, Lcom/perm/kate/LoginActivity2$4;->val$res:I

    iput-boolean p3, p0, Lcom/perm/kate/LoginActivity2$4;->val$is_retry:Z

    iput-object p4, p0, Lcom/perm/kate/LoginActivity2$4;->val$data:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 193
    iget v0, p0, Lcom/perm/kate/LoginActivity2$4;->val$res:I

    if-nez v0, :cond_1

    .line 194
    iget-boolean v0, p0, Lcom/perm/kate/LoginActivity2$4;->val$is_retry:Z

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Transformed login worked!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v1, p0, Lcom/perm/kate/LoginActivity2$4;->val$data:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/perm/kate/LoginActivity2;->access$100(Lcom/perm/kate/LoginActivity2;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f031e

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v1, v0, Lcom/perm/kate/LoginActivity2;->loginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/perm/kate/LoginActivity2;->showView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 202
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0364

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 203
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v1, v0, Lcom/perm/kate/LoginActivity2;->loginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/perm/kate/LoginActivity2;->showView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x7

    if-ne v0, v2, :cond_5

    .line 205
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$4;->val$data:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 207
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    const v2, 0x7f0f046b

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_4
    iget-object v2, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v1, v0, Lcom/perm/kate/LoginActivity2;->loginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/perm/kate/LoginActivity2;->showView(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    .line 213
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$4;->val$data:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 215
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    const-class v4, Lcom/perm/kate/LoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "validation_uri"

    .line 216
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "from_login"

    .line 217
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v1, v0, Lcom/perm/kate/LoginActivity2;->loginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/perm/kate/LoginActivity2;->showView(Landroid/view/View;)V

    :cond_6
    :goto_0
    return-void
.end method
