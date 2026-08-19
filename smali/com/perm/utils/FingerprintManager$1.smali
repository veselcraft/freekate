.class Lcom/perm/utils/FingerprintManager$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintManager.java"


# instance fields
.field final synthetic this$0:Lcom/perm/utils/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/perm/utils/FingerprintManager;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/perm/utils/FingerprintManager$1;->this$0:Lcom/perm/utils/FingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/perm/utils/FingerprintManager$1;->this$0:Lcom/perm/utils/FingerprintManager;

    invoke-static {p1}, Lcom/perm/utils/FingerprintManager;->access$000(Lcom/perm/utils/FingerprintManager;)Lcom/perm/utils/FingerprintManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/perm/utils/FingerprintManager$1;->this$0:Lcom/perm/utils/FingerprintManager;

    invoke-static {p1}, Lcom/perm/utils/FingerprintManager;->access$000(Lcom/perm/utils/FingerprintManager;)Lcom/perm/utils/FingerprintManager$Callback;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/perm/utils/FingerprintManager$Callback;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/perm/utils/FingerprintManager$1;->this$0:Lcom/perm/utils/FingerprintManager;

    invoke-static {v0}, Lcom/perm/utils/FingerprintManager;->access$100(Lcom/perm/utils/FingerprintManager;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f00e9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/perm/utils/FingerprintManager$1;->this$0:Lcom/perm/utils/FingerprintManager;

    invoke-static {v1}, Lcom/perm/utils/FingerprintManager;->access$000(Lcom/perm/utils/FingerprintManager;)Lcom/perm/utils/FingerprintManager$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/perm/utils/FingerprintManager$1;->this$0:Lcom/perm/utils/FingerprintManager;

    invoke-static {v1}, Lcom/perm/utils/FingerprintManager;->access$000(Lcom/perm/utils/FingerprintManager;)Lcom/perm/utils/FingerprintManager$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/perm/utils/FingerprintManager$Callback;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/perm/utils/FingerprintManager$1;->this$0:Lcom/perm/utils/FingerprintManager;

    invoke-static {p1}, Lcom/perm/utils/FingerprintManager;->access$000(Lcom/perm/utils/FingerprintManager;)Lcom/perm/utils/FingerprintManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/perm/utils/FingerprintManager$1;->this$0:Lcom/perm/utils/FingerprintManager;

    invoke-static {p1}, Lcom/perm/utils/FingerprintManager;->access$000(Lcom/perm/utils/FingerprintManager;)Lcom/perm/utils/FingerprintManager$Callback;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/perm/utils/FingerprintManager$Callback;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/perm/utils/FingerprintManager$1;->this$0:Lcom/perm/utils/FingerprintManager;

    invoke-static {p1}, Lcom/perm/utils/FingerprintManager;->access$000(Lcom/perm/utils/FingerprintManager;)Lcom/perm/utils/FingerprintManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/perm/utils/FingerprintManager$1;->this$0:Lcom/perm/utils/FingerprintManager;

    invoke-static {p1}, Lcom/perm/utils/FingerprintManager;->access$000(Lcom/perm/utils/FingerprintManager;)Lcom/perm/utils/FingerprintManager$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/perm/utils/FingerprintManager$Callback;->success()V

    :cond_0
    return-void
.end method
