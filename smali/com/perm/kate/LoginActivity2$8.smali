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

    .line 264
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$8;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 267
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/perm/kate/LoginActivity2$8;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f007a

    .line 268
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/LoginActivity2$8$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/LoginActivity2$8$2;-><init>(Lcom/perm/kate/LoginActivity2$8;)V

    const v2, 0x7f0f0079

    .line 269
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/LoginActivity2$8;->this$0:Lcom/perm/kate/LoginActivity2;

    const v2, 0x7f0f031f

    .line 275
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/LoginActivity2$8$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/LoginActivity2$8$1;-><init>(Lcom/perm/kate/LoginActivity2$8;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
