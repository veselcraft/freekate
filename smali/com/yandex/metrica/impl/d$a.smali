.class public Lcom/yandex/metrica/impl/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:J


# instance fields
.field private b:J

.field private c:J

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/metrica/impl/d$a;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Lcom/yandex/metrica/impl/d$a;->a:J

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/d$a;-><init>(J)V

    .line 29
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/d$a;->c:J

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/d$a;->d:Ljava/lang/Object;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/d$a;->e:Z

    .line 32
    iput-wide p1, p0, Lcom/yandex/metrica/impl/d$a;->b:J

    .line 33
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yandex/metrica/impl/d$a;->d:Ljava/lang/Object;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/d$a;->c:J

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/d$a;->e:Z

    .line 47
    return-void
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/d$a;->e:Z

    return v0
.end method

.method protected b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/d$a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yandex/metrica/impl/d$a;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final d()Z
    .locals 6

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/yandex/metrica/impl/d$a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yandex/metrica/impl/d$a;->c:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
