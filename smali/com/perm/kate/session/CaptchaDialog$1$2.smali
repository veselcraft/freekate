.class Lcom/perm/kate/session/CaptchaDialog$1$2;
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


# direct methods
.method constructor <init>(Lcom/perm/kate/session/CaptchaDialog$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/CaptchaDialog$1;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/perm/kate/session/CaptchaDialog$1$2;->this$0:Lcom/perm/kate/session/CaptchaDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/session/CaptchaDialog$1$2;->this$0:Lcom/perm/kate/session/CaptchaDialog$1;

    iget-object v0, v0, Lcom/perm/kate/session/CaptchaDialog$1;->val$callback:Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;

    invoke-interface {v0}, Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;->failedToDisplay()V

    .line 50
    return-void
.end method
