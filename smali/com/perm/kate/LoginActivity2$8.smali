.class Lcom/perm/kate/LoginActivity2$8;
.super Ljava/lang/Object;
.source "LoginActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LoginActivity2;->showTimeDialogOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LoginActivity2;


# direct methods
.method constructor <init>(Lcom/perm/kate/LoginActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/LoginActivity2;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$8;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 255
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/perm/kate/LoginActivity2$8;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07005c

    .line 256
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07005b

    new-instance v2, Lcom/perm/kate/LoginActivity2$8$2;

    invoke-direct {v2, p0}, Lcom/perm/kate/LoginActivity2$8$2;-><init>(Lcom/perm/kate/LoginActivity2$8;)V

    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/LoginActivity2$8;->this$0:Lcom/perm/kate/LoginActivity2;

    const v2, 0x7f0702c4

    .line 263
    invoke-virtual {v1, v2}, Lcom/perm/kate/LoginActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/LoginActivity2$8$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/LoginActivity2$8$1;-><init>(Lcom/perm/kate/LoginActivity2$8;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 271
    return-void
.end method
