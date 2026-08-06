.class Lcom/perm/kate/AudioClickHelper$3;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"

# interfaces
.implements Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioClickHelper;->showBitrate(Lcom/perm/kate/api/Audio;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$a:Lcom/perm/kate/api/Audio;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioClickHelper;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(J)V
    .locals 9
    .param p1, "length"    # J

    .prologue
    .line 216
    iget-object v3, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v3, v3, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v3, v3, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v3}, Lcom/perm/kate/BaseActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v4, v3, Lcom/perm/kate/api/Audio;->duration:J

    div-long v4, p1, v4

    const-wide/16 v6, 0x8

    mul-long v0, v4, v6

    .line 218
    .local v0, "bits":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int v4, v0

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v4, v4, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const v5, 0x7f0701c0

    invoke-virtual {v4, v5}, Lcom/perm/kate/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "kbits":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v3, v3, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v5, v5, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const v6, 0x7f07014c

    invoke-virtual {v5, v6}, Lcom/perm/kate/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 221
    .end local v0    # "bits":J
    .end local v2    # "kbits":Ljava/lang/String;
    :cond_0
    return-void
.end method
