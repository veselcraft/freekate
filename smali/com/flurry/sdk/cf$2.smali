.class Lcom/flurry/sdk/cf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/cf;->c([BLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/flurry/sdk/cf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cf;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/flurry/sdk/cf$2;->d:Lcom/flurry/sdk/cf;

    iput-object p2, p0, Lcom/flurry/sdk/cf$2;->a:[B

    iput-object p3, p0, Lcom/flurry/sdk/cf$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/sdk/cf$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/flurry/sdk/cf$2;->d:Lcom/flurry/sdk/cf;

    invoke-virtual {v0}, Lcom/flurry/sdk/cf;->f()V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/cf$2;->d:Lcom/flurry/sdk/cf;

    iget-object v1, p0, Lcom/flurry/sdk/cf$2;->a:[B

    iget-object v2, p0, Lcom/flurry/sdk/cf$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/cf$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/cf;->d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/cf;->d:Ljava/lang/String;

    const-string v3, "storeData error"

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
