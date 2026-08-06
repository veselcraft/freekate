.class public final Lcom/inmobi/commons/core/network/a;
.super Ljava/lang/Object;
.source "AsyncNetworkTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/network/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/inmobi/commons/core/network/NetworkRequest;

.field private b:Lcom/inmobi/commons/core/network/a$a;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest;Lcom/inmobi/commons/core/network/a$a;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/inmobi/commons/core/network/a;->a:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 13
    iput-object p2, p0, Lcom/inmobi/commons/core/network/a;->b:Lcom/inmobi/commons/core/network/a$a;

    .line 14
    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/core/network/a;)Lcom/inmobi/commons/core/network/NetworkRequest;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/inmobi/commons/core/network/a;->a:Lcom/inmobi/commons/core/network/NetworkRequest;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/commons/core/network/a;)Lcom/inmobi/commons/core/network/a$a;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/inmobi/commons/core/network/a;->b:Lcom/inmobi/commons/core/network/a$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/commons/core/network/a$1;

    invoke-direct {v1, p0}, Lcom/inmobi/commons/core/network/a$1;-><init>(Lcom/inmobi/commons/core/network/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 30
    return-void
.end method
