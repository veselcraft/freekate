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
    .param p1, "this$0"    # Lcom/perm/kate/LoginActivity2;

    .prologue
    .line 184
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

    .prologue
    const/4 v4, 0x1

    .line 187
    iget v2, p0, Lcom/perm/kate/LoginActivity2$4;->val$res:I

    if-nez v2, :cond_2

    .line 188
    iget-boolean v2, p0, Lcom/perm/kate/LoginActivity2$4;->val$is_retry:Z

    if-eqz v2, :cond_0

    .line 189
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Transformed login worked!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v3, p0, Lcom/perm/kate/LoginActivity2$4;->val$data:[Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/perm/kate/LoginActivity2;->access$100(Lcom/perm/kate/LoginActivity2;[Ljava/lang/Object;)V

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    iget v2, p0, Lcom/perm/kate/LoginActivity2$4;->val$res:I

    if-ne v2, v4, :cond_3

    .line 193
    iget-object v2, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-virtual {v2}, Lcom/perm/kate/LoginActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0702c2

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 194
    iget-object v2, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v3, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v3, v3, Lcom/perm/kate/LoginActivity2;->loginView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/perm/kate/LoginActivity2;->showView(Landroid/view/View;)V

    goto :goto_0

    .line 195
    :cond_3
    iget v2, p0, Lcom/perm/kate/LoginActivity2$4;->val$res:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 196
    iget-object v2, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-virtual {v2}, Lcom/perm/kate/LoginActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0702c3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 197
    iget-object v2, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v3, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v3, v3, Lcom/perm/kate/LoginActivity2;->loginView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/perm/kate/LoginActivity2;->showView(Landroid/view/View;)V

    goto :goto_0

    .line 198
    :cond_4
    iget v2, p0, Lcom/perm/kate/LoginActivity2$4;->val$res:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 201
    iget-object v2, p0, Lcom/perm/kate/LoginActivity2$4;->val$data:[Ljava/lang/Object;

    aget-object v1, v2, v4

    check-cast v1, Ljava/lang/String;

    .line 203
    .local v1, "redirect_uri":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    const-class v3, Lcom/perm/kate/LoginActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "validation_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v2, "from_login"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    iget-object v2, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/perm/kate/LoginActivity2;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    iget-object v2, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v3, p0, Lcom/perm/kate/LoginActivity2$4;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v3, v3, Lcom/perm/kate/LoginActivity2;->loginView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/perm/kate/LoginActivity2;->showView(Landroid/view/View;)V

    goto :goto_0
.end method
