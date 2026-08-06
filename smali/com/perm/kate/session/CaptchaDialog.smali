.class public Lcom/perm/kate/session/CaptchaDialog;
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
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 16
    invoke-static {p0}, Lcom/perm/kate/session/CaptchaDialog;->showInstructionsDialog(Landroid/app/Activity;)V

    return-void
.end method

.method public static display(Landroid/app/Activity;Ljava/lang/String;Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "captcha_img"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;

    .prologue
    .line 21
    invoke-static {p1}, Lcom/perm/kate/Helper;->loadImageFromWeb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    .local v0, "d":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 26
    :cond_0
    new-instance v1, Lcom/perm/kate/session/CaptchaDialog$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/perm/kate/session/CaptchaDialog$1;-><init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static showInstructionsDialog(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070053

    .line 74
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070334

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 77
    return-void
.end method
