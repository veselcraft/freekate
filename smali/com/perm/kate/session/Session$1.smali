.class Lcom/perm/kate/session/Session$1;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->ShowDialogForCaptcha(Lcom/perm/kate/session/Command;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$captcha_sid:Ljava/lang/String;

.field final synthetic val$command:Lcom/perm/kate/session/Command;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Command;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/perm/kate/session/Session$1;->this$0:Lcom/perm/kate/session/Session;

    iput-object p2, p0, Lcom/perm/kate/session/Session$1;->val$command:Lcom/perm/kate/session/Command;

    iput-object p3, p0, Lcom/perm/kate/session/Session$1;->val$captcha_sid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;)V
    .locals 2
    .param p1, "user_input"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/perm/kate/session/Session$1;->val$command:Lcom/perm/kate/session/Command;

    iget-object v1, p0, Lcom/perm/kate/session/Session$1;->val$captcha_sid:Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/perm/kate/session/Session$1;->val$command:Lcom/perm/kate/session/Command;

    iput-object p1, v0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/perm/kate/session/Session$1$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/session/Session$1$1;-><init>(Lcom/perm/kate/session/Session$1;)V

    .line 174
    invoke-virtual {v0}, Lcom/perm/kate/session/Session$1$1;->start()V

    .line 175
    return-void
.end method

.method public failedToDisplay()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f070052

    invoke-virtual {v1, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    iget-object v1, p0, Lcom/perm/kate/session/Session$1;->val$command:Lcom/perm/kate/session/Command;

    invoke-virtual {v1, v0}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    .line 181
    return-void
.end method
