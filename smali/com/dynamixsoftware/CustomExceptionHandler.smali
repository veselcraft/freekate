.class Lcom/dynamixsoftware/CustomExceptionHandler;
.super Ljava/lang/Object;
.source "CustomExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/dynamixsoftware/CustomExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static addError(Ljava/lang/Throwable;ZLjava/lang/String;)V
    .locals 2

    .line 23
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/dynamixsoftware/ExceptionSerializer;->serializeError(Ljava/lang/Throwable;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    sget-object p1, Lcom/dynamixsoftware/StaticVariables;->FILES_PATH:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".report"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance p2, Ljava/io/File;

    sget-object v0, Lcom/dynamixsoftware/StaticVariables;->FILES_PATH:Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    invoke-static {p0, p2}, Lcom/dynamixsoftware/Utils;->saveToFile(Ljava/lang/String;Ljava/io/File;)V

    .line 30
    invoke-static {}, Lcom/dynamixsoftware/Sender;->sendInThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 15
    invoke-static {p2}, Lcom/perm/kate/WallFragment;->getSteps(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v1, v0}, Lcom/dynamixsoftware/CustomExceptionHandler;->addError(Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/dynamixsoftware/CustomExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
