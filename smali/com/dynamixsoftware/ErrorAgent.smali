.class public abstract Lcom/dynamixsoftware/ErrorAgent;
.super Ljava/lang/Object;
.source "ErrorAgent.java"


# static fields
.field public static TAG:Ljava/lang/String; = "ErrorAgent"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static register(Landroid/content/Context;J)V
    .locals 2

    .line 11
    sget-object v0, Lcom/dynamixsoftware/ErrorAgent;->TAG:Ljava/lang/String;

    const-string v1, "Registering custom exceptions handler"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {p0, p1, p2}, Lcom/dynamixsoftware/StaticVariables;->init(Landroid/content/Context;J)V

    .line 13
    new-instance p0, Lcom/dynamixsoftware/CustomExceptionHandler;

    invoke-direct {p0}, Lcom/dynamixsoftware/CustomExceptionHandler;-><init>()V

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 14
    invoke-static {}, Lcom/dynamixsoftware/Sender;->sendInThread()V

    return-void
.end method

.method public static reportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-static {p0, v0, p1}, Lcom/dynamixsoftware/CustomExceptionHandler;->addError(Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method
