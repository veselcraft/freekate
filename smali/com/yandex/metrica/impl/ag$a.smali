.class Lcom/yandex/metrica/impl/ag$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ag;

.field private final b:Lcom/yandex/metrica/impl/ah;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ag;Lcom/yandex/metrica/impl/ah;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/yandex/metrica/impl/ag$a;->a:Lcom/yandex/metrica/impl/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p2, p0, Lcom/yandex/metrica/impl/ag$a;->b:Lcom/yandex/metrica/impl/ah;

    .line 290
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ag;Lcom/yandex/metrica/impl/ah;B)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ag$a;-><init>(Lcom/yandex/metrica/impl/ag;Lcom/yandex/metrica/impl/ah;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag$a;->a:Lcom/yandex/metrica/impl/ag;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ag$a;->b:Lcom/yandex/metrica/impl/ah;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ag;->c(Lcom/yandex/metrica/impl/ah;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
