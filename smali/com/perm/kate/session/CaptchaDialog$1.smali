.class Lcom/perm/kate/session/CaptchaDialog$1;
.super Ljava/lang/Object;
.source "CaptchaDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;

.field final synthetic val$d:Landroid/graphics/Bitmap;


# direct methods
.method public static synthetic $r8$lambda$14MCosK_MDHuCxl2g6hjGLTjSCo(Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perm/kate/session/CaptchaDialog$1;->lambda$run$0(Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;Landroid/content/DialogInterface;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$d:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$callback:Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$run$0(Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;Landroid/content/DialogInterface;)V
    .locals 0

    .line 38
    invoke-interface {p0}, Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;->failedToDisplay()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c003b

    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09017d

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 33
    iget-object v2, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$d:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v1, 0x7f09011a

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 35
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f00d3

    .line 36
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 37
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$callback:Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;

    new-instance v3, Lcom/perm/kate/session/CaptchaDialog$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/perm/kate/session/CaptchaDialog$1$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;)V

    .line 38
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0f0398

    new-instance v3, Lcom/perm/kate/session/CaptchaDialog$1$3;

    invoke-direct {v3, p0, v1}, Lcom/perm/kate/session/CaptchaDialog$1$3;-><init>(Lcom/perm/kate/session/CaptchaDialog$1;Landroid/widget/EditText;)V

    .line 39
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f01c5

    new-instance v2, Lcom/perm/kate/session/CaptchaDialog$1$2;

    invoke-direct {v2, p0}, Lcom/perm/kate/session/CaptchaDialog$1$2;-><init>(Lcom/perm/kate/session/CaptchaDialog$1;)V

    .line 47
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f006f

    new-instance v2, Lcom/perm/kate/session/CaptchaDialog$1$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/session/CaptchaDialog$1$1;-><init>(Lcom/perm/kate/session/CaptchaDialog$1;)V

    .line 53
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 63
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    iget-object v1, p0, Lcom/perm/kate/session/CaptchaDialog$1;->val$callback:Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;

    invoke-interface {v1}, Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;->failedToDisplay()V

    .line 68
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
