.class public abstract Lcom/perm/kate/session/CaptchaDialog;
.super Ljava/lang/Object;
.source "CaptchaDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;
    }
.end annotation


# direct methods
.method static synthetic access$000(Landroid/app/Activity;)V
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/perm/kate/session/CaptchaDialog;->showInstructionsDialog(Landroid/app/Activity;)V

    return-void
.end method

.method public static display(Landroid/app/Activity;Ljava/lang/String;Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;)V
    .locals 1

    .line 21
    invoke-static {p1}, Lcom/perm/kate/Helper;->loadImageFromWeb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/perm/kate/session/CaptchaDialog$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/CaptchaDialog$1;-><init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static showInstructionsDialog(Landroid/app/Activity;)V
    .locals 2

    .line 74
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0f006e

    .line 75
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f0f0398

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
