.class Lcom/perm/kate/Settings$28$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$28;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$28;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$28;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/Settings$28;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/perm/kate/Settings$28$1;->this$1:Lcom/perm/kate/Settings$28;

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
    .line 808
    iget-object v0, p0, Lcom/perm/kate/Settings$28$1;->this$1:Lcom/perm/kate/Settings$28;

    iget-object v0, v0, Lcom/perm/kate/Settings$28;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0, p2, p3}, Lcom/perm/utils/SleepModeHelper;->saveStartTime(Landroid/content/Context;II)V

    .line 809
    iget-object v0, p0, Lcom/perm/kate/Settings$28$1;->this$1:Lcom/perm/kate/Settings$28;

    iget-object v0, v0, Lcom/perm/kate/Settings$28;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/kate/Settings;->access$1200(Lcom/perm/kate/Settings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/Settings$28$1;->this$1:Lcom/perm/kate/Settings$28;

    iget-object v1, v1, Lcom/perm/kate/Settings$28;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v1}, Lcom/perm/utils/SleepModeHelper;->getStartTime(Landroid/content/Context;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/perm/utils/SleepModeHelper;->getStringTime([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 810
    return-void
.end method
