.class public interface abstract Lcom/yandex/metrica/IReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onPauseSession()V
.end method

.method public abstract onResumeSession()V
.end method

.method public abstract reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract reportEvent(Ljava/lang/String;)V
.end method

.method public abstract reportEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reportUnhandledException(Ljava/lang/Throwable;)V
.end method

.method public abstract setSessionTimeout(I)V
.end method
