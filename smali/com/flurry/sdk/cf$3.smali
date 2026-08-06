.class Lcom/flurry/sdk/cf$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/cf;->a(Lcom/flurry/sdk/cf$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cf$a;

.field final synthetic b:Lcom/flurry/sdk/cf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cf;Lcom/flurry/sdk/cf$a;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/flurry/sdk/cf$3;->b:Lcom/flurry/sdk/cf;

    iput-object p2, p0, Lcom/flurry/sdk/cf$3;->a:Lcom/flurry/sdk/cf$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flurry/sdk/cf$3;->b:Lcom/flurry/sdk/cf;

    invoke-virtual {v0}, Lcom/flurry/sdk/cf;->f()V

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/cf$3;->b:Lcom/flurry/sdk/cf;

    invoke-virtual {v0}, Lcom/flurry/sdk/cf;->g()V

    .line 142
    iget-object v0, p0, Lcom/flurry/sdk/cf$3;->a:Lcom/flurry/sdk/cf$a;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/flurry/sdk/cf$3;->a:Lcom/flurry/sdk/cf$a;

    invoke-interface {v0}, Lcom/flurry/sdk/cf$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/cf;->d:Ljava/lang/String;

    const-string v3, "retransmitNotSentBlocks error"

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
