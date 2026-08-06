.class public abstract Lcom/perm/kate/Player$PlayerCallback;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlayerCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCompletion()V
.end method

.method public abstract onError()V
.end method

.method public abstract onNextEpisode()V
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onStartBuffering()V
.end method

.method public abstract onStateChanged()V
.end method
