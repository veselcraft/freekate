.class public final Lcom/google/android/exoplayer2/Player$Commands;
.super Ljava/lang/Object;
.source "Player.java"


# instance fields
.field private final flags:Lcom/google/android/exoplayer2/util/ExoFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 645
    new-instance v0, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/util/ExoFlags;)V
    .locals 0

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p1, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/ExoFlags;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/ExoFlags;Lcom/google/android/exoplayer2/Player$1;)V
    .locals 0

    .line 573
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/Player$Commands;-><init>(Lcom/google/android/exoplayer2/util/ExoFlags;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/util/ExoFlags;
    .locals 0

    .line 573
    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/ExoFlags;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 680
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/Player$Commands;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 683
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Player$Commands;

    .line 684
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/ExoFlags;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/ExoFlags;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ExoFlags;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/ExoFlags;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ExoFlags;->hashCode()I

    move-result v0

    return v0
.end method
