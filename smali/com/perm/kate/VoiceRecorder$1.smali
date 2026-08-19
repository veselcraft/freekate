.class Lcom/perm/kate/VoiceRecorder$1;
.super Ljava/util/TimerTask;
.source "VoiceRecorder.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VoiceRecorder;


# direct methods
.method public static synthetic $r8$lambda$UzsuRBMor8e5TaEyiZWIInHBqu0(Lcom/perm/kate/VoiceRecorder$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/VoiceRecorder$1;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/VoiceRecorder;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/perm/kate/VoiceRecorder$1;->this$0:Lcom/perm/kate/VoiceRecorder;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/perm/kate/VoiceRecorder$1;->this$0:Lcom/perm/kate/VoiceRecorder;

    invoke-static {v0}, Lcom/perm/kate/VoiceRecorder;->access$100(Lcom/perm/kate/VoiceRecorder;)Lcom/perm/utils/TimerTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/VoiceRecorder$1;->this$0:Lcom/perm/kate/VoiceRecorder;

    invoke-static {v0}, Lcom/perm/kate/VoiceRecorder;->access$100(Lcom/perm/kate/VoiceRecorder;)Lcom/perm/utils/TimerTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/VoiceRecorder$1;->this$0:Lcom/perm/kate/VoiceRecorder;

    invoke-static {v1}, Lcom/perm/kate/VoiceRecorder;->access$000(Lcom/perm/kate/VoiceRecorder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/perm/utils/TimerTextView;->setTime(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/perm/kate/VoiceRecorder$1;->this$0:Lcom/perm/kate/VoiceRecorder;

    invoke-static {v0}, Lcom/perm/kate/VoiceRecorder;->access$008(Lcom/perm/kate/VoiceRecorder;)I

    .line 160
    iget-object v0, p0, Lcom/perm/kate/VoiceRecorder$1;->this$0:Lcom/perm/kate/VoiceRecorder;

    invoke-static {v0}, Lcom/perm/kate/VoiceRecorder;->access$100(Lcom/perm/kate/VoiceRecorder;)Lcom/perm/utils/TimerTextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VoiceRecorder$1;->this$0:Lcom/perm/kate/VoiceRecorder;

    invoke-static {v0}, Lcom/perm/kate/VoiceRecorder;->access$100(Lcom/perm/kate/VoiceRecorder;)Lcom/perm/utils/TimerTextView;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/VoiceRecorder$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/perm/kate/VoiceRecorder$1$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/VoiceRecorder$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
