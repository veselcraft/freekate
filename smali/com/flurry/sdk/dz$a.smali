.class final Lcom/flurry/sdk/dz$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dz;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/dz;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/flurry/sdk/dz$a;->a:Lcom/flurry/sdk/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/dz;Lcom/flurry/sdk/dz$1;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dz$a;-><init>(Lcom/flurry/sdk/dz;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/dz$a;->a:Lcom/flurry/sdk/dz;

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/dz;->a(Lcom/flurry/sdk/dz;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/dz$a;->a:Lcom/flurry/sdk/dz;

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/dz;->b(Lcom/flurry/sdk/dz;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
