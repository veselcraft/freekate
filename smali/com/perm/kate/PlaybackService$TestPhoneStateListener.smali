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

    .line 110
    iput-object p1, p0, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/PlaybackService$1;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;-><init>(Lcom/perm/kate/PlaybackService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    const/4 p2, 0x1

    const-string v0, "TestPhoneStateListener "

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "OFFHOOK"

    .line 122
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {p1}, Lcom/perm/kate/PlaybackService;->access$300(Lcom/perm/kate/PlaybackService;)V

    goto :goto_0

    :cond_1
    const-string p1, "RINGING"

    .line 126
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {p1}, Lcom/perm/kate/PlaybackService;->access$300(Lcom/perm/kate/PlaybackService;)V

    goto :goto_0

    :cond_2
    const-string p1, "IDLE"

    .line 114
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {p1}, Lcom/perm/kate/PlaybackService;->access$200(Lcom/perm/kate/PlaybackService;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget p1, p1, Lcom/perm/kate/Player;->state:I

    if-ne p1, p2, :cond_3

    .line 118
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;->this$0:Lcom/perm/kate/PlaybackService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/perm/kate/PlaybackService;->access$202(Lcom/perm/kate/PlaybackService;Z)Z

    :cond_3
    :goto_0
    return-void
.end method
