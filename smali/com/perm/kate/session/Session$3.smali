.class Lcom/perm/kate/session/Session$3;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$captcha_sid:Ljava/lang/String;

.field final synthetic val$command:Lcom/perm/kate/session/Command;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Command;Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/perm/kate/session/Session$3;->this$0:Lcom/perm/kate/session/Session;

    iput-object p2, p0, Lcom/perm/kate/session/Session$3;->val$command:Lcom/perm/kate/session/Command;

    iput-object p3, p0, Lcom/perm/kate/session/Session$3;->val$captcha_sid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/perm/kate/session/Session$3;->val$command:Lcom/perm/kate/session/Command;

    iget-object v1, p0, Lcom/perm/kate/session/Session$3;->val$captcha_sid:Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    .line 268
    iput-object p1, v0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    .line 269
    new-instance p1, Lcom/perm/kate/session/Session$3$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/session/Session$3$1;-><init>(Lcom/perm/kate/session/Session$3;)V

    .line 274
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public failedToDisplay()V
    .locals 3

    .line 278
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f006d

    invoke-virtual {v1, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    iget-object v1, p0, Lcom/perm/kate/session/Session$3;->val$command:Lcom/perm/kate/session/Command;

    invoke-virtual {v1, v0}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    return-void
.end method
