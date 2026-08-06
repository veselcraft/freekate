.class public Lcom/perm/utils/LeakDetector;
.super Ljava/lang/Object;
.source "LeakDetector.java"


# static fields
.field private static instance:Lcom/perm/utils/LeakDetector;


# instance fields
.field private final refs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/utils/LeakDetector;->instance:Lcom/perm/utils/LeakDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/perm/utils/LeakDetector;->refs:Ljava/util/Vector;

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/perm/utils/LeakDetector;
    .locals 1

    .prologue
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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 37
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 38
    .local v2, "names":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/perm/utils/LeakDetector;->refs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 39
    iget-object v4, p0, Lcom/perm/utils/LeakDetector;->refs:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 40
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "Unknown class"

    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 38
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 45
    :cond_1
    iget-object v4, p0, Lcom/perm/utils/LeakDetector;->refs:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 48
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/perm/utils/LeakDetector;->refs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->trimToSize()V

    .line 49
    return-object v2
.end method

.method public monitorObject(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 25
    sget-boolean v1, Lcom/perm/kate/KApplication;->is_dev:Z

    if-nez v1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    if-eqz p1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/perm/utils/LeakDetector;->refs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 30
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    goto :goto_0

    .line 32
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    :cond_3
    iget-object v1, p0, Lcom/perm/utils/LeakDetector;->refs:Ljava/util/Vector;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
