.class Lcom/perm/utils/BackgroundMusicCounter$1;
.super Ljava/lang/Object;
.source "BackgroundMusicCounter.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 127
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->pause()V

    .line 128
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->toast()V

    return-void
.end method
