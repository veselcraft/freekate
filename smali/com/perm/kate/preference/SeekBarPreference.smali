.class public final Lcom/perm/kate/preference/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mCurrentValue:I

.field private final mDefaultValue:I

.field private final mMaxValue:I

.field private final mMinValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "http://schemas.android.com/apk/res/com.perm.kate"

    const-string v0, "minValue"

    const/16 v1, 0x32

    .line 47
    invoke-interface {p2, p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/preference/SeekBarPreference;->mMinValue:I

    const-string v0, "maxValue"

    const/16 v1, 0xfa

    .line 48
    invoke-interface {p2, p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/preference/SeekBarPreference;->mMaxValue:I

    const-string p1, "http://schemas.android.com/apk/res/android"

    const-string v0, "defaultValue"

    const/16 v1, 0x64

    .line 49
    invoke-interface {p2, p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/preference/SeekBarPreference;->mDefaultValue:I

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/perm/kate/preference/SeekBarPreference;->mDefaultValue:I

    invoke-virtual {p0, v1}, Landroid/preference/DialogPreference;->getPersistedInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 56
    iget v0, p0, Lcom/perm/kate/preference/SeekBarPreference;->mDefaultValue:I

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/preference/SeekBarPreference;->mCurrentValue:I

    .line 59
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0064

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902c1

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/perm/kate/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 65
    iget v2, p0, Lcom/perm/kate/preference/SeekBarPreference;->mMaxValue:I

    iget v3, p0, Lcom/perm/kate/preference/SeekBarPreference;->mMinValue:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 66
    iget-object v1, p0, Lcom/perm/kate/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/perm/kate/preference/SeekBarPreference;->mCurrentValue:I

    iget v3, p0, Lcom/perm/kate/preference/SeekBarPreference;->mMinValue:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 67
    iget-object v1, p0, Lcom/perm/kate/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v1, 0x7f0900e6

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/preference/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/perm/kate/preference/SeekBarPreference;->mCurrentValue:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->shouldPersist()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    iget p1, p0, Lcom/perm/kate/preference/SeekBarPreference;->mCurrentValue:I

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->persistInt(I)Z

    .line 89
    :cond_1
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->notifyChanged()V

    .line 90
    iget p1, p0, Lcom/perm/kate/preference/SeekBarPreference;->mCurrentValue:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 101
    iget p1, p0, Lcom/perm/kate/preference/SeekBarPreference;->mMinValue:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/perm/kate/preference/SeekBarPreference;->mCurrentValue:I

    .line 103
    iget-object p1, p0, Lcom/perm/kate/preference/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Lcom/perm/kate/preference/SeekBarPreference;->mCurrentValue:I

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "%"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
