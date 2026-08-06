.class public Lcom/perm/kate/chartview/RectD;
.super Ljava/lang/Object;
.source "RectD.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/perm/kate/chartview/RectD;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bottom:D

.field public left:D

.field public right:D

.field public top:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 540
    new-instance v0, Lcom/perm/kate/chartview/RectD$1;

    invoke-direct {v0}, Lcom/perm/kate/chartview/RectD$1;-><init>()V

    sput-object v0, Lcom/perm/kate/chartview/RectD;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 87
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 89
    check-cast v0, Lcom/perm/kate/chartview/RectD;

    .line 90
    .local v0, "r":Lcom/perm/kate/chartview/RectD;
    iget-wide v4, p0, Lcom/perm/kate/chartview/RectD;->left:D

    iget-wide v6, v0, Lcom/perm/kate/chartview/RectD;->left:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lcom/perm/kate/chartview/RectD;->top:D

    iget-wide v6, v0, Lcom/perm/kate/chartview/RectD;->top:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lcom/perm/kate/chartview/RectD;->right:D

    iget-wide v6, v0, Lcom/perm/kate/chartview/RectD;->right:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lcom/perm/kate/chartview/RectD;->bottom:D

    iget-wide v6, v0, Lcom/perm/kate/chartview/RectD;->bottom:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 12

    .prologue
    const-wide/16 v10, 0x1f

    const-wide/16 v2, 0x0

    const-wide/16 v8, 0x0

    .line 95
    iget-wide v4, p0, Lcom/perm/kate/chartview/RectD;->left:D

    cmpl-double v4, v4, v8

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/perm/kate/chartview/RectD;->left:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 96
    .local v0, "result":J
    :goto_0
    mul-long v6, v10, v0

    iget-wide v4, p0, Lcom/perm/kate/chartview/RectD;->top:D

    cmpl-double v4, v4, v8

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/perm/kate/chartview/RectD;->top:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    :goto_1
    add-long v0, v6, v4

    .line 97
    mul-long v6, v10, v0

    iget-wide v4, p0, Lcom/perm/kate/chartview/RectD;->right:D

    cmpl-double v4, v4, v8

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/perm/kate/chartview/RectD;->right:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    :goto_2
    add-long v0, v6, v4

    .line 98
    mul-long v4, v10, v0

    iget-wide v6, p0, Lcom/perm/kate/chartview/RectD;->bottom:D

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_0

    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->bottom:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    :cond_0
    add-long v0, v4, v2

    .line 99
    long-to-int v2, v0

    return v2

    .end local v0    # "result":J
    :cond_1
    move-wide v0, v2

    .line 95
    goto :goto_0

    .restart local v0    # "result":J
    :cond_2
    move-wide v4, v2

    .line 96
    goto :goto_1

    :cond_3
    move-wide v4, v2

    .line 97
    goto :goto_2
.end method

.method public final height()D
    .locals 4

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/perm/kate/chartview/RectD;->bottom:D

    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->top:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/chartview/RectD;->left:D

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/chartview/RectD;->top:D

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/chartview/RectD;->right:D

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/chartview/RectD;->bottom:D

    .line 569
    return-void
.end method

.method public set(DDDD)V
    .locals 1
    .param p1, "left"    # D
    .param p3, "top"    # D
    .param p5, "right"    # D
    .param p7, "bottom"    # D

    .prologue
    .line 204
    iput-wide p1, p0, Lcom/perm/kate/chartview/RectD;->left:D

    .line 205
    iput-wide p3, p0, Lcom/perm/kate/chartview/RectD;->top:D

    .line 206
    iput-wide p5, p0, Lcom/perm/kate/chartview/RectD;->right:D

    .line 207
    iput-wide p7, p0, Lcom/perm/kate/chartview/RectD;->bottom:D

    .line 208
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectD("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->left:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->top:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->right:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->bottom:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final width()D
    .locals 4

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/perm/kate/chartview/RectD;->right:D

    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->left:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 534
    iget-wide v0, p0, Lcom/perm/kate/chartview/RectD;->left:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 535
    iget-wide v0, p0, Lcom/perm/kate/chartview/RectD;->top:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 536
    iget-wide v0, p0, Lcom/perm/kate/chartview/RectD;->right:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 537
    iget-wide v0, p0, Lcom/perm/kate/chartview/RectD;->bottom:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 538
    return-void
.end method
