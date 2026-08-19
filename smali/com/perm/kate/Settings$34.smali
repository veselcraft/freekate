.class Lcom/perm/kate/Settings$34;
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

    .line 940
    iput-object p1, p0, Lcom/perm/kate/Settings$34;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    .line 943
    iget-object p1, p0, Lcom/perm/kate/Settings$34;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/utils/SleepModeHelper;->getStartTime(Landroid/content/Context;)[I

    move-result-object p1

    .line 944
    new-instance v2, Lcom/perm/kate/Settings$34$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/Settings$34$1;-><init>(Lcom/perm/kate/Settings$34;)V

    .line 951
    new-instance v6, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/perm/kate/Settings$34;->this$0:Lcom/perm/kate/Settings;

    const/4 v0, 0x0

    aget v3, p1, v0

    const/4 v7, 0x1

    aget v4, p1, v7

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    const p1, 0x7f0f02c5

    .line 952
    invoke-virtual {v6, p1}, Landroid/app/TimePickerDialog;->setTitle(I)V

    .line 953
    invoke-virtual {v6}, Landroid/app/TimePickerDialog;->show()V

    return v7
.end method
