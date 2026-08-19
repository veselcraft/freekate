.class Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "ColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/color_picker/widget/ColorPickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState$1;

    invoke-direct {v0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;->value:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 148
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 149
    iget p2, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
