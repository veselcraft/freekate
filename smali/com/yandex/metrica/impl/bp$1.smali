.class Lcom/yandex/metrica/impl/bp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/bp;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/bp;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/yandex/metrica/impl/bp$1;->a:Lcom/yandex/metrica/impl/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp$1;->a:Lcom/yandex/metrica/impl/bp;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bp;->a(Lcom/yandex/metrica/impl/bp;)Lcom/yandex/metrica/impl/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp$1;->a:Lcom/yandex/metrica/impl/bp;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bp;->a(Lcom/yandex/metrica/impl/bp;)Lcom/yandex/metrica/impl/aa;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/aa;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp$1;->a:Lcom/yandex/metrica/impl/bp;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bp;->b(Lcom/yandex/metrica/impl/bp;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp$1;->a:Lcom/yandex/metrica/impl/bp;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bp;->b(Lcom/yandex/metrica/impl/bp;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 353
    :cond_1
    return-void

    .line 349
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/bp$1;->a:Lcom/yandex/metrica/impl/bp;

    invoke-static {v1}, Lcom/yandex/metrica/impl/bp;->b(Lcom/yandex/metrica/impl/bp;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p0, Lcom/yandex/metrica/impl/bp$1;->a:Lcom/yandex/metrica/impl/bp;

    invoke-static {v1}, Lcom/yandex/metrica/impl/bp;->b(Lcom/yandex/metrica/impl/bp;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    throw v0
.end method
