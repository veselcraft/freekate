.class Lcom/flurry/sdk/ed$1$1;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ed$1;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fd;

.field final synthetic b:Lcom/flurry/sdk/ed$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ed$1;Lcom/flurry/sdk/fd;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/flurry/sdk/ed$1$1;->b:Lcom/flurry/sdk/ed$1;

    iput-object p2, p0, Lcom/flurry/sdk/ed$1$1;->a:Lcom/flurry/sdk/fd;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/ed$1$1;->a:Lcom/flurry/sdk/fd;

    invoke-virtual {v0}, Lcom/flurry/sdk/fd;->j()V

    return-void
.end method
