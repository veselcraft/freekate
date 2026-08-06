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

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/dynamixsoftware/CustomExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 12
    return-void
.end method

.method static addError(Ljava/lang/Throwable;ZLjava/lang/String;)V
    .locals 8
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "force_close"    # Z
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 23
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/dynamixsoftware/ExceptionSerializer;->serializeError(Ljava/lang/Throwable;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "data":Ljava/lang/String;
    sget-object v4, Lcom/dynamixsoftware/StaticVariables;->FILES_PATH:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".report"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/dynamixsoftware/StaticVariables;->FILES_PATH:Ljava/io/File;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .local v1, "file":Ljava/io/File;
    invoke-static {v0, v1}, Lcom/dynamixsoftware/Utils;->saveToFile(Ljava/lang/String;Ljava/io/File;)V

    .line 30
    invoke-static {}, Lcom/dynamixsoftware/Sender;->sendInThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v3

    .line 32
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/dynamixsoftware/CustomExceptionHandler;->addError(Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/dynamixsoftware/CustomExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 19
    return-void
.end method
