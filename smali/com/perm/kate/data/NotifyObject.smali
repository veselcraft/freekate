.class public Lcom/perm/kate/data/NotifyObject;
.super Ljava/lang/Object;
.source "NotifyObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/data/NotifyObject$EventsListener;
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/data/NotifyObject$EventsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/data/NotifyObject;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized addEventsListener(Lcom/perm/kate/data/NotifyObject$EventsListener;)V
    .locals 1
    .param p1, "l"    # Lcom/perm/kate/data/NotifyObject$EventsListener;

    .prologue
    .line 12
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/data/NotifyObject;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/perm/kate/data/NotifyObject;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_0
    monitor-exit p0

    return-void

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized fireOnChange()V
    .locals 3

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/data/NotifyObject;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 20
    iget-object v2, p0, Lcom/perm/kate/data/NotifyObject;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/perm/kate/data/NotifyObject$EventsListener;

    .line 21
    .local v0, "el":[Lcom/perm/kate/data/NotifyObject$EventsListener;
    iget-object v2, p0, Lcom/perm/kate/data/NotifyObject;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 23
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/perm/kate/data/NotifyObject$EventsListener;->onChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "el":[Lcom/perm/kate/data/NotifyObject$EventsListener;
    .end local v1    # "i":I
    :cond_0
    monitor-exit p0

    return-void

    .line 19
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
