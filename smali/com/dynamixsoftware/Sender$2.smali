.class Lcom/dynamixsoftware/Sender$2;
.super Ljava/lang/Thread;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dynamixsoftware/Sender;->sendInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 22
    invoke-static {}, Lcom/dynamixsoftware/Sender;->send()V

    .line 23
    return-void
.end method
