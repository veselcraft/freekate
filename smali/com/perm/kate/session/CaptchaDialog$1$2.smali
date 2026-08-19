.class Lcom/perm/kate/session/CaptchaDialog$1$2;
.super Ljava/lang/Object;
.source "CaptchaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/CaptchaDialog$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/CaptchaDialog$1;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/perm/kate/session/CaptchaDialog$1$2;->this$0:Lcom/perm/kate/session/CaptchaDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/perm/kate/session/CaptchaDialog$1$2;->this$0:Lcom/perm/kate/session/CaptchaDialog$1;

    iget-object p1, p1, Lcom/perm/kate/session/CaptchaDialog$1;->val$callback:Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;

    invoke-interface {p1}, Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;->failedToDisplay()V

    return-void
.end method
