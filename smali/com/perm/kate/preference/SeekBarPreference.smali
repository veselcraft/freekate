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
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const-string v0, "http://schemas.android.com/apk/res/com.perm.kate"

    const-string v1, "minValue"

    const/16 v2, 0x32

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/preference/SeekBarPreference;->mMinValue:I

    .line 47
    const-string v0, "http://schemas.android.com/apk/res/com.perm.kate"

    const-string v1, "maxValue"

    const/16 v2, 0xfa

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/preference/SeekBarPreference;->mMaxValue:I

    .line 48
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "defaultValue"

    const/16 v2, 0x64

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/preference/SeekBarPreference;->mDefaultValue:I

    .line 49
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/perm/kate/preference/SeekBarPreference;->mDefaultValue:I

    invoke-virtual {p0, v1}, Lcom/perm/kate/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 5

    .prologue
    .line 54
    iget v2, p0, Lcom/perm/kate/preference/SeekBarPreference;->mDefaultValue:I

    invoke-virtual {p0, v2}, Lcom/perm/kate/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v2

    iput v2, p0, Lcom/perm/kate/preference/SeekBarPreference;->mCurrentValue:I

    .line 57
    invoke-virtual {p0}, Lcom/perm/kate/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03005a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0e0123

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/perm/kate/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 62
    iget-object v2, p0, Lcom/perm/kate/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/perm/kate/preference/SeekBarPreference;->mMaxValue:I

    iget v4, p0, Lcom/perm/kate/preference/SeekBarPreference;->mMinValue:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 63
    iget-object v2, p0, Lcom/perm/kate/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/perm/kate/preference/SeekBarPreference;->mCurrentValue:I

    iget v4, p0, Lcom/perm/kate/preference/SeekBarPreference;->mMinValue:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 64
    iget-object v2, p0, Lcom/perm/kate/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 67
    const v2, 0x7f0e0122

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/perm/kate/preference/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    .line 68
    iget-object v2, p0, Lcom/perm/kate/preference/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/perm/kate/preference/SeekBarPreference;->mCurrentValue:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-object v1
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 78
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/preference/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget v0, p0, Lcom/perm/kate/preference/SeekBarPreference;->mCurrentValue:I

    invoke-virtual {p0, v0}, Lcom/perm/kate/preference/SeekBarPreference;->persistInt(I)Z

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/preference/SeekBarPreference;->notifyChanged()V

    .line 87
    iget v0, p0, Lcom/perm/kate/preference/SeekBarPreference;->mCurrentValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seek"    # Landroid/widget/SeekBar;
    .param p2, "value"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 97
    iget v0, p0, Lcom/perm/kate/preference/SeekBarPreference;->mMinValue:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/perm/kate/preference/SeekBarPreference;->mCurrentValue:I

    .line 99
    iget-object v0, p0, Lcom/perm/kate/preference/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/perm/kate/preference/SeekBarPreference;->mCurrentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seek"    # Landroid/widget/SeekBar;

    .prologue
    .line 104
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seek"    # Landroid/widget/SeekBar;

    .prologue
    .line 108
    return-void
.end method
