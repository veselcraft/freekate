.class final Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState$1;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;
    .locals 1

    .line 3242
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 3239
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;
    .locals 0

    .line 3247
    new-array p1, p1, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3239
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState$1;->newArray(I)[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method
