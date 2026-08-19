.class Lcom/perm/kate/AudioClickHelper$6;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"

# interfaces
.implements Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$a:Lcom/perm/kate/api/Audio;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$6;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$6;->val$a:Lcom/perm/kate/api/Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(J)V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$6;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$6;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v0, v0, Lcom/perm/kate/api/Audio;->duration:J

    div-long/2addr p1, v0

    const-wide/16 v0, 0x8

    mul-long p1, p1, v0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int p2, p1

    div-int/lit16 p2, p2, 0x3e8

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$6;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p1, p1, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const p2, 0x7f0f021c

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 376
    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$6;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p2, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$6;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, v1, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const v2, 0x7f0f01b5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
