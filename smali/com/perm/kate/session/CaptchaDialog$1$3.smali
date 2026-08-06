.class Lcom/perm/kate/session/CaptchaDialog$1$3;
.super Ljava/lang/Object;
.source "CaptchaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/CaptchaDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/CaptchaDialog$1;

.field final synthetic val$et_captcha:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/CaptchaDialog$1;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/CaptchaDialog$1;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/perm/kate/session/CaptchaDialog$1$3;->this$0:Lcom/perm/kate/session/CaptchaDialog$1;

    iput-object p2, p0, Lcom/perm/kate/session/CaptchaDialog$1$3;->val$et_captcha:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 41
    iget-object v1, p0, Lcom/perm/kate/session/CaptchaDialog$1$3;->val$et_captcha:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "captcha_key":Ljava/lang/String;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    iget-object v1, p0, Lcom/perm/kate/session/CaptchaDialog$1$3;->this$0:Lcom/perm/kate/session/CaptchaDialog$1;

    iget-object v1, v1, Lcom/perm/kate/session/CaptchaDialog$1;->val$callback:Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;

    invoke-interface {v1, v0}, Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;->complete(Ljava/lang/String;)V

    .line 44
    return-void
.end method
