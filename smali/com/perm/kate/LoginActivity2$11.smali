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

    .line 360
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$11;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 363
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/perm/kate/LoginActivity2$11;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0320

    .line 364
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f0398

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 368
    iget-object p1, p0, Lcom/perm/kate/LoginActivity2$11;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-static {p1}, Lcom/perm/kate/LoginActivity2;->access$600(Lcom/perm/kate/LoginActivity2;)V

    return-void
.end method
