.class Lcom/perm/kate/Settings$47;
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

    .line 1316
    iput-object p1, p0, Lcom/perm/kate/Settings$47;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    .line 1319
    iget-object p1, p0, Lcom/perm/kate/Settings$47;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/theme/ThemeSettingsHelper;->resetCustomTheme(Landroid/content/Context;)V

    .line 1320
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/theme/ColorTheme;->resetColor()V

    .line 1321
    iget-object p1, p0, Lcom/perm/kate/Settings$47;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/theme/ThemeSettingsHelper;->getIsCustomTheme(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    .line 1322
    iget-object p1, p0, Lcom/perm/kate/Settings$47;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/Settings;->access$1900(Lcom/perm/kate/Settings;)V

    .line 1323
    iget-object p1, p0, Lcom/perm/kate/Settings$47;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/Settings;->access$700(Lcom/perm/kate/Settings;)V

    const/4 p1, 0x1

    return p1
.end method
