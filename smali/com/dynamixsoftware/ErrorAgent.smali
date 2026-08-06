.class public Lcom/dynamixsoftware/ErrorAgent;
.super Ljava/lang/Object;
.source "ErrorAgent.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "ErrorAgent"

    sput-object v0, Lcom/dynamixsoftware/ErrorAgent;->TAG:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static register(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "project_id"    # J

    .prologue
    .line 11
    sget-object v0, Lcom/dynamixsoftware/ErrorAgent;->TAG:Ljava/lang/String;

    const-string v1, "Registering custom exceptions handler"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {p0, p1, p2}, Lcom/dynamixsoftware/StaticVariables;->init(Landroid/content/Context;J)V

    .line 13
    new-instance v0, Lcom/dynamixsoftware/CustomExceptionHandler;

    invoke-direct {v0}, Lcom/dynamixsoftware/CustomExceptionHandler;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 14
    invoke-static {}, Lcom/dynamixsoftware/Sender;->sendInThread()V

    .line 15
    return-void
.end method

.method public static reportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/dynamixsoftware/CustomExceptionHandler;->addError(Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 19
    return-void
.end method
