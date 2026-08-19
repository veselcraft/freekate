.class public Lcom/google/firebase/components/Lazy;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@17.1.0"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# static fields
.field private static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private volatile instance:Ljava/lang/Object;

.field private volatile provider:Lcom/google/firebase/inject/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/components/Lazy;->UNINITIALIZED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/inject/Provider;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/google/firebase/components/Lazy;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/firebase/components/Lazy;->instance:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/google/firebase/components/Lazy;->provider:Lcom/google/firebase/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/google/firebase/components/Lazy;->instance:Ljava/lang/Object;

    .line 51
    sget-object v1, Lcom/google/firebase/components/Lazy;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/Lazy;->instance:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/firebase/components/Lazy;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/google/firebase/components/Lazy;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/google/firebase/components/Lazy;->provider:Lcom/google/firebase/inject/Provider;

    .line 61
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
