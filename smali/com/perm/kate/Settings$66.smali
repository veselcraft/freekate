.class Lcom/perm/kate/Settings$66;
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

    .line 1567
    iput-object p1, p0, Lcom/perm/kate/Settings$66;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    .line 1570
    iget-object v0, p0, Lcom/perm/kate/Settings$66;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Lcom/perm/utils/NightThemeHelper;->getStartTime(Landroid/content/Context;)[I

    move-result-object v0

    .line 1571
    new-instance v3, Lcom/perm/kate/Settings$66$1;

    invoke-direct {v3, p0, p1}, Lcom/perm/kate/Settings$66$1;-><init>(Lcom/perm/kate/Settings$66;Landroid/preference/Preference;)V

    .line 1578
    new-instance p1, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/perm/kate/Settings$66;->this$0:Lcom/perm/kate/Settings;

    const/4 v1, 0x0

    aget v4, v0, v1

    const/4 v7, 0x1

    aget v5, v0, v7

    const/4 v6, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    const v0, 0x7f0f02c5

    .line 1579
    invoke-virtual {p1, v0}, Landroid/app/TimePickerDialog;->setTitle(I)V

    .line 1580
    invoke-virtual {p1}, Landroid/app/TimePickerDialog;->show()V

    return v7
.end method
