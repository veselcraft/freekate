.class Lcom/dynamixsoftware/Sender$1;
.super Ljava/lang/Thread;
.source "Sender.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 19
    invoke-static {}, Lcom/dynamixsoftware/Sender;->send()V

    return-void
.end method
