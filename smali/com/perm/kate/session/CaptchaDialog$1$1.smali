.class Lcom/perm/kate/session/CaptchaDialog$1$1;
.super Ljava/lang/Object;
.source "CaptchaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/CaptchaDialog$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/CaptchaDialog$1;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/perm/kate/session/CaptchaDialog$1$1;->this$0:Lcom/perm/kate/session/CaptchaDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/perm/kate/session/CaptchaDialog$1$1;->this$0:Lcom/perm/kate/session/CaptchaDialog$1;

    iget-object p1, p1, Lcom/perm/kate/session/CaptchaDialog$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/perm/kate/session/CaptchaDialog;->access$000(Landroid/app/Activity;)V

    .line 57
    iget-object p1, p0, Lcom/perm/kate/session/CaptchaDialog$1$1;->this$0:Lcom/perm/kate/session/CaptchaDialog$1;

    iget-object p1, p1, Lcom/perm/kate/session/CaptchaDialog$1;->val$callback:Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;

    invoke-interface {p1}, Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;->failedToDisplay()V

    return-void
.end method
