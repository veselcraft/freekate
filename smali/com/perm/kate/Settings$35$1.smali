.class Lcom/perm/kate/Settings$35$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$35;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$35;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$35;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lcom/perm/kate/Settings$35$1;->this$1:Lcom/perm/kate/Settings$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 0

    .line 965
    iget-object p1, p0, Lcom/perm/kate/Settings$35$1;->this$1:Lcom/perm/kate/Settings$35;

    iget-object p1, p1, Lcom/perm/kate/Settings$35;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1, p2, p3}, Lcom/perm/utils/SleepModeHelper;->saveEndTime(Landroid/content/Context;II)V

    .line 966
    iget-object p1, p0, Lcom/perm/kate/Settings$35$1;->this$1:Lcom/perm/kate/Settings$35;

    iget-object p1, p1, Lcom/perm/kate/Settings$35;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/Settings;->access$1500(Lcom/perm/kate/Settings;)Landroid/preference/Preference;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/Settings$35$1;->this$1:Lcom/perm/kate/Settings$35;

    iget-object p2, p2, Lcom/perm/kate/Settings$35;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p2}, Lcom/perm/utils/SleepModeHelper;->getEndTime(Landroid/content/Context;)[I

    move-result-object p2

    invoke-static {p2}, Lcom/perm/utils/SleepModeHelper;->getStringTime([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
