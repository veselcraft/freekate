.class public Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;
.super Ljava/lang/Object;
.source "SmilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/smile/SmilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmileSelectedListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backspace()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public selected(Ljava/lang/String;)V
    .locals 0
    .param p1, "smile_code"    # Ljava/lang/String;

    .prologue
    .line 105
    return-void
.end method

.method public smileButtonClick()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public stickerSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "sticker_id"    # Ljava/lang/Integer;

    .prologue
    .line 107
    return-void
.end method

.method public stickersConfigure()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method
