.class Lcom/perm/kate/PlaybackService$TestPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlaybackService;


# direct methods
.method private constructor <init>(Lcom/perm/kate/PlaybackService;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/PlaybackService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/perm/kate/PlaybackService;
    .param p2, "x1"    # Lcom/perm/kate/PlaybackService$1;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;-><init>(Lcom/perm/kate/PlaybackService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 102
    packed-switch p1, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 104
    :pswitch_0
    const-string v0, "TestPhoneStateListener "

    const-string v1, "IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$200(Lcom/perm/kate/PlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$300(Lcom/perm/kate/PlaybackService;)V

    .line 107
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;->this$0:Lcom/perm/kate/PlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/PlaybackService;->access$202(Lcom/perm/kate/PlaybackService;Z)Z

    goto :goto_0

    .line 111
    :pswitch_1
    const-string v0, "TestPhoneStateListener "

    const-string v1, "OFFHOOK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$400(Lcom/perm/kate/PlaybackService;)V

    goto :goto_0

    .line 115
    :pswitch_2
    const-string v0, "TestPhoneStateListener "

    const-string v1, "RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$400(Lcom/perm/kate/PlaybackService;)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
