.class public abstract Lcom/perm/kate/audio_cache/AudioCacheService;
.super Landroid/app/Service;
.source "AudioCacheService.java"


# static fields
.field public static currentDownloadId:Ljava/lang/Long;

.field public static currentLength:I

.field public static currentProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    return-void
.end method
