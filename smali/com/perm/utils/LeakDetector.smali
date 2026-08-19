.class public Lcom/perm/utils/LeakDetector;
.super Ljava/lang/Object;
.source "LeakDetector.java"


# static fields
.field private static instance:Lcom/perm/utils/LeakDetector;


# instance fields
.field private final refs:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/perm/utils/LeakDetector;->refs:Ljava/util/Vector;

    return-void
.end method

.method public static getInstance()Lcom/perm/utils/LeakDetector;
    .locals 1

    .line 19
    sget-object v0, Lcom/perm/utils/LeakDetector;->instance:Lcom/perm/utils/LeakDetector;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/perm/utils/LeakDetector;

    invoke-direct {v0}, Lcom/perm/utils/LeakDetector;-><init>()V

    sput-object v0, Lcom/perm/utils/LeakDetector;->instance:Lcom/perm/utils/LeakDetector;

    .line 21
    :cond_0
    sget-object v0, Lcom/perm/utils/LeakDetector;->instance:Lcom/perm/utils/LeakDetector;

    return-object v0
.end method


# virtual methods
.method public checkLeaks()Ljava/util/Vector;
    .locals 4

    .line 36
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/perm/utils/LeakDetector;->refs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 39
    iget-object v2, p0, Lcom/perm/utils/LeakDetector;->refs:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "Unknown class"

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/perm/utils/LeakDetector;->refs:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/perm/utils/LeakDetector;->refs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->trimToSize()V

    return-object v0
.end method

.method public monitorObject(Ljava/lang/Object;)V
    .locals 2

    .line 25
    sget-boolean v0, Lcom/perm/kate/KApplication;->is_dev:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/perm/utils/LeakDetector;->refs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 30
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2

    return-void

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/perm/utils/LeakDetector;->refs:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method
