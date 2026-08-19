.class Lcom/perm/kate/Settings$66$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$66;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$66;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$66;Landroid/preference/Preference;)V
    .locals 0

    .line 1571
    iput-object p1, p0, Lcom/perm/kate/Settings$66$1;->this$1:Lcom/perm/kate/Settings$66;

    iput-object p2, p0, Lcom/perm/kate/Settings$66$1;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 0

    .line 1574
    iget-object p1, p0, Lcom/perm/kate/Settings$66$1;->this$1:Lcom/perm/kate/Settings$66;

    iget-object p1, p1, Lcom/perm/kate/Settings$66;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1, p2, p3}, Lcom/perm/utils/NightThemeHelper;->saveStartTime(Landroid/content/Context;II)V

    .line 1575
    iget-object p1, p0, Lcom/perm/kate/Settings$66$1;->val$preference:Landroid/preference/Preference;

    iget-object p2, p0, Lcom/perm/kate/Settings$66$1;->this$1:Lcom/perm/kate/Settings$66;

    iget-object p2, p2, Lcom/perm/kate/Settings$66;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p2}, Lcom/perm/utils/NightThemeHelper;->getStartTime(Landroid/content/Context;)[I

    move-result-object p2

    invoke-static {p2}, Lcom/perm/utils/SleepModeHelper;->getStringTime([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
