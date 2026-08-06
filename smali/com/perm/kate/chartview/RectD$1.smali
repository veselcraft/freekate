.class final Lcom/perm/kate/chartview/RectD$1;
.super Ljava/lang/Object;
.source "RectD.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/chartview/RectD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/perm/kate/chartview/RectD;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/perm/kate/chartview/RectD;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 545
    new-instance v0, Lcom/perm/kate/chartview/RectD;

    invoke-direct {v0}, Lcom/perm/kate/chartview/RectD;-><init>()V

    .line 546
    .local v0, "r":Lcom/perm/kate/chartview/RectD;
    invoke-virtual {v0, p1}, Lcom/perm/kate/chartview/RectD;->readFromParcel(Landroid/os/Parcel;)V

    .line 547
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Lcom/perm/kate/chartview/RectD$1;->createFromParcel(Landroid/os/Parcel;)Lcom/perm/kate/chartview/RectD;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/perm/kate/chartview/RectD;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 554
    new-array v0, p1, [Lcom/perm/kate/chartview/RectD;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Lcom/perm/kate/chartview/RectD$1;->newArray(I)[Lcom/perm/kate/chartview/RectD;

    move-result-object v0

    return-object v0
.end method
