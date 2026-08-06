.class Lcom/flurry/sdk/cf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/cf;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/cf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/flurry/sdk/cf$1;->b:Lcom/flurry/sdk/cf;

    iput-object p2, p0, Lcom/flurry/sdk/cf$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flurry/sdk/cf$1;->b:Lcom/flurry/sdk/cf;

    invoke-virtual {v0}, Lcom/flurry/sdk/cf;->f()V

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/cf$1;->b:Lcom/flurry/sdk/cf;

    new-instance v1, Lcom/flurry/sdk/ci;

    iget-object v2, p0, Lcom/flurry/sdk/cf$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/ci;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/flurry/sdk/cf;->h:Lcom/flurry/sdk/ci;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/cf;->d:Ljava/lang/String;

    const-string v3, "initialization of FlurryDataSenderIndex error"

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
