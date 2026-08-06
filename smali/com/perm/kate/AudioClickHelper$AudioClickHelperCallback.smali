.class public Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioClickHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioClickHelperCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public audioDeletedFromCache(J)V
    .locals 0
    .param p1, "audio_id"    # J

    .prologue
    .line 474
    return-void
.end method

.method public audioSelectForDelete(J)V
    .locals 0
    .param p1, "audio_id"    # J

    .prologue
    .line 475
    return-void
.end method
