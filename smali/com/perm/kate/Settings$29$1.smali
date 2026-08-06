.class Lcom/perm/kate/Settings$29$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$29;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$29;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$29;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/Settings$29;

    .prologue
    .line 823
    iput-object p1, p0, Lcom/perm/kate/Settings$29$1;->this$1:Lcom/perm/kate/Settings$29;

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
    .line 826
    iget-object v0, p0, Lcom/perm/kate/Settings$29$1;->this$1:Lcom/perm/kate/Settings$29;

    iget-object v0, v0, Lcom/perm/kate/Settings$29;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0, p2, p3}, Lcom/perm/utils/SleepModeHelper;->saveEndTime(Landroid/content/Context;II)V

    .line 827
    iget-object v0, p0, Lcom/perm/kate/Settings$29$1;->this$1:Lcom/perm/kate/Settings$29;

    iget-object v0, v0, Lcom/perm/kate/Settings$29;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/kate/Settings;->access$1300(Lcom/perm/kate/Settings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/Settings$29$1;->this$1:Lcom/perm/kate/Settings$29;

    iget-object v1, v1, Lcom/perm/kate/Settings$29;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v1}, Lcom/perm/utils/SleepModeHelper;->getEndTime(Landroid/content/Context;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/perm/utils/SleepModeHelper;->getStringTime([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 828
    return-void
.end method
