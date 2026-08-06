.class final Lcom/flurry/sdk/eq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/eq;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/eq;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/flurry/sdk/eq$a;->a:Lcom/flurry/sdk/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/eq;Lcom/flurry/sdk/eq$1;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/flurry/sdk/eq$a;-><init>(Lcom/flurry/sdk/eq;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/eq$a;->a:Lcom/flurry/sdk/eq;

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/eq;->a(Lcom/flurry/sdk/eq;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/eq$a;->a:Lcom/flurry/sdk/eq;

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/eq;->b(Lcom/flurry/sdk/eq;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 108
    return-void
.end method
