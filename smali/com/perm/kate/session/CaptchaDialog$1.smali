.class final Lcom/perm/kate/session/CaptchaDialog$1;
.super Ljava/lang/Object;
.source "CaptchaDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/CaptchaDialog;->display(Landroid/app/Activity;Ljava/lang/String;Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;

.field final synthetic val$d:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$d:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$callback:Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 30
    :try_start_0
    iget-object v7, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$activity:Landroid/app/Activity;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 31
    .local v4, "factory":Landroid/view/LayoutInflater;
    const v7, 0x7f030038

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "captcha_view":Landroid/view/View;
    const v7, 0x7f0e00c0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 33
    .local v5, "img_captcha":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$d:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    const v7, 0x7f0e00c1

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 35
    .local v2, "et_captcha":Landroid/widget/EditText;
    new-instance v7, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f07009a

    .line 36
    invoke-virtual {v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 37
    invoke-virtual {v7, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070334

    new-instance v9, Lcom/perm/kate/session/CaptchaDialog$1$3;

    invoke-direct {v9, p0, v2}, Lcom/perm/kate/session/CaptchaDialog$1$3;-><init>(Lcom/perm/kate/session/CaptchaDialog$1;Landroid/widget/EditText;)V

    .line 38
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07015d

    new-instance v9, Lcom/perm/kate/session/CaptchaDialog$1$2;

    invoke-direct {v9, p0}, Lcom/perm/kate/session/CaptchaDialog$1$2;-><init>(Lcom/perm/kate/session/CaptchaDialog$1;)V

    .line 46
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070054

    new-instance v9, Lcom/perm/kate/session/CaptchaDialog$1$1;

    invoke-direct {v9, p0}, Lcom/perm/kate/session/CaptchaDialog$1$1;-><init>(Lcom/perm/kate/session/CaptchaDialog$1;)V

    .line 52
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 59
    .local v6, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 61
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 62
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "captcha_view":Landroid/view/View;
    .end local v1    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v2    # "et_captcha":Landroid/widget/EditText;
    .end local v4    # "factory":Landroid/view/LayoutInflater;
    .end local v5    # "img_captcha":Landroid/widget/ImageView;
    .end local v6    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v3

    .line 66
    .local v3, "ex":Landroid/view/WindowManager$BadTokenException;
    iget-object v7, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$callback:Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;

    invoke-interface {v7}, Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;->failedToDisplay()V

    .line 67
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
