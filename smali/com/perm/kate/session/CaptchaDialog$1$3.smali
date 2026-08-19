.class Lcom/perm/kate/session/CaptchaDialog$1$3;
.super Ljava/lang/Object;
.source "CaptchaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/CaptchaDialog$1;

.field final synthetic val$et_captcha:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/CaptchaDialog$1;Landroid/widget/EditText;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/perm/kate/session/CaptchaDialog$1$3;->this$0:Lcom/perm/kate/session/CaptchaDialog$1;

    iput-object p2, p0, Lcom/perm/kate/session/CaptchaDialog$1$3;->val$et_captcha:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 42
    iget-object p2, p0, Lcom/perm/kate/session/CaptchaDialog$1$3;->val$et_captcha:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 44
    iget-object p1, p0, Lcom/perm/kate/session/CaptchaDialog$1$3;->this$0:Lcom/perm/kate/session/CaptchaDialog$1;

    iget-object p1, p1, Lcom/perm/kate/session/CaptchaDialog$1;->val$callback:Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;

    invoke-interface {p1, p2}, Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;->complete(Ljava/lang/String;)V

    return-void
.end method
