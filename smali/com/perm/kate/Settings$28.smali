.class Lcom/perm/kate/Settings$28;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Settings;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/Settings;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/perm/kate/Settings$28;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 804
    iget-object v1, p0, Lcom/perm/kate/Settings$28;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v1}, Lcom/perm/utils/SleepModeHelper;->getStartTime(Landroid/content/Context;)[I

    move-result-object v6

    .line 805
    .local v6, "start":[I
    new-instance v2, Lcom/perm/kate/Settings$28$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/Settings$28$1;-><init>(Lcom/perm/kate/Settings$28;)V

    .line 812
    .local v2, "listener":Landroid/app/TimePickerDialog$OnTimeSetListener;
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/perm/kate/Settings$28;->this$0:Lcom/perm/kate/Settings;

    const/4 v3, 0x0

    aget v3, v6, v3

    aget v4, v6, v5

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 813
    .local v0, "time_dialog":Landroid/app/TimePickerDialog;
    const v1, 0x7f07026c

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setTitle(I)V

    .line 814
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 815
    return v5
.end method
