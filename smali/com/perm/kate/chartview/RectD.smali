.class public Lcom/perm/kate/chartview/RectD;
.super Ljava/lang/Object;
.source "RectD.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
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

    .line 540
    new-instance v0, Lcom/perm/kate/chartview/RectD$1;

    invoke-direct {v0}, Lcom/perm/kate/chartview/RectD$1;-><init>()V

    sput-object v0, Lcom/perm/kate/chartview/RectD;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 86
    const-class v2, Lcom/perm/kate/chartview/RectD;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    check-cast p1, Lcom/perm/kate/chartview/RectD;

    .line 90
    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->left:D

    iget-wide v4, p1, Lcom/perm/kate/chartview/RectD;->left:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->top:D

    iget-wide v4, p1, Lcom/perm/kate/chartview/RectD;->top:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->right:D

    iget-wide v4, p1, Lcom/perm/kate/chartview/RectD;->right:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->bottom:D

    iget-wide v4, p1, Lcom/perm/kate/chartview/RectD;->bottom:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 11

    .line 95
    iget-wide v0, p0, Lcom/perm/kate/chartview/RectD;->left:D

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    const-wide/16 v6, 0x1f

    mul-long v0, v0, v6

    .line 96
    iget-wide v8, p0, Lcom/perm/kate/chartview/RectD;->top:D

    cmpl-double v10, v8, v4

    if-eqz v10, :cond_1

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v2

    :goto_1
    add-long/2addr v0, v8

    mul-long v0, v0, v6

    .line 97
    iget-wide v8, p0, Lcom/perm/kate/chartview/RectD;->right:D

    cmpl-double v10, v8, v4

    if-eqz v10, :cond_2

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    goto :goto_2

    :cond_2
    move-wide v8, v2

    :goto_2
    add-long/2addr v0, v8

    mul-long v0, v0, v6

    .line 98
    iget-wide v6, p0, Lcom/perm/kate/chartview/RectD;->bottom:D

    cmpl-double v8, v6, v4

    if-eqz v8, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    :cond_3
    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final height()D
    .locals 4

    .line 167
    iget-wide v0, p0, Lcom/perm/kate/chartview/RectD;->bottom:D

    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->top:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

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

    return-void
.end method

.method public set(DDDD)V
    .locals 0

    .line 204
    iput-wide p1, p0, Lcom/perm/kate/chartview/RectD;->left:D

    .line 205
    iput-wide p3, p0, Lcom/perm/kate/chartview/RectD;->top:D

    .line 206
    iput-wide p5, p0, Lcom/perm/kate/chartview/RectD;->right:D

    .line 207
    iput-wide p7, p0, Lcom/perm/kate/chartview/RectD;->bottom:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectD("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/perm/kate/chartview/RectD;->left:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->top:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->right:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/perm/kate/chartview/RectD;->bottom:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final width()D
    .locals 4

    .line 159
    iget-wide v0, p0, Lcom/perm/kate/chartview/RectD;->right:D

    iget-wide v2, p0, Lcom/perm/kate/chartview/RectD;->left:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

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

    return-void
.end method
