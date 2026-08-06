.class Lcom/perm/kate/LoginActivity2$11;
.super Ljava/lang/Object;
.source "LoginActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LoginActivity2;
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
    .line 353
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$11;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 356
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/perm/kate/LoginActivity2$11;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0702c5

    .line 357
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070334

    const/4 v2, 0x0

    .line 358
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 361
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$11;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-static {v0}, Lcom/perm/kate/LoginActivity2;->access$600(Lcom/perm/kate/LoginActivity2;)V

    .line 362
    return-void
.end method
