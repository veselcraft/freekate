.class public final Lcom/inmobi/commons/core/network/d;
.super Ljava/lang/Object;
.source "SyncNetworkTask.java"


# instance fields
.field private a:Lcom/inmobi/commons/core/network/NetworkRequest;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/inmobi/commons/core/network/d;->a:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 12
    return-void
.end method


# virtual methods
.method public a()Lcom/inmobi/commons/core/network/c;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/inmobi/commons/core/network/b;

    iget-object v1, p0, Lcom/inmobi/commons/core/network/d;->a:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/network/b;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 16
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/b;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v0

    return-object v0
.end method
