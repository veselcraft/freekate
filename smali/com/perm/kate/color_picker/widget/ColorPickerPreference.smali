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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->setWidgetLayoutResource(I)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/color_picker/widget/ColorPickerPreference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/color_picker/widget/ColorPickerPreference;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->changeValue(I)V

    return-void
.end method

.method private changeValue(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_0
    iput p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    .line 66
    iget v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    invoke-virtual {p0, v0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->persistInt(I)Z

    .line 67
    invoke-virtual {p0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->notifyChanged()V

    .line 68
    iget v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    invoke-direct {p0, v0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->onColorChanged(I)V

    goto :goto_0
.end method

.method private onColorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->colorChangedListener:Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->colorChangedListener:Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;

    invoke-interface {v0, p1}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;->colorChanged(I)V

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public forceSetValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    .line 77
    invoke-virtual {p0, p1}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->persistInt(I)Z

    .line 78
    invoke-virtual {p0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->notifyChanged()V

    .line 79
    return-void
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 32
    const v1, 0x7f0e00e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "box":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 34
    iget v1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 6

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Settings;

    .line 41
    .local v1, "settings":Lcom/perm/kate/Settings;
    if-nez v1, :cond_0

    .line 42
    new-instance v2, Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-virtual {p0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    new-instance v5, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$1;

    invoke-direct {v5, p0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$1;-><init>(Lcom/perm/kate/color_picker/widget/ColorPickerPreference;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/perm/kate/color_picker/ColorPickerDialog;-><init>(Landroid/content/Context;ILcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;)V

    .line 52
    invoke-virtual {v2}, Lcom/perm/kate/color_picker/ColorPickerDialog;->show()V

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/perm/kate/ColorPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    const-string v2, "com.perm.kate.default_color"

    iget v3, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const-string v2, "com.perm.kate.is_theme"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    const-string v2, "com.perm.kate.key_preference"

    invoke-virtual {p0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const/16 v2, 0x7d5

    invoke-virtual {v1, v0, v2}, Lcom/perm/kate/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 130
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 126
    check-cast v0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;

    .line 127
    .local v0, "myState":Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;
    invoke-virtual {v0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 128
    iget v1, v0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;->value:I

    iput v1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    .line 129
    invoke-virtual {p0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 110
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 112
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 113
    .local v0, "myState":Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;
    iget v2, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    iput v2, v0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$SavedState;->value:I

    move-object v1, v0

    .line 114
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget v1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    invoke-virtual {p0, v1}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->getPersistedInt(I)I

    move-result v1

    iput v1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    .line 100
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    return-void

    .line 96
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 97
    .local v0, "value":I
    iput v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->value:I

    .line 98
    invoke-virtual {p0, v0}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->persistInt(I)Z

    goto :goto_0
.end method

.method public onSettingsActivityResult(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->changeValue(I)V

    .line 73
    return-void
.end method

.method public setOnColorChangedListener(Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->colorChangedListener:Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;

    .line 170
    return-void
.end method
