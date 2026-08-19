.class Lcom/perm/kate/chartview/RectD$1;
.super Ljava/lang/Object;
.source "RectD.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/perm/kate/chartview/RectD;
    .locals 1

    .line 545
    new-instance v0, Lcom/perm/kate/chartview/RectD;

    invoke-direct {v0}, Lcom/perm/kate/chartview/RectD;-><init>()V

    .line 546
    invoke-virtual {v0, p1}, Lcom/perm/kate/chartview/RectD;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 540
    invoke-virtual {p0, p1}, Lcom/perm/kate/chartview/RectD$1;->createFromParcel(Landroid/os/Parcel;)Lcom/perm/kate/chartview/RectD;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/perm/kate/chartview/RectD;
    .locals 0

    .line 554
    new-array p1, p1, [Lcom/perm/kate/chartview/RectD;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 540
    invoke-virtual {p0, p1}, Lcom/perm/kate/chartview/RectD$1;->newArray(I)[Lcom/perm/kate/chartview/RectD;

    move-result-object p1

    return-object p1
.end method
