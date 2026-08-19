.class public Lcom/perm/kate/color_picker/widget/ColorPickerPreference;
.super Landroid/preference/Preference;
.source "ColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;,
        Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private colorChangedListener:Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;

.field value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0c0044

    .line 24
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/color_picker/widget/ColorPickerPreference;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->changeValue(I)V

    return-void
.end method

.method private changeValue(I)V
    .locals 1

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iput p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    .line 66
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistInt(I)Z

    .line 67
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 68
    iget p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    invoke-direct {p0, p1}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->onColorChanged(I)V

    return-void
.end method

.method private onColorChanged(I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->colorChangedListener:Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p1}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;->colorChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public forceSetValue(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    .line 77
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistInt(I)Z

    .line 78
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public getValue()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0900cf

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    iget v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 4

    .line 40
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/Settings;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    new-instance v3, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$1;-><init>(Lcom/perm/kate/color_picker/widget/ColorPickerPreference;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/perm/kate/color_picker/ColorPickerDialog;-><init>(Landroid/content/Context;ILcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;)V

    .line 52
    invoke-virtual {v0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->show()V

    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 55
    const-class v2, Lcom/perm/kate/ColorPickerActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    iget v2, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    const-string v3, "com.perm.kate.default_color"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "com.perm.kate.is_theme"

    .line 57
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.perm.kate.key_preference"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x7d5

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 126
    :cond_0
    check-cast p1, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;

    .line 127
    invoke-virtual {p1}, Landroid/preference/Preference$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 128
    iget p1, p1, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;->value:I

    iput p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    .line 129
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 109
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 112
    :cond_0
    new-instance v1, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 113
    iget v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    iput v0, v1, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;->value:I

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 94
    iget p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->getPersistedInt(I)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    goto :goto_0

    .line 96
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 97
    iput p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    .line 98
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistInt(I)Z

    :goto_0
    return-void
.end method

.method public onSettingsActivityResult(I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->changeValue(I)V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->colorChangedListener:Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;

    return-void
.end method
