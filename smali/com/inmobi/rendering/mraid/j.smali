.class public Lcom/inmobi/rendering/mraid/j;
.super Ljava/lang/Object;
.source "MraidJsFetcher.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Lcom/inmobi/commons/core/network/NetworkRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/inmobi/rendering/mraid/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/j;->b:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/inmobi/rendering/mraid/j;->c:I

    .line 23
    iput p3, p0, Lcom/inmobi/rendering/mraid/j;->d:I

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/j;)I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/inmobi/rendering/mraid/j;->c:I

    return v0
.end method

.method static synthetic b(Lcom/inmobi/rendering/mraid/j;)Lcom/inmobi/commons/core/network/NetworkRequest;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/j;->e:Lcom/inmobi/commons/core/network/NetworkRequest;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/inmobi/rendering/mraid/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/rendering/mraid/j;)I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/inmobi/rendering/mraid/j;->d:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 27
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/j;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 28
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/j;->a:Ljava/lang/String;

    const-string v2, "MRAID Js Url provided is invalid."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/j;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/j;->e:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 34
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/rendering/mraid/j$1;

    invoke-direct {v1, p0}, Lcom/inmobi/rendering/mraid/j$1;-><init>(Lcom/inmobi/rendering/mraid/j;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
