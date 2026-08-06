.class Lcom/perm/kate/Settings$60$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$60;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$60;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$60;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/Settings$60;

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/perm/kate/Settings$60$1;->this$1:Lcom/perm/kate/Settings$60;

    iput-object p2, p0, Lcom/perm/kate/Settings$60$1;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hours"    # I
    .param p3, "minutes"    # I

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/perm/kate/Settings$60$1;->this$1:Lcom/perm/kate/Settings$60;

    iget-object v0, v0, Lcom/perm/kate/Settings$60;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0, p2, p3}, Lcom/perm/utils/NightThemeHelper;->saveStartTime(Landroid/content/Context;II)V

    .line 1422
    iget-object v0, p0, Lcom/perm/kate/Settings$60$1;->val$preference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/perm/kate/Settings$60$1;->this$1:Lcom/perm/kate/Settings$60;

    iget-object v1, v1, Lcom/perm/kate/Settings$60;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v1}, Lcom/perm/utils/NightThemeHelper;->getStartTime(Landroid/content/Context;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/perm/utils/SleepModeHelper;->getStringTime([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1423
    return-void
.end method
